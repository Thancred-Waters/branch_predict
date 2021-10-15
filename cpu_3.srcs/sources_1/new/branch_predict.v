module branch_predict (
    input wire clk, rst,
    
    input wire [31:0] instrD,
    input wire flushD,
    input wire stallD,

    input wire [31:0] pcF,
    input wire [31:0] pcM,

    input wire branchM,         // M阶段是否是分支指令
    input wire actual_takeM,    // 实际是否跳转

    output wire branchD,        // 译码阶段是否是跳转指令   
    output wire pred_takeD,     // 预测是否跳转
    
    input wire pred_flush
);
    wire pred_takeF[1:0];       // pred_takeF[0]表示全局预测结果，pred_takeF[1]表示局部预测结果
    reg  pred_takeF_r[1:0];      // 同上
    wire pred_eqD,pred_eqE,pred_eqM; //记录全局预测结果与局部预测结果是否相等
    reg  [1:0] cnt;              // 两位饱和计数器，判断通过哪种方式预测

    assign branchD = instrD[31:26]==6'b000100;//BEQ

// 定义参数
    parameter Strongly_not_taken = 2'b00, Weakly_not_taken = 2'b01, Weakly_taken = 2'b11, Strongly_taken = 2'b10;
    parameter BHT_DEPTH = 10;
    parameter PHT_L_DEPTH = 6;  //局部预测表的深度
    parameter PHT_G_DEPTH = 10; //全局预测表的深度

    reg [(PHT_G_DEPTH-1):0] GHR_F,GHR_M;   //GHR_F在预测时更新，GHR_M在MEM阶段更新
    reg [1:0] PHT_G [(1<<PHT_G_DEPTH)-1:0];//全局分支预测表
    reg [5:0] BHT   [(1<<BHT_DEPTH)-1:0];    //局部跳转状态表
    reg [1:0] PHT_L [(1<<PHT_L_DEPTH)-1:0];//局部分支预测表
    
    integer i,j,k;

// ---------------------------------------全局预测逻辑--------------------------------------
    wire [(PHT_G_DEPTH-1):0] PHT_indexF,PHT_indexD,PHT_indexE,PHT_indexM;//全局预测使用的PHT下标

    assign PHT_indexF = GHR_F ^ pcF[11:2];            // 通过异或得到索引
    assign pred_takeF[0] = PHT_G[PHT_indexF][1];      // 在取指阶段预测是否会跳转，并经过流水线传递给译码阶段。

        // --------------------------pipeline------------------------------
            always @(posedge clk) begin
                if(rst | flushD) begin
                    pred_takeF_r[0] <= 0;
                end
                else if(~stallD) begin
                    pred_takeF_r[0] <= pred_takeF[0];
                end
            end
            flopr flop_PHT_indexD(
                .clk(clk),
                .rst(rst),
                .d(PHT_indexF),
                .q(PHT_indexD)
            );
            flopr flop_PHT_indexE(
                .clk(clk),
                .rst(rst),
                .d(PHT_indexD),
                .q(PHT_indexE)
            );
            flopr flop_PHT_indexM(
                .clk(clk),
                .rst(rst),
                .d(PHT_indexE),
                .q(PHT_indexM)
            );
        // --------------------------pipeline------------------------------

// ---------------------------------------全局预测逻辑---------------------------------------

// ---------------------------------------GHR初始化以及更新---------------------------------------
    always@(posedge clk) begin
        if(rst) begin
            GHR_F <= 10'b0;
        end
        else if(branchD) begin//ID阶段为跳转指令
            GHR_F <= pred_flush ? {GHR_M[7:0],actual_takeM,pred_takeF_r[0]} : {GHR_F[8:0],pred_takeF_r[0]};
            //在发射阶段更新GHR_F
            //如果MEM阶段发现前序指令预测错误，用GHR_M的最新值代替GHR_F
            //反之用GHR_F更新
        end
        else if(pred_flush) begin//预测错误
            GHR_F <= {GHR_M[8:0],actual_takeM};//用实际的全局跳转情况更新GHR_F
        end
    end

    always @(posedge clk) begin
        if(rst) begin
            GHR_M <= 10'b0;    
        end
        else if(branchM) begin
            GHR_M <= {GHR_M[8:0],actual_takeM};//更新实际的全局跳转情况
        end
    end
// ---------------------------------------GHR初始化以及更新---------------------------------------

// ---------------------------------------PHT_G初始化以及更新---------------------------------------
    always @(posedge clk) begin
        if(rst) begin
            for(i = 0; i < (1<<PHT_G_DEPTH); i=i+1) begin
                PHT_G[i] <= Weakly_not_taken;
            end
        end
        else if(branchM) begin
            case(PHT_G[PHT_indexM])
                Strongly_taken    : PHT_G[PHT_indexM] <= actual_takeM ? Strongly_taken : Weakly_taken;
                Weakly_taken      : PHT_G[PHT_indexM] <= actual_takeM ? Strongly_taken : Weakly_not_taken;
                Strongly_not_taken: PHT_G[PHT_indexM] <= actual_takeM ? Weakly_not_taken : Strongly_not_taken;
                Weakly_not_taken  : PHT_G[PHT_indexM] <= actual_takeM ? Weakly_taken : Strongly_not_taken;
                default: PHT_G[PHT_indexM] <= Weakly_taken;
            endcase 
        end
    end
// ---------------------------------------PHT_G初始化以及更新---------------------------------------

// ---------------------------------------局部预测逻辑--------------------------------------
    wire BHT_value;

    assign BHT_value=BHT[pcF[11:2]];
    assign pred_takeF[1]=PHT_L[BHT_value][1];

    // --------------------------pipeline------------------------------
            always @(posedge clk) begin
                if(rst | flushD) begin
                    pred_takeF_r[1] <= 0;
                end
                else if(~stallD) begin
                    pred_takeF_r[1] <= pred_takeF[1];
                end
            end
    // --------------------------pipeline------------------------------

// ---------------------------------------局部预测逻辑--------------------------------------

// ---------------------------------------BHT初始化以及更新---------------------------------------
    always@(posedge clk) begin
        if(rst) begin
            for(j=0; j < (1<<BHT_DEPTH); j=j+1)
                BHT[j] <= 6'b0;    
        end
        else if(branchM) begin//MEM阶段为跳转指令
           BHT[pcM[11:2]] <= {BHT[pcM[11:2]][4:0],actual_takeM};
        end
    end
// ---------------------------------------BHT初始化以及更新---------------------------------------

// ---------------------------------------PHT_L初始化以及更新---------------------------------------

    wire update_BHT_value;

    assign update_BHT_value = BHT[pcM[11:2]];

    always @(posedge clk) begin
        if(rst) begin
            for(k = 0; k < (1<<PHT_L_DEPTH); k=k+1) begin
                PHT_L[k] <= Weakly_not_taken;
            end
        end
        else if(branchM) begin
            case(PHT_L[update_BHT_value])
                Strongly_taken    : PHT_L[update_BHT_value] <= actual_takeM ? Strongly_taken : Weakly_taken;
                Weakly_taken      : PHT_L[update_BHT_value] <= actual_takeM ? Strongly_taken : Weakly_not_taken;
                Strongly_not_taken: PHT_L[update_BHT_value] <= actual_takeM ? Weakly_not_taken : Strongly_not_taken;
                Weakly_not_taken  : PHT_L[update_BHT_value] <= actual_takeM ? Weakly_taken : Strongly_not_taken;
                default: PHT_L[update_BHT_value] <= Weakly_taken;
            endcase 
        end
    end
// ---------------------------------------PHT_L初始化以及更新---------------------------------------

//竞争分支预测
    assign pred_eqD = pred_takeF_r[0]==pred_takeF_r[1];
    flopr flop_eqE(
        .clk(clk),
        .rst(rst),
        .d(pred_eqD),
        .q(pred_eqE)
    );
    flopr flop_eqM(
        .clk(clk),
        .rst(rst),
        .d(pred_eqE),
        .q(pred_eqM)
    );
    always @(posedge clk) begin
        if(rst) begin
            cnt <= 2'b0;
        end
        else if(branchM) begin
            if(pred_flush & ~pred_eqM) begin //分支预测错，且全局预测与局部预测结果不相等
                case(cnt[1])
                    1'b1   :cnt <= cnt-1;    //向相反结果靠近
                    1'b0   :cnt <= cnt+1;
                    default:cnt <= 2'b0;
                endcase    
            end
            else if(~pred_flush) begin       //分支预测对
                case(cnt[1])
                    1'b1   :cnt <= 2'b11;   
                    1'b0   :cnt <= 2'b00;
                    default:cnt <= 2'b0;
                endcase
            end
        end
    end
//竞争分支预测

// 译码阶段输出最终的预测结果
    assign pred_takeD = cnt[1] ? branchD & pred_takeF_r[1]
                               : branchD & pred_takeF_r[0] ; 
endmodule
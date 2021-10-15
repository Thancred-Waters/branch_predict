`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/21 11:02:17
// Design Name: 
// Module Name: datapath
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module datapath(
input wire clk,
input wire rst,
//fetch
output wire[31:0] pcF,
input wire[31:0] instrF,
//decode
input wire jumpD,
output wire[5:0] opD,functD,
output wire[4:0] shamtD,
//excute
input wire memtoregE,
input wire alusrcE,regdstE,
input wire regwriteE,
input wire[4:0] alucontrolE,
output wire flushE,
//memory
input wire memwriteM,regwriteM,memtoregM,
output wire[31:0] aluoutM,writedataM,//MEM阶段上升沿发出访存请求
input wire[31:0] readdata,//下降沿获取返回数据
//writeback
input wire memtoregW,
input wire regwriteW

    );
    wire[31:0] addr,next_pc;
    wire[31:0] SignImmD,SignImmE;
    wire[31:0] rd1D,rd2D,rd1E,rd2E;
    wire[31:0] eq1,eq2;
    wire[4:0] rsD,rtD,rdD,rsE,rtE,rdE,writeregE,writeregM,writeregW;
    wire[31:0] PCPlus4F,PCPlus4D,PCBranchD,PCBranch,PCJump;//pc选择
    wire[31:0] pcD,pcE,pcM,pcW;//每阶段对应的pc
    wire[31:0] instrD;
    wire[31:0] aluoutE,aluoutW;
    wire[31:0] resultW;
    wire[1:0] forwardAE,forwardBE;   
    wire[31:0] srcAE,srcBE; 
    wire[31:0] writedataE,readdataW;
    wire branchD,pred_takeD;
    wire branchE,pred_takeE;
    wire[31:0] PCBranchE;
    wire branchM,actual_takeM,pred_takeM;
    wire[31:0] PCBranchM,PCPlus8M;
    wire actual_takeE;
    //hazard
    wire stallF;
    wire stallD;
    wire flushD;
    wire pred_flush;
    wire[31:0] br_target;//预测错误后刷新流水线地址
    
    hazard h(
        .stallF(stallF),
        .rsD(rsD),.rtD(rtD),
        .jumpD(jumpD),
        .stallD(stallD),.flushD(flushD),
        .rsE(rsE),.rtE(rtE),.memtoregE(memtoregE),.regwriteE(regwriteE),
        .writeregE(writeregE),
        .flushE(flushE),.forwardAE(forwardAE),.forwardBE(forwardBE),
        .writeregM(writeregM),
        .regwriteM(regwriteM),.memtoregM(memtoregM),
        .actual_takeM(actual_takeM),.pred_takeM(pred_takeM),
        .PCBranchM(PCBranchM),.PCPlus8M(PCPlus8M),.branchM(branchM),
        .pred_flush(pred_flush),
        .br_target(br_target),
        .writeregW(writeregW),
        .regwriteW(regwriteW)
    );

    //fetch
    pc my_pc(
        .clk(clk),
        .rst(rst),
        .enable(~stallF),
        .next_pc(next_pc),
        .cur_pc(addr)
    );
    assign pcF=addr;
    adder add1(
        .a(addr),
        .b(32'h4),
        .y(PCPlus4F)
    );

    //IF-ID
    flopenrc flop_instr(
        .clk(clk),
        .rst(rst),
        .en(~stallD),
        .clear(flushD),
        .d(instrF),
        .q(instrD)
    );
    flopenr flop_pc4D(
        .clk(clk),
        .rst(rst),
        .en(~stallD),
        .d(PCPlus4F),
        .q(PCPlus4D)
    );
    flopenr flop_pcD(//ID阶段pc
        .clk(clk),
        .rst(rst),
        .en(~stallD),
        .d(pcF),
        .q(pcD)
    );
    
    //decode
    assign opD=instrD[31:26];
    assign functD=instrD[5:0];
    assign shamtD=instrD[10:6];
    
    regfile rf(
       .clk(clk),
       .we3(regwriteW),
       .ra1(instrD[25:21]),.ra2(instrD[20:16]),.wa3(writeregW),
       .rd1(rd1D),.rd2(rd2D),.wd3(resultW)
    );

    assign rsD=instrD[25:21];
    assign rtD=instrD[20:16];
    assign rdD=instrD[15:11];
    
    signext sign(
        .a(instrD[15:0]),
        .y(SignImmD)
    );
    adder add2(
        .a({SignImmD[29:0],2'b00}),
        .b(PCPlus4D),//此处为转移延迟槽指令+4
        .y(PCBranchD)
    );
    mux2 sel_branch(
        .a(PCPlus4F),//此处为IF阶段的PC+4，实现转移延迟槽
        .b(PCBranchD),
        .sel(pred_takeD),//根据预测结果决定是否跳转
        .out(PCBranch)
    );
    mux2 sel_jump(
        .a(PCBranch),
        .b({PCPlus4D[31:28],instrD[25:0],2'b00}),
        .sel(jumpD),
        .out(PCJump)
    );
    mux2 sel_pred_flush(//刷新流水线
        .a(PCJump),
        .b(br_target),
        .sel(pred_flush),
        .out(next_pc)
    );
    branch_predict bp(
        .clk(clk),
        .rst(rst),
        .instrD(instrD),
        .flushD(flushD),
        .stallD(stallD),
        .pcF(pcF),
        .pcM(pcM),
        .branchM(branchM),         // M阶段是否是分支指令
        .actual_takeM(actual_takeM),    // 实际是否跳转
        .branchD(branchD),        // 译码阶段是否是跳转指令   
        .pred_takeD(pred_takeD),      // 预测是否跳转
        .pred_flush(pred_flush)
    );
    //ID-EXE
    floprc flop_rd1(
        .clk(clk),
        .rst(rst),
        .clear(flushE),
        .d(rd1D),
        .q(rd1E)
    );
    floprc flop_rd2(
        .clk(clk),
        .rst(rst),
        .clear(flushE),
        .d(rd2D),
        .q(rd2E)
    );
    floprc#(15) flop_reg(
        .clk(clk),
        .rst(rst),
        .clear(flushE),        
        .d({rsD,rtD,rdD}),
        .q({rsE,rtE,rdE})
    );
    floprc flop_sign(
        .clk(clk),
        .rst(rst),
        .clear(flushE),        
        .d(SignImmD),
        .q(SignImmE)
    );
    floprc flop_pcE(//EXE阶段pc
        .clk(clk),
        .rst(rst),
        .clear(flushE),
        .d(pcD),
        .q(pcE)
    );
    floprc flop_branchE(
        .clk(clk),
        .rst(rst),
        .clear(flushE),
        .d(branchD),
        .q(branchE)
    );
    floprc flop_predE(
        .clk(clk),
        .rst(rst),
        .clear(flushE),
        .d(pred_takeD),
        .q(pred_takeE)
    );
    floprc flop_PCBranchE(
        .clk(clk),
        .rst(rst),
        .clear(flushE),
        .d(PCBranchD),
        .q(PCBranchE)
    );
    
    //execute
    mux3 sel_srcAE(//lwstall保证了此时MEM阶段不会有访存指令，因此MEM阶段不需要前推
        .a(rd1E),//寄存器堆数据
        .b(resultW),//WB阶段访存指令数据或ALU数据
        .c(aluoutM),//MEM阶段ALU数据
        .sel(forwardAE),
        .out(srcAE)
    );
    mux3 sel_srcBE(
        .a(rd2E),
        .b(resultW),
        .c(aluoutM),
        .sel(forwardBE),
        .out(writedataE)
    );
    mux2 sel_srcB(
        .a(writedataE),
        .b(SignImmE),
        .sel(alusrcE),
        .out(srcBE)
    );
    mux2 sel_wd3(
        .a(rtE),
        .b(rdE),
        .sel(regdstE),
        .out(writeregE)
    );
    alu my_alu(
        .a(srcAE),
        .b(srcBE) ,
        .alucontrol(alucontrolE),
        .out(aluoutE)   
    );
    assign actual_takeE= srcAE==srcBE;//计算BEQ是否跳转
    
    //EXE-MEM
    flopr flop_aluE(
        .clk(clk),
        .rst(rst),
        .d(aluoutE),
        .q(aluoutM)
    );
    flopr flop_data(
        .clk(clk),
        .rst(rst),
        .d(writedataE),
        .q(writedataM)
    );
    flopr#(5) flop_regE(
        .clk(clk),
        .rst(rst),
        .d(writeregE),
        .q(writeregM)
    );
    flopr flop_pcM(//MEM阶段pc
        .clk(clk),
        .rst(rst),
        .d(pcE),
        .q(pcM)
    );
    flopr flop_branchM(
        .clk(clk),
        .rst(rst),
        .d(branchE),
        .q(branchM)
    );
    flopr flop_taken(
        .clk(clk),
        .rst(rst),
        .d(actual_takeE),
        .q(actual_takeM)
    );
    flopr flop_predM(
        .clk(clk),
        .rst(rst),
        .d(pred_takeE),
        .q(pred_takeM)
    );
    floprc flop_PCBranchM(
        .clk(clk),
        .rst(rst),
        .clear(flushE),
        .d(PCBranchE),
        .q(PCBranchM)
    );
    
    //memory
    flopr flop_read(
        .clk(clk),
        .rst(rst),
        .d(readdata),
        .q(readdataW)
    );
    adder add_pcM_8(
        .a(pcM),
        .b(8),
        .y(PCPlus8M)
    );

    //MEM-WB
    flopr flop_aluM(
        .clk(clk),
        .rst(rst),
        .d(aluoutM),
        .q(aluoutW)
    );
    flopr#(5) flop_regM(
        .clk(clk),
        .rst(rst),
        .d(writeregM),
        .q(writeregW)
    );
    flopr flop_pcW(//MEM阶段pc
        .clk(clk),
        .rst(rst),
        .d(pcM),
        .q(pcW)
    );

    //writeback
    mux2 sel_result(
        .a(aluoutW),
        .b(readdataW),
        .sel(memtoregW),
        .out(resultW)
    );
endmodule

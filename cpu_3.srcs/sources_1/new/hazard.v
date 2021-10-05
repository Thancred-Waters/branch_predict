`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/28 17:09:36
// Design Name: 
// Module Name: hazard
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


module hazard(
output wire stallF,
input wire[4:0] rsD,rtD,
input wire jumpD,
output wire stallD,flushD,
input wire[4:0] rsE,rtE,
input wire memtoregE,regwriteE,
input wire[4:0] writeregE,
output wire flushE,
output wire[1:0] forwardAE,forwardBE,
input wire[4:0] writeregM,
input wire regwriteM,memtoregM,
input wire actual_takeM,pred_takeM,branchM,
input wire[31:0] PCBranchM,PCPlus8M,
output wire pred_flush,
output wire[31:0] br_target,
input wire[4:0] writeregW,
input wire regwriteW
    );
    assign forwardAE=((rsE!=5'b0) & (rsE==writeregM) & regwriteM) ? 2'b10 :
                        ((rsE!=5'b0) & (rsE==writeregW) & regwriteW) ? 2'b01 :
                        2'b00;
    assign forwardBE=((rtE!=5'b0) & (rtE==writeregM) & regwriteM) ? 2'b10 :
                        ((rtE!=5'b0) & (rtE==writeregW) & regwriteW) ? 2'b01 :
                        2'b00;                  
            
    wire lwstall;
    assign lwstall=((rsD==rtE) | (rtD==rtE)) & memtoregE;

    assign pred_flush=(actual_takeM ^ pred_takeM) & branchM;
    assign br_target=actual_takeM ? PCBranchM : PCPlus8M;
    assign stallF=lwstall;
    assign stallD=stallF;
    assign flushD=pred_flush;
    assign flushE=stallD | pred_flush;               
endmodule

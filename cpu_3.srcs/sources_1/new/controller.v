`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/06 19:55:04
// Design Name: 
// Module Name: controller
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


module controller(
input wire clk,rst,
//Decode
input wire[5:0] opD,functD,
input wire [4:0] shamtD,
output wire jumpD,
//execute
input wire flushE,
output wire memtoregE,alusrcE,
output wire regdstE,regwriteE,
output wire[4:0] alucontrolE,
//memory
output wire memtoregM,memwriteM,regwriteM,
//writeback
output wire regwriteW,memtoregW
    );
    wire regwriteD,memtoregD,memwriteD,alusrcD,regdstD;
    wire[4:0] alucontrolD;
    maindec dec1(
        .op(opD),
        .funct(functD),
        .memtoreg(memtoregD),
        .memwrite(memwriteD),
        .alusrc(alusrcD),
        .regdst(regdstD),
        .regwrite(regwriteD),
        .branch(branchD),
        .jump(jumpD)
    );
    aludec dec2(
        .op(opD),
        .funct(functD),
        .alucontrol(alucontrolD)
    );
    
    wire memwriteE;
    //ID-EXE
    floprc#(10) regE(
        .clk(clk),
        .rst(rst),
        .clear(flushE),
        .d({regwriteD,memtoregD,memwriteD,alucontrolD,alusrcD,regdstD}),
        .q({regwriteE,memtoregE,memwriteE,alucontrolE,alusrcE,regdstE})
    );
    //EXE-MEM
    flopr#(3) regM(
        .clk(clk),
        .rst(rst),
        .d({regwriteE,memtoregE,memwriteE}),
        .q({regwriteM,memtoregM,memwriteM})
    );
    //MEM-WB
    flopr#(2) regW(
        .clk(clk),
        .rst(rst),
        .d({regwriteM,memtoregM}),
        .q({regwriteW,memtoregW})
    );
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/07 10:58:03
// Design Name: 
// Module Name: mips
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


module mips(
	input wire clk,rst,
	input wire[31:0] instr,
	output wire memwrite,
	output wire[31:0] dataadr,writedata,
	input wire[31:0] readdata,
	output wire[31:0] pc
    );
	
	wire memtoregE,regdstE,alusrcE,flushE,regwriteE;
	wire jumpD;
	wire regwriteM,memtoregM;
	wire regwriteW,memtoregW;
	wire[4:0] alucontrolE;
	wire[5:0] opD,functD;
    wire[4:0] shamtD;

	controller c(
	    .clk(clk),.rst(rst),
        //Decode
        .opD(opD),.functD(functD),
        .shamtD(shamtD),
        .jumpD(jumpD),
        //execute
        .flushE(flushE),
        .memtoregE(memtoregE),.alusrcE(alusrcE),
        .regdstE(regdstE),.regwriteE(regwriteE),
        .alucontrolE(alucontrolE),
        //memory
        .memtoregM(memtoregM),.memwriteM(memwrite),.regwriteM(regwriteM),
        //writeback
        .regwriteW(regwriteW),.memtoregW(memtoregW)
    );
    
	datapath dp(
	   .clk(clk),
       .rst(rst),
       //fetch
       .pcF(pc),
       .instrF(instr),
       //decode
       .jumpD(jumpD),
       .opD(opD),.functD(functD),
       .shamtD(shamtD),
       //excute
       .memtoregE(memtoregE),
       .alusrcE(alusrcE),.regdstE(regdstE),
       .regwriteE(regwriteE),
       .alucontrolE(alucontrolE),
       .flushE(flushE),
       //memory
       .memwriteM(memwrite),.regwriteM(regwriteM),.memtoregM(memtoregM),
       .aluoutM(dataadr),.writedataM(writedata),
       .readdata(readdata),
       //writeback
       .memtoregW(memtoregW),
       .regwriteW(regwriteW)
	);
endmodule

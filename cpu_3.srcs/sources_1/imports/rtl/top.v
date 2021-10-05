`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/07 13:50:53
// Design Name: 
// Module Name: top
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


module top(
	input wire clk,rst,
	output wire[31:0] writedata,dataadr,
	output wire memwrite,
	output wire[31:0] pc,instr
    );
	wire [31:0] readdata;
	mips mips(.clk(clk),.rst(rst),.instr(instr),.memwrite(memwrite),.dataadr(dataadr),
	.writedata(writedata),.readdata(readdata),.pc(pc));
	inst_mem imem (
        .clka(~clk),    // input wire clka
        .ena(1'b1),      // input wire ena
        .wea(4'b0),      // input wire [3 : 0] wea
        .addra(pc[11:2]),  // input wire [9 : 0] addra
        .dina(32'b0),    // input wire [31 : 0] dina
        .douta(instr)  // output wire [31 : 0] douta
    );
    data_mem dmem (
        .clka(~clk),    // input wire clka
        .ena(1'b1),      // input wire ena
        .wea(memwrite),      // input wire wea
        .addra(dataadr[9:0]),  // input wire [9 : 0] addra
        .dina(writedata),    // input wire [31 : 0] dina
        .douta(readdata)  // output wire [31 : 0] douta
    );
endmodule

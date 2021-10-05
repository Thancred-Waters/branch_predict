`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/06 19:54:32
// Design Name: 
// Module Name: maindec
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


module maindec(
input wire [5:0] op,
input wire [5:0] funct,
input wire [4:0] rt,
output wire memtoreg,
output wire memwrite,
output wire alusrc,
output wire regdst,
output wire regwrite,
output wire branch,
output wire jump
    );
    assign {regwrite,regdst,alusrc,branch,memwrite,memtoreg,jump}=
        op===6'b000010 ? 7'b0000001 ://j
    	op===6'b000100 ? 7'b0001000 ://beq
    	op===6'b000000 ? 7'b1100000 ://R-type
    	op===6'b100011 ? 7'b1010010 ://lw
    	op===6'b101011 ? 7'b0010100 ://sw
    	op===6'b001000 ? 7'b1010000 ://addi
    	7'b0000000;
endmodule

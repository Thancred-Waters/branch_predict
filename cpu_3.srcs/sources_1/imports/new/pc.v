`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/06 19:37:49
// Design Name: 
// Module Name: pc
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


module pc(
input wire clk,
input wire rst,
input wire enable,
input wire [31:0] next_pc,
output reg [31:0] cur_pc
    );
    always @(posedge clk or posedge rst) begin
    	if(rst) begin
    		cur_pc<=32'b0;
    	end
    	else if(enable) begin
    		cur_pc<=next_pc;
    	end
    end
endmodule

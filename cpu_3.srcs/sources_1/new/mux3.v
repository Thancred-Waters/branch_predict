`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/27 17:21:28
// Design Name: 
// Module Name: mux3
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


module mux3
#(parameter width=32)
(
input wire[width-1:0] a,b,c,
input wire [1:0] sel,
output wire[width-1:0] out
    );
    assign out=sel==2'b00 ? a:
               sel==2'b01 ? b:
               sel==2'b10 ? c:
               32'b0;
endmodule

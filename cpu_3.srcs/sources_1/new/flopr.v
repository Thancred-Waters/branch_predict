`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/27 15:37:25
// Design Name: 
// Module Name: flopr
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


module flopr
#(parameter width=32)
(
    input wire clk,rst,
    input wire [width-1:0] d,
    output reg [width-1:0] q
    );
    always @(posedge clk) begin
        if(rst) begin
            q<=0;
        end
        else begin
            q<=d;
        end
    end
endmodule

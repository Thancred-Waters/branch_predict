`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/27 15:43:46
// Design Name: 
// Module Name: floprc
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


module floprc
#(parameter width=32)
(
    input wire clk,rst,clear,
    input wire [width-1:0] d,
    output reg [width-1:0] q
    );
    always @(posedge clk) begin
        if(rst) begin
            q<=0;
        end
        else if (clear) begin
            q<=0;
        end
        else begin
            q<=d;
        end
    end
endmodule

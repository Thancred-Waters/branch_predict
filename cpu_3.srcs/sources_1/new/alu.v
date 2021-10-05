`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/20 20:04:40
// Design Name: 
// Module Name: alu
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

`include "aludefines.vh"

module alu(
input wire[31:0] a,
input wire[31:0] b,
input wire[4:0] alucontrol,
output wire [31:0] out,
output wire zero,
output wire overflow
    );
    reg [32:0] tmp;
    always @(*) begin
        case(alucontrol)
            `ALU_ADD:begin
                tmp={a[31],a}+{b[31],b};
            end
            `ALU_SUB:begin
                tmp={a[31],a}-{b[31],b};
            end
            `ALU_ADDU:begin
                tmp=a+b;
            end
            `ALU_AND:begin
                tmp=a&b;
            end
            `ALU_OR:begin
                tmp=a|b;
            end
            `ALU_SLT:begin
                tmp=$signed(a)<$signed(b);
            end
        endcase
    end
    assign out=tmp[31:0];
    assign zero=out==0;
    assign overflow=tmp[32]!=tmp[31];
endmodule

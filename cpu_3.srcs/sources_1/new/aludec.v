`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/06 19:53:49
// Design Name: 
// Module Name: aludec
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
`include "defines.vh"
`include "aludefines.vh"

module aludec(
input wire [5:0] op,
input wire [5:0] funct,
output wire [4:0] alucontrol
    );
    reg [4:0] control;
    always @(funct or op) begin
        case (op)
            `EXE_R_TYPE:case(funct)
                //带符号算数运算
                `EXE_ADD:control<=`ALU_ADD;
                `EXE_SUB:control<=`ALU_SUB;
                //无符号算数运算
                `EXE_ADDU:control<=`ALU_ADDU;
                //逻辑运算
                `EXE_AND:control<=`ALU_AND;
                `EXE_OR:control<=`ALU_OR;
                //比较运算
                `EXE_SLT:control<=`ALU_SLT;
                default:control<=5'b0;
            endcase
            //立即数运算
            `EXE_ADDI:control<=`ALU_ADD;
            //访存指令
            `EXE_SW,`EXE_LW:control<=`ALU_ADDU;
            //跳转指令
            `EXE_BEQ:control<=`ALU_SUB;
            default:control<=5'b0;
        endcase
        	
    end
    assign alucontrol=control;
endmodule

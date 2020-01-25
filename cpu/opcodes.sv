/* Copyright (c) 2019, 2020, Daniel Kasza
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 * 
 * 1. Redistributions of source code must retain the above copyright notice, this
 *    list of conditions and the following disclaimer.
 * 
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/* RISC-V RV32IM opcodes.
*
* RISC-V User-Level ISA v2.2
* Privileged Architecture v1.10
*/
`ifndef _OPCODES_SV
`define _OPCODES_SV

package opcodes;
/* RV64I **************************************************************************************************************/
/* Register-Immediate instructions. */
/* -- ALU instructions. */
localparam [31:0] ADDI       = 32'b?????????????????000?????0010011;
localparam [31:0] ADDIW      = 32'b?????????????????000?????0011011;
localparam [31:0] ANDI       = 32'b?????????????????111?????0010011;
localparam [31:0] ORI        = 32'b?????????????????110?????0010011;
localparam [31:0] XORI       = 32'b?????????????????100?????0010011;
/* -- comparator instructions. */
localparam [31:0] SLTI       = 32'b?????????????????010?????0010011;
localparam [31:0] SLTIU      = 32'b?????????????????011?????0010011;
/* -- bitshift instructions. */
localparam [31:0] SLLI       = 32'b000000???????????001?????0010011;
localparam [31:0] SLLIW      = 32'b0000000??????????001?????0011011;
localparam [31:0] SRLI       = 32'b000000???????????101?????0010011;
localparam [31:0] SRLIW      = 32'b0000000??????????101?????0011011;
localparam [31:0] SRAI       = 32'b010000???????????101?????0010011;
localparam [31:0] SRAIW      = 32'b0100000??????????101?????0011011;
/* -- immediate loading instructions. */
localparam [31:0] LUI        = 32'b?????????????????????????0110111;
localparam [31:0] AUIPC      = 32'b?????????????????????????0010111;
/* Register-Register instructions. */
/* -- ALU instructions. */
localparam [31:0] ADD        = 32'b0000000??????????000?????0110011;
localparam [31:0] ADDW       = 32'b0000000??????????000?????0111011;
localparam [31:0] AND        = 32'b0000000??????????111?????0110011;
localparam [31:0] OR         = 32'b0000000??????????110?????0110011;
localparam [31:0] SUB        = 32'b0100000??????????000?????0110011;
localparam [31:0] SUBW       = 32'b0100000??????????000?????0111011;
localparam [31:0] XOR        = 32'b0000000??????????100?????0110011;
/* -- comparator instructions. */
localparam [31:0] SLT        = 32'b0000000??????????010?????0110011;
localparam [31:0] SLTU       = 32'b0000000??????????011?????0110011;
/* -- bitshift instructions. */
localparam [31:0] SLL        = 32'b0000000??????????001?????0110011;
localparam [31:0] SLLW       = 32'b0000000??????????001?????0111011;
localparam [31:0] SRL        = 32'b0000000??????????101?????0110011;
localparam [31:0] SRLW       = 32'b0000000??????????101?????0111011;
localparam [31:0] SRA        = 32'b0100000??????????101?????0110011;
localparam [31:0] SRAW       = 32'b0100000??????????101?????0111011;
/* Unconditional jumps. */
localparam [31:0] JAL        = 32'b?????????????????????????1101111;
localparam [31:0] JALR       = 32'b?????????????????000?????1100111;
localparam [31:0] RET        = 32'b00000000000000001000000001100111;
/* Conditional branches. */
localparam [31:0] BEQ        = 32'b?????????????????000?????1100011;
localparam [31:0] BNE        = 32'b?????????????????001?????1100011;
localparam [31:0] BLT        = 32'b?????????????????100?????1100011;
localparam [31:0] BLTU       = 32'b?????????????????110?????1100011;
localparam [31:0] BGE        = 32'b?????????????????101?????1100011;
localparam [31:0] BGEU       = 32'b?????????????????111?????1100011;
/* Load instructions. */
localparam [31:0] LB         = 32'b?????????????????000?????0000011;
localparam [31:0] LBU        = 32'b?????????????????100?????0000011;
localparam [31:0] LH         = 32'b?????????????????001?????0000011;
localparam [31:0] LHU        = 32'b?????????????????101?????0000011;
localparam [31:0] LW         = 32'b?????????????????010?????0000011;
localparam [31:0] LWU        = 32'b?????????????????110?????0000011;
localparam [31:0] LD         = 32'b?????????????????011?????0000011;
/* Store instructions. */
localparam [31:0] SB         = 32'b?????????????????000?????0100011;
localparam [31:0] SH         = 32'b?????????????????001?????0100011;
localparam [31:0] SW         = 32'b?????????????????010?????0100011;
localparam [31:0] SD         = 32'b?????????????????011?????0100011;
/* Memory fence instructions. */
localparam [31:0] FENCE      = 32'b?????????????????000?????0001111;
localparam [31:0] FENCE_I    = 32'b?????????????????001?????0001111;
/* Control and status register instructions. */
localparam [31:0] CSRRW      = 32'b?????????????????001?????1110011;
localparam [31:0] CSRRS      = 32'b?????????????????010?????1110011;
localparam [31:0] CSRRC      = 32'b?????????????????011?????1110011;
localparam [31:0] CSRRWI     = 32'b?????????????????101?????1110011;
localparam [31:0] CSRRSI     = 32'b?????????????????110?????1110011;
localparam [31:0] CSRRCI     = 32'b?????????????????111?????1110011;
/* RV64M **************************************************************************************************************/
localparam [31:0] MUL        = 32'b0000001??????????000?????0110011;
localparam [31:0] MULW       = 32'b0000001??????????000?????0111011;
localparam [31:0] MULH       = 32'b0000001??????????001?????0110011;
localparam [31:0] MULHSU     = 32'b0000001??????????010?????0110011;
localparam [31:0] MULHU      = 32'b0000001??????????011?????0110011;
localparam [31:0] DIV        = 32'b0000001??????????100?????0110011;
localparam [31:0] DIVW       = 32'b0000001??????????100?????0111011;
localparam [31:0] DIVU       = 32'b0000001??????????101?????0110011;
localparam [31:0] DIVUW      = 32'b0000001??????????101?????0111011;
localparam [31:0] REM        = 32'b0000001??????????110?????0110011;
localparam [31:0] REMW       = 32'b0000001??????????110?????0111011;
localparam [31:0] REMU       = 32'b0000001??????????111?????0110011;
localparam [31:0] REMUW      = 32'b0000001??????????111?????0111011;
/* RV64A **************************************************************************************************************/
localparam [31:0] LRW        = 32'b00010??00000?????010?????0101111;
localparam [31:0] LRD        = 32'b00010??00000?????011?????0101111;
localparam [31:0] SCW        = 32'b00011????????????010?????0101111;
localparam [31:0] SCD        = 32'b00011????????????011?????0101111;
localparam [31:0] AMOADDW    = 32'b00000????????????010?????0101111;
localparam [31:0] AMOXORW    = 32'b00100????????????010?????0101111;
localparam [31:0] AMOORW     = 32'b01000????????????010?????0101111;
localparam [31:0] AMOANDW    = 32'b01100????????????010?????0101111;
localparam [31:0] AMOMINW    = 32'b10000????????????010?????0101111;
localparam [31:0] AMOMAXW    = 32'b10100????????????010?????0101111;
localparam [31:0] AMOMINUW   = 32'b11000????????????010?????0101111;
localparam [31:0] AMOMAXUW   = 32'b11100????????????010?????0101111;
localparam [31:0] AMOSWAPW   = 32'b00001????????????010?????0101111;
localparam [31:0] AMOADDD    = 32'b00000????????????011?????0101111;
localparam [31:0] AMOXORD    = 32'b00100????????????011?????0101111;
localparam [31:0] AMOORD     = 32'b01000????????????011?????0101111;
localparam [31:0] AMOANDD    = 32'b01100????????????011?????0101111;
localparam [31:0] AMOMIND    = 32'b10000????????????011?????0101111;
localparam [31:0] AMOMAXD    = 32'b10100????????????011?????0101111;
localparam [31:0] AMOMINUD   = 32'b11000????????????011?????0101111;
localparam [31:0] AMOMAXUD   = 32'b11100????????????011?????0101111;
localparam [31:0] AMOSWAPD   = 32'b00001????????????011?????0101111;
/* Privileged Architecture instructions *******************************************************************************/
localparam [31:0] ECALL      = 32'b00000000000000000000000001110011;
localparam [31:0] EBREAK     = 32'b00000000000100000000000001110011;
localparam [31:0] SRET       = 32'b00010000001000000000000001110011;
localparam [31:0] MRET       = 32'b00110000001000000000000001110011;
localparam [31:0] WFI        = 32'b00010000010100000000000001110011;
localparam [31:0] SFENCE_VMA = 32'b0001001??????????000000001110011;
endpackage

`endif /* _OPCODES_SV */
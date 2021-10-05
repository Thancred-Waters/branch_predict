// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat Aug  7 13:06:07 2021
// Host        : LAPTOP-8DNNU5PI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Programs/vivado/cpu_4/cpu_3.gen/sources_1/ip/inst_mem/inst_mem_sim_netlist.v
// Design      : inst_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "inst_mem,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module inst_mem
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.1437 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "inst_mem.mem" *) 
  (* C_INIT_FILE_NAME = "inst_mem.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  inst_mem_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sbNGmomEbP78s1hfxgX3P1Jo01EKJk0i0C7iGpF+Yibr9EK0s4mcIifHDN/ag4jpPwW3bPllMHvn
U8AEY3mO8hCXVVoilrcRuCaEna/98GycCzy4G7FnYMfowsJb5k9ifRdE2jnurzeTLFbupUSpDF0H
Rl3Ci3DTGeExAZZ9UQE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zZZZoIprBFYfDWmCCcduELBM7HU98/+rvP9g8+y1mYyD3r3HEDm4ZwehwZvPoYWqoGXYoFqWZh3h
utt0abIfUW9/oF2vJ9hXn7nArtcm/Eui18rPYqp3aj/AItPNVXojk9zp7uFZLPTqcyig5v3Jtenl
qPnLi1Z84ZCW7NIRw6Y0bgmw6z26E8VPbYrZHs+0YW8Sztjo6CdIrQeEL5WBDolA0aHoKHWRZyFs
l5eRDmBAolj2uF07t/3eY3J7cYJmEDaoZ0TR1qcz25VFNu0OlcrEJ19IT+QdAxTah4jqJtknGZrT
6lUMwDZ7dBQwF1EuaE6p90gGNERhGAsbHLdvaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUbz0Iu2faeWqD6HFeuGLtSOAlqZmpKCCJfzym8tkcWUUNgNMn2mYvx6PTM7j4tyig8JdUG3uZYs
NfPgAsNXQtTI7b19u9CkMks9jR+oEzX1rW7QtTvSj/nHZLg2smoFwuB5Ieb7/B8IIs1NTUrIz6Rc
itLQVG+L+GMziamsrx4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G7XYdRx9VGclyxTEtwMG+rjJHV8bfBxEGdkcN82UL3koN3Dt0M5AWkzEvHcskt1W0hTOjyYgmvYj
/p70w1nz96tlg226+e4UubpRmBH9QXBBX6UmqIwSiHj9H+XI1yNfTIdlwBKGQvfzwCAMwBwrrrGL
/804k5Ux3RhWRvwezZB4+sj9DFm4akREVXmNpfeqjI2X02LU/MxWMUbKxvjJnD9YxikAAO6ccTd6
8DKv76V76MEFVyXc7E2FeQDToW3lqkRTa6MTpIXbYSekRihQC+qPVuhPUneA4kepvQDfgFYE8/Ir
gu5gK+s/qNfuXhJUAqyLjslrUcY4+XD9ckpSvQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YXkYRXpUPv/tETnwnThdQ46UaPmI23lN9vrxHQjIOhq3WNJCuz7TYZK9hyzSdo6k0U6QE9ihQy2L
rYZg68RGbrK8bzlcnQ41r18LZb4GYlAn9PH7IrF1B+aHm3578doOZHf8wzUE2s+d1aHQIn6VIZjL
14pCTAjErJfMO13fgX6h8sgxb4GFC3eIORmkrq2J/fB9HALyh/qdGiLi7DejMfmdsssbOcPQTZUh
6Belf7fHTkIEr9B44rFZgMyrMVx4N9p0XpXD3JPe7Xeg6a3jxdqxHATaMuLdIa4s+ZiAz1TRx0EO
FFihCnLLb7weBBITQyTIncRL817BrF/ZXZD8Yw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g7FbNw1ywd4TBNHq8OmK/4zoKI/t7vKmyT8R8SeiyUtKywhn0/7DZ/lV0Lf4IhY8X5MYsKtOQ5l6
DIl3fxtOhxpi8NHn9Nw3Nfb8NnS38Zuy6DSpwOL0f/GSmUSf2/YdB5Ben6xibQT0Oy//oBl5/1kR
pV5fWjj8WRgI6cnmfyj3g1MxepxPu1A/UHxlm1/i9yUHHi114N/hEQ0iujjrn6GxfZSiJUVF+r6c
rnxD//eOAl/YaxhdU/KhUkfsMn+MxtA5m6hTYYE0bnze8rpmEU5UGYKyY0p8KUs+MgsdTe+m/7gV
HSf6puBqQmEa1qksRfl742aL9B9y169or7Jp9Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kd1A2zIphLxXB0RyfHIqLkHXfWl0n38vROERuDghYrhK0ItcWGEP0XBrri6k1VZCSPYwiSu//pM6
83BfcPKbk09/A+ksvDIa3xS8Tg7DJK2AS+0pdnzBSjVWh+QD+glA3Hjk6LG9OMbjXyqD3hnMKacA
VRMwxKktV+KT5NXj5a7fMxXjo9exc0xM+woUJiSYs8onoUSwfBeH5/xhUy+iu+w0/OOydQE2LXZ0
1y+RObiz5C22dD4GGCfuvUCGAthYpUf633ZxRYN45mmAn5PxPsH4o+l2GhH/50Gu/VPVoAWDhgXQ
e93oPri++HinkK2uvDhDl4PI9HtRkq11Ky3uXQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gDrrFgXHVyBo+Cn0bYn+SOSOCXPg7besukY6l0JmA/nu4gap105Wxbg11c7TJZ9ctHVLc5DXAxr+
EIvFpAIepoZBREtMjTlaIdNJ8k1nUpwAv2jaQeseq1TudTjugV1jtOYYk0RKd88z/6SJ8t9urDW0
yKqsfEWU3PwGcUGHOWtTn2hfAceNznmEIFWLmFmzSQJ1hQNdsIQn3jHnfMVYu8cAz5xvPVQWYyJW
pMHXhNYk6GyAjIshh991slb1g01K1ilR2tKD1EmxH5WGrX9BEUqBjHQo6uluC/d3mvcEQ5nJ1v+P
hIlj4qzUQT1wXjpk6d/BvNx7LyWmj5iq35dzNm+cdhfGwaFGG//vgmB6D/dFfs2BYSjHsa6VlpVM
7e2OgoFenuG9p1SVPI6gAs2MuFtnDKfxW7jS3RGhvsquS3tg1iFCDH/OU7E5aWfY7twF3yyN6G10
l72RZw62DfNoCdyUMG9sA8nc4qf6dEhyrr5S6XxpJhoBDJvkeq0TCUQZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XR7vRF1m+9DS2Pv4r/O4uHwmvtXkChnKbsJCYczn1dvkZbcZSbBm/2UH78dXUaNorOh9XAuCvSjb
ER73y7e0anAfaIf1tJ9Y9pIb8EuNxGS/Pqdvg36cWarwGac9tsscdv/HWfb5Z+qWEk0/uFcLI7pH
CZO7fF2/ONQjA0NtUFBjW4idlx8WrySIuJgDs4jyGkMhbHR3U/ghF1YhMhwgwsbbcptfC1XLrIqQ
OecZnZu8E2hyc5eK/ccYdKcHnXoL55z1p5amI6Fuvz0wKTz2QQ/mwXodfGjEC1ZRWwTn7zCFM91M
qrA1Is49i6pSa7/VICjgn8ULMT1oKGfJLPm7hg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27872)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

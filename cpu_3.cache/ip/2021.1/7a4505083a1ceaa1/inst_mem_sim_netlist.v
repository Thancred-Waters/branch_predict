// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat Aug  7 13:06:07 2021
// Host        : LAPTOP-8DNNU5PI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ inst_mem_sim_netlist.v
// Design      : inst_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "inst_mem,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27936)
`pragma protect data_block
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
7REfVSDc
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

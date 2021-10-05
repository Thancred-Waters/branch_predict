// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat Aug  7 12:45:58 2021
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
MHMODIQk
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

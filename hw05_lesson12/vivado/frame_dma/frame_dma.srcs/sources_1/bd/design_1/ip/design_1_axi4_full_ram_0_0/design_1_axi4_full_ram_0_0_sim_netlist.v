// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Oct  3 01:25:52 2026
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/tymbys/home/FPGA/course/courses/robot-dreams/hw/hw05_lesson12/vivado/frame_dma/frame_dma.srcs/sources_1/bd/design_1/ip/design_1_axi4_full_ram_0_0/design_1_axi4_full_ram_0_0_sim_netlist.v
// Design      : design_1_axi4_full_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi4_full_ram_0_0,axi4_full_ram,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axi4_full_ram,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_axi4_full_ram_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rlast,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [15:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [15:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;

  wire \<const0> ;
  wire s_axi_aclk;
  wire [15:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [15:0]s_axi_awaddr;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_axi4_full_ram_0_0_axi4_full_ram inst
       (.\FSM_onehot_wstate_reg[0]_0 (s_axi_awready),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_wready),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[15:1]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[15:1]),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_reg_0(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi4_full_ram" *) 
module design_1_axi4_full_ram_0_0_axi4_full_ram
   (\FSM_onehot_wstate_reg[1]_0 ,
    \FSM_onehot_wstate_reg[0]_0 ,
    s_axi_rdata,
    s_axi_bvalid,
    s_axi_rvalid_reg_0,
    s_axi_arready,
    s_axi_rlast,
    s_axi_aclk,
    s_axi_wvalid,
    s_axi_wdata,
    s_axi_awlen,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_aresetn,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_arlen,
    s_axi_awaddr,
    s_axi_araddr);
  output \FSM_onehot_wstate_reg[1]_0 ;
  output \FSM_onehot_wstate_reg[0]_0 ;
  output [31:0]s_axi_rdata;
  output s_axi_bvalid;
  output s_axi_rvalid_reg_0;
  output s_axi_arready;
  output s_axi_rlast;
  input s_axi_aclk;
  input s_axi_wvalid;
  input [31:0]s_axi_wdata;
  input [7:0]s_axi_awlen;
  input s_axi_awvalid;
  input s_axi_bready;
  input s_axi_aresetn;
  input s_axi_arvalid;
  input s_axi_rready;
  input [7:0]s_axi_arlen;
  input [14:0]s_axi_awaddr;
  input [14:0]s_axi_araddr;

  wire \FSM_onehot_wstate[0]_i_1_n_0 ;
  wire \FSM_onehot_wstate[0]_i_2_n_0 ;
  wire \FSM_onehot_wstate[0]_i_3_n_0 ;
  wire \FSM_onehot_wstate[0]_i_4_n_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[1]_rep_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[0]_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[1]_rep_n_0 ;
  wire \FSM_onehot_wstate_reg_n_0_[2] ;
  wire [15:1]in8;
  wire mem_re;
  wire [13:0]p_0_in;
  wire [13:0]p_1_in;
  wire [1:1]raddr_cur;
  wire [15:1]raddr_cur0;
  wire raddr_cur0_carry__0_n_0;
  wire raddr_cur0_carry__0_n_1;
  wire raddr_cur0_carry__0_n_2;
  wire raddr_cur0_carry__0_n_3;
  wire raddr_cur0_carry__1_n_0;
  wire raddr_cur0_carry__1_n_1;
  wire raddr_cur0_carry__1_n_2;
  wire raddr_cur0_carry__1_n_3;
  wire raddr_cur0_carry__2_n_2;
  wire raddr_cur0_carry__2_n_3;
  wire raddr_cur0_carry_i_1_n_0;
  wire raddr_cur0_carry_n_0;
  wire raddr_cur0_carry_n_1;
  wire raddr_cur0_carry_n_2;
  wire raddr_cur0_carry_n_3;
  wire \raddr_cur[10]_i_1_n_0 ;
  wire \raddr_cur[11]_i_1_n_0 ;
  wire \raddr_cur[12]_i_1_n_0 ;
  wire \raddr_cur[13]_i_1_n_0 ;
  wire \raddr_cur[14]_i_1_n_0 ;
  wire \raddr_cur[15]_i_1_n_0 ;
  wire \raddr_cur[1]_i_1_n_0 ;
  wire \raddr_cur[2]_i_1_n_0 ;
  wire \raddr_cur[3]_i_1_n_0 ;
  wire \raddr_cur[4]_i_1_n_0 ;
  wire \raddr_cur[5]_i_1_n_0 ;
  wire \raddr_cur[6]_i_1_n_0 ;
  wire \raddr_cur[7]_i_1_n_0 ;
  wire \raddr_cur[8]_i_1_n_0 ;
  wire \raddr_cur[9]_i_1_n_0 ;
  wire raddr_cur_0;
  wire [7:0]rburst_cnt;
  wire \rburst_cnt[0]_i_1_n_0 ;
  wire \rburst_cnt[1]_i_1_n_0 ;
  wire \rburst_cnt[2]_i_1_n_0 ;
  wire \rburst_cnt[3]_i_1_n_0 ;
  wire \rburst_cnt[4]_i_1_n_0 ;
  wire \rburst_cnt[5]_i_1_n_0 ;
  wire \rburst_cnt[6]_i_1_n_0 ;
  wire \rburst_cnt[6]_i_2_n_0 ;
  wire \rburst_cnt[7]_i_2_n_0 ;
  wire \rburst_cnt[7]_i_3_n_0 ;
  wire \rstate[0]_i_1_n_0 ;
  wire \rstate_reg_n_0_[0] ;
  wire s_axi_aclk;
  wire [14:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [14:0]s_axi_awaddr;
  wire [7:0]s_axi_awlen;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_1_n_0;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rlast_i_1_n_0;
  wire s_axi_rlast_i_2_n_0;
  wire s_axi_rready;
  wire s_axi_rvalid_reg_0;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire [1:1]waddr_cur;
  wire waddr_cur0_carry__0_n_0;
  wire waddr_cur0_carry__0_n_1;
  wire waddr_cur0_carry__0_n_2;
  wire waddr_cur0_carry__0_n_3;
  wire waddr_cur0_carry__1_n_0;
  wire waddr_cur0_carry__1_n_1;
  wire waddr_cur0_carry__1_n_2;
  wire waddr_cur0_carry__1_n_3;
  wire waddr_cur0_carry__2_n_2;
  wire waddr_cur0_carry__2_n_3;
  wire waddr_cur0_carry_i_1_n_0;
  wire waddr_cur0_carry_n_0;
  wire waddr_cur0_carry_n_1;
  wire waddr_cur0_carry_n_2;
  wire waddr_cur0_carry_n_3;
  wire \waddr_cur[10]_i_1_n_0 ;
  wire \waddr_cur[11]_i_1_n_0 ;
  wire \waddr_cur[12]_i_1_n_0 ;
  wire \waddr_cur[13]_i_1_n_0 ;
  wire \waddr_cur[14]_i_1_n_0 ;
  wire \waddr_cur[15]_i_1_n_0 ;
  wire \waddr_cur[15]_i_2_n_0 ;
  wire \waddr_cur[1]_i_1_n_0 ;
  wire \waddr_cur[2]_i_1_n_0 ;
  wire \waddr_cur[3]_i_1_n_0 ;
  wire \waddr_cur[4]_i_1_n_0 ;
  wire \waddr_cur[5]_i_1_n_0 ;
  wire \waddr_cur[6]_i_1_n_0 ;
  wire \waddr_cur[7]_i_1_n_0 ;
  wire \waddr_cur[8]_i_1_n_0 ;
  wire \waddr_cur[9]_i_1_n_0 ;
  wire [7:0]wburst_cnt;
  wire \wburst_cnt[0]_i_1_n_0 ;
  wire \wburst_cnt[1]_i_1_n_0 ;
  wire \wburst_cnt[2]_i_1_n_0 ;
  wire \wburst_cnt[3]_i_1_n_0 ;
  wire \wburst_cnt[3]_i_2_n_0 ;
  wire \wburst_cnt[4]_i_1_n_0 ;
  wire \wburst_cnt[4]_i_2_n_0 ;
  wire \wburst_cnt[5]_i_1_n_0 ;
  wire \wburst_cnt[5]_i_2_n_0 ;
  wire \wburst_cnt[6]_i_1_n_0 ;
  wire \wburst_cnt[7]_i_1_n_0 ;
  wire \wburst_cnt[7]_i_2_n_0 ;
  wire \wburst_cnt[7]_i_3_n_0 ;
  wire NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_10_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_10_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_10_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_10_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_10_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_10_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_10_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_10_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_10_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_10_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_10_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_10_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_11_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_11_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_11_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_11_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_11_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_11_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_11_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_11_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_11_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_11_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_11_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_12_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_12_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_12_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_12_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_12_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_12_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_12_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_12_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_12_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_12_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_12_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_12_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_13_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_13_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_13_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_13_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_13_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_13_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_13_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_13_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_13_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_13_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_13_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_13_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_14_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_14_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_14_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_14_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_14_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_14_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_14_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_14_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_14_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_14_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_14_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_14_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_15_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_15_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_15_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_15_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_15_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_15_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_15_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_15_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_15_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_15_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_15_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_15_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_2_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_3_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_4_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_4_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_4_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_4_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_5_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_5_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_5_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_5_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_6_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_6_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_6_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_6_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_7_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_7_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_7_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_7_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_8_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_8_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_8_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_8_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_8_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_8_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_8_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_8_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_8_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_8_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_8_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_8_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_9_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_9_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_9_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_9_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_9_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_9_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_9_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_9_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_9_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_9_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_9_RDADDRECC_UNCONNECTED;
  wire [3:2]NLW_raddr_cur0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_raddr_cur0_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_waddr_cur0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_waddr_cur0_carry__2_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_wstate[0]_i_1 
       (.I0(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I1(\FSM_onehot_wstate[0]_i_3_n_0 ),
        .I2(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\FSM_onehot_wstate[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[0]_i_2 
       (.I0(s_axi_aresetn),
        .O(\FSM_onehot_wstate[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    \FSM_onehot_wstate[0]_i_3 
       (.I0(wburst_cnt[7]),
        .I1(\wburst_cnt[7]_i_3_n_0 ),
        .I2(wburst_cnt[6]),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .I4(s_axi_wvalid),
        .I5(\FSM_onehot_wstate[0]_i_4_n_0 ),
        .O(\FSM_onehot_wstate[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF8888888)) 
    \FSM_onehot_wstate[0]_i_4 
       (.I0(\FSM_onehot_wstate_reg[0]_0 ),
        .I1(s_axi_awvalid),
        .I2(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid),
        .O(\FSM_onehot_wstate[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(\FSM_onehot_wstate_reg[0]_0 ),
        .I1(\FSM_onehot_wstate[0]_i_3_n_0 ),
        .I2(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_wstate[1]_rep_i_1 
       (.I0(\FSM_onehot_wstate_reg[0]_0 ),
        .I1(\FSM_onehot_wstate[0]_i_3_n_0 ),
        .I2(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[1]_rep_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(\FSM_onehot_wstate[0]_i_3_n_0 ),
        .I2(\FSM_onehot_wstate_reg_n_0_[2] ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRIDLE:001,WRDATA:010,WRRESP:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_wstate_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[0]_i_1_n_0 ),
        .PRE(\FSM_onehot_wstate[0]_i_2_n_0 ),
        .Q(\FSM_onehot_wstate_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "WRIDLE:001,WRDATA:010,WRRESP:100," *) 
  (* ORIG_CELL_NAME = "FSM_onehot_wstate_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_onehot_wstate[0]_i_2_n_0 ),
        .D(\FSM_onehot_wstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "WRIDLE:001,WRDATA:010,WRRESP:100," *) 
  (* ORIG_CELL_NAME = "FSM_onehot_wstate_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1]_rep 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_onehot_wstate[0]_i_2_n_0 ),
        .D(\FSM_onehot_wstate[1]_rep_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_rep_n_0 ));
  (* FSM_ENCODED_STATES = "WRIDLE:001,WRDATA:010,WRRESP:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_onehot_wstate[0]_i_2_n_0 ),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg_n_0_[2] ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "design_1_axi4_full_ram_0_0/inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_0
       (.ADDRARDADDR({1'b1,p_0_in,1'b1}),
        .ADDRBWRADDR({1'b1,p_1_in,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_mem_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[1:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_DOBDO_UNCONNECTED[31:2],s_axi_rdata[1:0]}),
        .DOPADOP(NLW_mem_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(s_axi_wvalid),
        .ENBWREN(mem_re),
        .INJECTDBITERR(NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_SBITERR_UNCONNECTED),
        .WEA({\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "design_1_axi4_full_ram_0_0/inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_1
       (.ADDRARDADDR({1'b1,p_0_in,1'b1}),
        .ADDRBWRADDR({1'b1,p_1_in,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_mem_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[3:2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_1_DOBDO_UNCONNECTED[31:2],s_axi_rdata[3:2]}),
        .DOPADOP(NLW_mem_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(s_axi_wvalid),
        .ENBWREN(mem_re),
        .INJECTDBITERR(NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_SBITERR_UNCONNECTED),
        .WEA({\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "design_1_axi4_full_ram_0_0/inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "21" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_10
       (.ADDRARDADDR({1'b1,p_0_in,1'b1}),
        .ADDRBWRADDR({1'b1,p_1_in,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_10_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_10_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_mem_reg_10_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[21:20]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_10_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_10_DOBDO_UNCONNECTED[31:2],s_axi_rdata[21:20]}),
        .DOPADOP(NLW_mem_reg_10_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_10_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_10_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(s_axi_wvalid),
        .ENBWREN(mem_re),
        .INJECTDBITERR(NLW_mem_reg_10_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_10_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_10_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_10_SBITERR_UNCONNECTED),
        .WEA({\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "design_1_axi4_full_ram_0_0/inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "23" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_11
       (.ADDRARDADDR({1'b1,p_0_in,1'b1}),
        .ADDRBWRADDR({1'b1,p_1_in,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_11_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_11_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_mem_reg_11_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[23:22]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_11_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_11_DOBDO_UNCONNECTED[31:2],s_axi_rdata[23:22]}),
        .DOPADOP(NLW_mem_reg_11_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_11_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_11_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(s_axi_wvalid),
        .ENBWREN(mem_re),
        .INJECTDBITERR(NLW_mem_reg_11_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_11_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_11_SBITERR_UNCONNECTED),
        .WEA({\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "design_1_axi4_full_ram_0_0/inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "25" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_12
       (.ADDRARDADDR({1'b1,p_0_in,1'b1}),
        .ADDRBWRADDR({1'b1,p_1_in,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_12_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_12_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_mem_reg_12_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[25:24]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_12_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_12_DOBDO_UNCONNECTED[31:2],s_axi_rdata[25:24]}),
        .DOPADOP(NLW_mem_reg_12_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_12_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_12_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(s_axi_wvalid),
        .ENBWREN(mem_re),
        .INJECTDBITERR(NLW_mem_reg_12_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_12_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_12_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_12_SBITERR_UNCONNECTED),
        .WEA({\FSM_onehot_wstate_reg[1]_rep_n_0 ,\FSM_onehot_wstate_reg[1]_rep_n_0 ,\FSM_onehot_wstate_reg[1]_rep_n_0 ,\FSM_onehot_wstate_reg[1]_rep_n_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "design_1_axi4_full_ram_0_0/inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "27" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_13
       (.ADDRARDADDR({1'b1,p_0_in,1'b1}),
        .ADDRBWRADDR({1'b1,p_1_in,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_13_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_13_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_mem_reg_13_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[27:26]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_13_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_13_DOBDO_UNCONNECTED[31:2],s_axi_rdata[27:26]}),
        .DOPADOP(NLW_mem_reg_13_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_13_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_13_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(s_axi_wvalid),
        .ENBWREN(mem_re),
        .INJECTDBITERR(NLW_mem_reg_13_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_13_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_13_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_13_SBITERR_UNCONNECTED),
        .WEA({\FSM_onehot_wstate_reg[1]_rep_n_0 ,\FSM_onehot_wstate_reg[1]_rep_n_0 ,\FSM_onehot_wstate_reg[1]_rep_n_0 ,\FSM_onehot_wstate_reg[1]_rep_n_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "design_1_axi4_full_ram_0_0/inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "29" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_14
       (.ADDRARDADDR({1'b1,p_0_in,1'b1}),
        .ADDRBWRADDR({1'b1,p_1_in,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_14_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_14_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_mem_reg_14_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[29:28]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_14_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_14_DOBDO_UNCONNECTED[31:2],s_axi_rdata[29:28]}),
        .DOPADOP(NLW_mem_reg_14_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_14_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_14_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(s_axi_wvalid),
        .ENBWREN(mem_re),
        .INJECTDBITERR(NLW_mem_reg_14_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_14_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_14_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_14_SBITERR_UNCONNECTED),
        .WEA({\FSM_onehot_wstate_reg[1]_rep_n_0 ,\FSM_onehot_wstate_reg[1]_rep_n_0 ,\FSM_onehot_wstate_reg[1]_rep_n_0 ,\FSM_onehot_wstate_reg[1]_rep_n_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "design_1_axi4_full_ram_0_0/inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_15
       (.ADDRARDADDR({1'b1,p_0_in,1'b1}),
        .ADDRBWRADDR({1'b1,p_1_in,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_15_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_15_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_mem_reg_15_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[31:30]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_15_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_15_DOBDO_UNCONNECTED[31:2],s_axi_rdata[31:30]}),
        .DOPADOP(NLW_mem_reg_15_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_15_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_15_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(s_axi_wvalid),
        .ENBWREN(mem_re),
        .INJECTDBITERR(NLW_mem_reg_15_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_15_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_15_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_15_SBITERR_UNCONNECTED),
        .WEA({\FSM_onehot_wstate_reg[1]_rep_n_0 ,\FSM_onehot_wstate_reg[1]_rep_n_0 ,\FSM_onehot_wstate_reg[1]_rep_n_0 ,\FSM_onehot_wstate_reg[1]_rep_n_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'hA2)) 
    mem_reg_15_i_1
       (.I0(\rstate_reg_n_0_[0] ),
        .I1(s_axi_rvalid_reg_0),
        .I2(s_axi_rready),
        .O(mem_re));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "design_1_axi4_full_ram_0_0/inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_2
       (.ADDRARDADDR({1'b1,p_0_in,1'b1}),
        .ADDRBWRADDR({1'b1,p_1_in,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_mem_reg_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[5:4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_2_DOBDO_UNCONNECTED[31:2],s_axi_rdata[5:4]}),
        .DOPADOP(NLW_mem_reg_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(s_axi_wvalid),
        .ENBWREN(mem_re),
        .INJECTDBITERR(NLW_mem_reg_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_SBITERR_UNCONNECTED),
        .WEA({\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "design_1_axi4_full_ram_0_0/inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_3
       (.ADDRARDADDR({1'b1,p_0_in,1'b1}),
        .ADDRBWRADDR({1'b1,p_1_in,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_mem_reg_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[7:6]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_3_DOBDO_UNCONNECTED[31:2],s_axi_rdata[7:6]}),
        .DOPADOP(NLW_mem_reg_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(s_axi_wvalid),
        .ENBWREN(mem_re),
        .INJECTDBITERR(NLW_mem_reg_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_SBITERR_UNCONNECTED),
        .WEA({\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "design_1_axi4_full_ram_0_0/inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "9" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_4
       (.ADDRARDADDR({1'b1,p_0_in,1'b1}),
        .ADDRBWRADDR({1'b1,p_1_in,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_mem_reg_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[9:8]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_4_DOBDO_UNCONNECTED[31:2],s_axi_rdata[9:8]}),
        .DOPADOP(NLW_mem_reg_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(s_axi_wvalid),
        .ENBWREN(mem_re),
        .INJECTDBITERR(NLW_mem_reg_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_4_SBITERR_UNCONNECTED),
        .WEA({\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "design_1_axi4_full_ram_0_0/inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_5
       (.ADDRARDADDR({1'b1,p_0_in,1'b1}),
        .ADDRBWRADDR({1'b1,p_1_in,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_mem_reg_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[11:10]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_5_DOBDO_UNCONNECTED[31:2],s_axi_rdata[11:10]}),
        .DOPADOP(NLW_mem_reg_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(s_axi_wvalid),
        .ENBWREN(mem_re),
        .INJECTDBITERR(NLW_mem_reg_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_5_SBITERR_UNCONNECTED),
        .WEA({\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "design_1_axi4_full_ram_0_0/inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "13" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_6
       (.ADDRARDADDR({1'b1,p_0_in,1'b1}),
        .ADDRBWRADDR({1'b1,p_1_in,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_mem_reg_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[13:12]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_6_DOBDO_UNCONNECTED[31:2],s_axi_rdata[13:12]}),
        .DOPADOP(NLW_mem_reg_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(s_axi_wvalid),
        .ENBWREN(mem_re),
        .INJECTDBITERR(NLW_mem_reg_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_6_SBITERR_UNCONNECTED),
        .WEA({\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "design_1_axi4_full_ram_0_0/inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_7
       (.ADDRARDADDR({1'b1,p_0_in,1'b1}),
        .ADDRBWRADDR({1'b1,p_1_in,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_mem_reg_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[15:14]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_7_DOBDO_UNCONNECTED[31:2],s_axi_rdata[15:14]}),
        .DOPADOP(NLW_mem_reg_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(s_axi_wvalid),
        .ENBWREN(mem_re),
        .INJECTDBITERR(NLW_mem_reg_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_7_SBITERR_UNCONNECTED),
        .WEA({\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "design_1_axi4_full_ram_0_0/inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_8
       (.ADDRARDADDR({1'b1,p_0_in,1'b1}),
        .ADDRBWRADDR({1'b1,p_1_in,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_8_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_8_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_mem_reg_8_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[17:16]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_8_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_8_DOBDO_UNCONNECTED[31:2],s_axi_rdata[17:16]}),
        .DOPADOP(NLW_mem_reg_8_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_8_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_8_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(s_axi_wvalid),
        .ENBWREN(mem_re),
        .INJECTDBITERR(NLW_mem_reg_8_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_8_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_8_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_8_SBITERR_UNCONNECTED),
        .WEA({\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "design_1_axi4_full_ram_0_0/inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "19" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_9
       (.ADDRARDADDR({1'b1,p_0_in,1'b1}),
        .ADDRBWRADDR({1'b1,p_1_in,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_9_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_9_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_mem_reg_9_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[19:18]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_9_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_9_DOBDO_UNCONNECTED[31:2],s_axi_rdata[19:18]}),
        .DOPADOP(NLW_mem_reg_9_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_9_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_9_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(s_axi_wvalid),
        .ENBWREN(mem_re),
        .INJECTDBITERR(NLW_mem_reg_9_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_9_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_9_SBITERR_UNCONNECTED),
        .WEA({\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 ,\FSM_onehot_wstate_reg[1]_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 raddr_cur0_carry
       (.CI(1'b0),
        .CO({raddr_cur0_carry_n_0,raddr_cur0_carry_n_1,raddr_cur0_carry_n_2,raddr_cur0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_1_in[0],1'b0}),
        .O(raddr_cur0[4:1]),
        .S({p_1_in[2:1],raddr_cur0_carry_i_1_n_0,raddr_cur}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 raddr_cur0_carry__0
       (.CI(raddr_cur0_carry_n_0),
        .CO({raddr_cur0_carry__0_n_0,raddr_cur0_carry__0_n_1,raddr_cur0_carry__0_n_2,raddr_cur0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(raddr_cur0[8:5]),
        .S(p_1_in[6:3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 raddr_cur0_carry__1
       (.CI(raddr_cur0_carry__0_n_0),
        .CO({raddr_cur0_carry__1_n_0,raddr_cur0_carry__1_n_1,raddr_cur0_carry__1_n_2,raddr_cur0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(raddr_cur0[12:9]),
        .S(p_1_in[10:7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 raddr_cur0_carry__2
       (.CI(raddr_cur0_carry__1_n_0),
        .CO({NLW_raddr_cur0_carry__2_CO_UNCONNECTED[3:2],raddr_cur0_carry__2_n_2,raddr_cur0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_raddr_cur0_carry__2_O_UNCONNECTED[3],raddr_cur0[15:13]}),
        .S({1'b0,p_1_in[13:11]}));
  LUT1 #(
    .INIT(2'h1)) 
    raddr_cur0_carry_i_1
       (.I0(p_1_in[0]),
        .O(raddr_cur0_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raddr_cur[10]_i_1 
       (.I0(raddr_cur0[10]),
        .I1(\rstate_reg_n_0_[0] ),
        .I2(s_axi_araddr[9]),
        .O(\raddr_cur[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raddr_cur[11]_i_1 
       (.I0(raddr_cur0[11]),
        .I1(\rstate_reg_n_0_[0] ),
        .I2(s_axi_araddr[10]),
        .O(\raddr_cur[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raddr_cur[12]_i_1 
       (.I0(raddr_cur0[12]),
        .I1(\rstate_reg_n_0_[0] ),
        .I2(s_axi_araddr[11]),
        .O(\raddr_cur[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raddr_cur[13]_i_1 
       (.I0(raddr_cur0[13]),
        .I1(\rstate_reg_n_0_[0] ),
        .I2(s_axi_araddr[12]),
        .O(\raddr_cur[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raddr_cur[14]_i_1 
       (.I0(raddr_cur0[14]),
        .I1(\rstate_reg_n_0_[0] ),
        .I2(s_axi_araddr[13]),
        .O(\raddr_cur[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raddr_cur[15]_i_1 
       (.I0(raddr_cur0[15]),
        .I1(\rstate_reg_n_0_[0] ),
        .I2(s_axi_araddr[14]),
        .O(\raddr_cur[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \raddr_cur[1]_i_1 
       (.I0(raddr_cur0[1]),
        .I1(\rstate_reg_n_0_[0] ),
        .I2(s_axi_araddr[0]),
        .O(\raddr_cur[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raddr_cur[2]_i_1 
       (.I0(raddr_cur0[2]),
        .I1(\rstate_reg_n_0_[0] ),
        .I2(s_axi_araddr[1]),
        .O(\raddr_cur[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raddr_cur[3]_i_1 
       (.I0(raddr_cur0[3]),
        .I1(\rstate_reg_n_0_[0] ),
        .I2(s_axi_araddr[2]),
        .O(\raddr_cur[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raddr_cur[4]_i_1 
       (.I0(raddr_cur0[4]),
        .I1(\rstate_reg_n_0_[0] ),
        .I2(s_axi_araddr[3]),
        .O(\raddr_cur[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raddr_cur[5]_i_1 
       (.I0(raddr_cur0[5]),
        .I1(\rstate_reg_n_0_[0] ),
        .I2(s_axi_araddr[4]),
        .O(\raddr_cur[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raddr_cur[6]_i_1 
       (.I0(raddr_cur0[6]),
        .I1(\rstate_reg_n_0_[0] ),
        .I2(s_axi_araddr[5]),
        .O(\raddr_cur[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raddr_cur[7]_i_1 
       (.I0(raddr_cur0[7]),
        .I1(\rstate_reg_n_0_[0] ),
        .I2(s_axi_araddr[6]),
        .O(\raddr_cur[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raddr_cur[8]_i_1 
       (.I0(raddr_cur0[8]),
        .I1(\rstate_reg_n_0_[0] ),
        .I2(s_axi_araddr[7]),
        .O(\raddr_cur[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \raddr_cur[9]_i_1 
       (.I0(raddr_cur0[9]),
        .I1(\rstate_reg_n_0_[0] ),
        .I2(s_axi_araddr[8]),
        .O(\raddr_cur[9]_i_1_n_0 ));
  FDRE \raddr_cur_reg[10] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\raddr_cur[10]_i_1_n_0 ),
        .Q(p_1_in[8]),
        .R(1'b0));
  FDRE \raddr_cur_reg[11] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\raddr_cur[11]_i_1_n_0 ),
        .Q(p_1_in[9]),
        .R(1'b0));
  FDRE \raddr_cur_reg[12] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\raddr_cur[12]_i_1_n_0 ),
        .Q(p_1_in[10]),
        .R(1'b0));
  FDRE \raddr_cur_reg[13] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\raddr_cur[13]_i_1_n_0 ),
        .Q(p_1_in[11]),
        .R(1'b0));
  FDRE \raddr_cur_reg[14] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\raddr_cur[14]_i_1_n_0 ),
        .Q(p_1_in[12]),
        .R(1'b0));
  FDRE \raddr_cur_reg[15] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\raddr_cur[15]_i_1_n_0 ),
        .Q(p_1_in[13]),
        .R(1'b0));
  FDRE \raddr_cur_reg[1] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\raddr_cur[1]_i_1_n_0 ),
        .Q(raddr_cur),
        .R(1'b0));
  FDRE \raddr_cur_reg[2] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\raddr_cur[2]_i_1_n_0 ),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE \raddr_cur_reg[3] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\raddr_cur[3]_i_1_n_0 ),
        .Q(p_1_in[1]),
        .R(1'b0));
  FDRE \raddr_cur_reg[4] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\raddr_cur[4]_i_1_n_0 ),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE \raddr_cur_reg[5] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\raddr_cur[5]_i_1_n_0 ),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE \raddr_cur_reg[6] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\raddr_cur[6]_i_1_n_0 ),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE \raddr_cur_reg[7] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\raddr_cur[7]_i_1_n_0 ),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE \raddr_cur_reg[8] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\raddr_cur[8]_i_1_n_0 ),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE \raddr_cur_reg[9] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\raddr_cur[9]_i_1_n_0 ),
        .Q(p_1_in[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \rburst_cnt[0]_i_1 
       (.I0(rburst_cnt[0]),
        .I1(\rstate_reg_n_0_[0] ),
        .I2(s_axi_arlen[0]),
        .O(\rburst_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \rburst_cnt[1]_i_1 
       (.I0(rburst_cnt[1]),
        .I1(rburst_cnt[0]),
        .I2(\rstate_reg_n_0_[0] ),
        .I3(s_axi_arlen[1]),
        .O(\rburst_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE1FFE100)) 
    \rburst_cnt[2]_i_1 
       (.I0(rburst_cnt[1]),
        .I1(rburst_cnt[0]),
        .I2(rburst_cnt[2]),
        .I3(\rstate_reg_n_0_[0] ),
        .I4(s_axi_arlen[2]),
        .O(\rburst_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \rburst_cnt[3]_i_1 
       (.I0(rburst_cnt[3]),
        .I1(rburst_cnt[1]),
        .I2(rburst_cnt[0]),
        .I3(rburst_cnt[2]),
        .I4(\rstate_reg_n_0_[0] ),
        .I5(s_axi_arlen[3]),
        .O(\rburst_cnt[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \rburst_cnt[4]_i_1 
       (.I0(rburst_cnt[4]),
        .I1(\rburst_cnt[6]_i_2_n_0 ),
        .I2(\rstate_reg_n_0_[0] ),
        .I3(s_axi_arlen[4]),
        .O(\rburst_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h9AFF9A00)) 
    \rburst_cnt[5]_i_1 
       (.I0(rburst_cnt[5]),
        .I1(rburst_cnt[4]),
        .I2(\rburst_cnt[6]_i_2_n_0 ),
        .I3(\rstate_reg_n_0_[0] ),
        .I4(s_axi_arlen[5]),
        .O(\rburst_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA9AFFFFAA9A0000)) 
    \rburst_cnt[6]_i_1 
       (.I0(rburst_cnt[6]),
        .I1(rburst_cnt[5]),
        .I2(\rburst_cnt[6]_i_2_n_0 ),
        .I3(rburst_cnt[4]),
        .I4(\rstate_reg_n_0_[0] ),
        .I5(s_axi_arlen[6]),
        .O(\rburst_cnt[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rburst_cnt[6]_i_2 
       (.I0(rburst_cnt[0]),
        .I1(rburst_cnt[1]),
        .I2(rburst_cnt[2]),
        .I3(rburst_cnt[3]),
        .O(\rburst_cnt[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h08A808A8080808A8)) 
    \rburst_cnt[7]_i_1 
       (.I0(s_axi_aresetn),
        .I1(s_axi_arvalid),
        .I2(\rstate_reg_n_0_[0] ),
        .I3(s_axi_rlast_i_2_n_0),
        .I4(s_axi_rvalid_reg_0),
        .I5(s_axi_rready),
        .O(raddr_cur_0));
  LUT5 #(
    .INIT(32'h9AFF9A00)) 
    \rburst_cnt[7]_i_2 
       (.I0(rburst_cnt[7]),
        .I1(rburst_cnt[6]),
        .I2(\rburst_cnt[7]_i_3_n_0 ),
        .I3(\rstate_reg_n_0_[0] ),
        .I4(s_axi_arlen[7]),
        .O(\rburst_cnt[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rburst_cnt[7]_i_3 
       (.I0(rburst_cnt[4]),
        .I1(rburst_cnt[0]),
        .I2(rburst_cnt[1]),
        .I3(rburst_cnt[2]),
        .I4(rburst_cnt[3]),
        .I5(rburst_cnt[5]),
        .O(\rburst_cnt[7]_i_3_n_0 ));
  FDRE \rburst_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\rburst_cnt[0]_i_1_n_0 ),
        .Q(rburst_cnt[0]),
        .R(1'b0));
  FDRE \rburst_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\rburst_cnt[1]_i_1_n_0 ),
        .Q(rburst_cnt[1]),
        .R(1'b0));
  FDRE \rburst_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\rburst_cnt[2]_i_1_n_0 ),
        .Q(rburst_cnt[2]),
        .R(1'b0));
  FDRE \rburst_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\rburst_cnt[3]_i_1_n_0 ),
        .Q(rburst_cnt[3]),
        .R(1'b0));
  FDRE \rburst_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\rburst_cnt[4]_i_1_n_0 ),
        .Q(rburst_cnt[4]),
        .R(1'b0));
  FDRE \rburst_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\rburst_cnt[5]_i_1_n_0 ),
        .Q(rburst_cnt[5]),
        .R(1'b0));
  FDRE \rburst_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\rburst_cnt[6]_i_1_n_0 ),
        .Q(rburst_cnt[6]),
        .R(1'b0));
  FDRE \rburst_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(raddr_cur_0),
        .D(\rburst_cnt[7]_i_2_n_0 ),
        .Q(rburst_cnt[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7F7FFF00)) 
    \rstate[0]_i_1 
       (.I0(s_axi_rlast_i_2_n_0),
        .I1(s_axi_rready),
        .I2(s_axi_rvalid_reg_0),
        .I3(s_axi_arvalid),
        .I4(\rstate_reg_n_0_[0] ),
        .O(\rstate[0]_i_1_n_0 ));
  FDCE \rstate_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_onehot_wstate[0]_i_2_n_0 ),
        .D(\rstate[0]_i_1_n_0 ),
        .Q(\rstate_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_arready_INST_0
       (.I0(\rstate_reg_n_0_[0] ),
        .O(s_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    s_axi_bvalid_i_1
       (.I0(s_axi_bready),
        .I1(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I2(s_axi_bvalid),
        .O(s_axi_bvalid_i_1_n_0));
  FDCE s_axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_onehot_wstate[0]_i_2_n_0 ),
        .D(s_axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid));
  LUT6 #(
    .INIT(64'hBFBFFFBF80800080)) 
    s_axi_rlast_i_1
       (.I0(s_axi_rlast_i_2_n_0),
        .I1(s_axi_aresetn),
        .I2(\rstate_reg_n_0_[0] ),
        .I3(s_axi_rvalid_reg_0),
        .I4(s_axi_rready),
        .I5(s_axi_rlast),
        .O(s_axi_rlast_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    s_axi_rlast_i_2
       (.I0(\rburst_cnt[6]_i_2_n_0 ),
        .I1(rburst_cnt[6]),
        .I2(rburst_cnt[7]),
        .I3(rburst_cnt[5]),
        .I4(rburst_cnt[4]),
        .O(s_axi_rlast_i_2_n_0));
  FDRE s_axi_rlast_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rlast_i_1_n_0),
        .Q(s_axi_rlast),
        .R(1'b0));
  FDCE s_axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_onehot_wstate[0]_i_2_n_0 ),
        .D(\rstate_reg_n_0_[0] ),
        .Q(s_axi_rvalid_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 waddr_cur0_carry
       (.CI(1'b0),
        .CO({waddr_cur0_carry_n_0,waddr_cur0_carry_n_1,waddr_cur0_carry_n_2,waddr_cur0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_0_in[0],1'b0}),
        .O(in8[4:1]),
        .S({p_0_in[2:1],waddr_cur0_carry_i_1_n_0,waddr_cur}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 waddr_cur0_carry__0
       (.CI(waddr_cur0_carry_n_0),
        .CO({waddr_cur0_carry__0_n_0,waddr_cur0_carry__0_n_1,waddr_cur0_carry__0_n_2,waddr_cur0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[8:5]),
        .S(p_0_in[6:3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 waddr_cur0_carry__1
       (.CI(waddr_cur0_carry__0_n_0),
        .CO({waddr_cur0_carry__1_n_0,waddr_cur0_carry__1_n_1,waddr_cur0_carry__1_n_2,waddr_cur0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[12:9]),
        .S(p_0_in[10:7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 waddr_cur0_carry__2
       (.CI(waddr_cur0_carry__1_n_0),
        .CO({NLW_waddr_cur0_carry__2_CO_UNCONNECTED[3:2],waddr_cur0_carry__2_n_2,waddr_cur0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_waddr_cur0_carry__2_O_UNCONNECTED[3],in8[15:13]}),
        .S({1'b0,p_0_in[13:11]}));
  LUT1 #(
    .INIT(2'h1)) 
    waddr_cur0_carry_i_1
       (.I0(p_0_in[0]),
        .O(waddr_cur0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    \waddr_cur[10]_i_1 
       (.I0(in8[10]),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_awaddr[9]),
        .I3(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\waddr_cur[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \waddr_cur[11]_i_1 
       (.I0(in8[11]),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_awaddr[10]),
        .I3(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\waddr_cur[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \waddr_cur[12]_i_1 
       (.I0(in8[12]),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_awaddr[11]),
        .I3(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\waddr_cur[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \waddr_cur[13]_i_1 
       (.I0(in8[13]),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_awaddr[12]),
        .I3(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\waddr_cur[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \waddr_cur[14]_i_1 
       (.I0(in8[14]),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_awaddr[13]),
        .I3(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\waddr_cur[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \waddr_cur[15]_i_1 
       (.I0(s_axi_aresetn),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .I4(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\waddr_cur[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \waddr_cur[15]_i_2 
       (.I0(in8[15]),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_awaddr[14]),
        .I3(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\waddr_cur[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \waddr_cur[1]_i_1 
       (.I0(in8[1]),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_awaddr[0]),
        .I3(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\waddr_cur[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \waddr_cur[2]_i_1 
       (.I0(in8[2]),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_awaddr[1]),
        .I3(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\waddr_cur[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \waddr_cur[3]_i_1 
       (.I0(in8[3]),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_awaddr[2]),
        .I3(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\waddr_cur[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \waddr_cur[4]_i_1 
       (.I0(in8[4]),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_awaddr[3]),
        .I3(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\waddr_cur[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \waddr_cur[5]_i_1 
       (.I0(in8[5]),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_awaddr[4]),
        .I3(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\waddr_cur[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \waddr_cur[6]_i_1 
       (.I0(in8[6]),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_awaddr[5]),
        .I3(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\waddr_cur[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \waddr_cur[7]_i_1 
       (.I0(in8[7]),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_awaddr[6]),
        .I3(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\waddr_cur[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \waddr_cur[8]_i_1 
       (.I0(in8[8]),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_awaddr[7]),
        .I3(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\waddr_cur[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \waddr_cur[9]_i_1 
       (.I0(in8[9]),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_awaddr[8]),
        .I3(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\waddr_cur[9]_i_1_n_0 ));
  FDRE \waddr_cur_reg[10] 
       (.C(s_axi_aclk),
        .CE(\waddr_cur[15]_i_1_n_0 ),
        .D(\waddr_cur[10]_i_1_n_0 ),
        .Q(p_0_in[8]),
        .R(1'b0));
  FDRE \waddr_cur_reg[11] 
       (.C(s_axi_aclk),
        .CE(\waddr_cur[15]_i_1_n_0 ),
        .D(\waddr_cur[11]_i_1_n_0 ),
        .Q(p_0_in[9]),
        .R(1'b0));
  FDRE \waddr_cur_reg[12] 
       (.C(s_axi_aclk),
        .CE(\waddr_cur[15]_i_1_n_0 ),
        .D(\waddr_cur[12]_i_1_n_0 ),
        .Q(p_0_in[10]),
        .R(1'b0));
  FDRE \waddr_cur_reg[13] 
       (.C(s_axi_aclk),
        .CE(\waddr_cur[15]_i_1_n_0 ),
        .D(\waddr_cur[13]_i_1_n_0 ),
        .Q(p_0_in[11]),
        .R(1'b0));
  FDRE \waddr_cur_reg[14] 
       (.C(s_axi_aclk),
        .CE(\waddr_cur[15]_i_1_n_0 ),
        .D(\waddr_cur[14]_i_1_n_0 ),
        .Q(p_0_in[12]),
        .R(1'b0));
  FDRE \waddr_cur_reg[15] 
       (.C(s_axi_aclk),
        .CE(\waddr_cur[15]_i_1_n_0 ),
        .D(\waddr_cur[15]_i_2_n_0 ),
        .Q(p_0_in[13]),
        .R(1'b0));
  FDRE \waddr_cur_reg[1] 
       (.C(s_axi_aclk),
        .CE(\waddr_cur[15]_i_1_n_0 ),
        .D(\waddr_cur[1]_i_1_n_0 ),
        .Q(waddr_cur),
        .R(1'b0));
  FDRE \waddr_cur_reg[2] 
       (.C(s_axi_aclk),
        .CE(\waddr_cur[15]_i_1_n_0 ),
        .D(\waddr_cur[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \waddr_cur_reg[3] 
       (.C(s_axi_aclk),
        .CE(\waddr_cur[15]_i_1_n_0 ),
        .D(\waddr_cur[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \waddr_cur_reg[4] 
       (.C(s_axi_aclk),
        .CE(\waddr_cur[15]_i_1_n_0 ),
        .D(\waddr_cur[4]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \waddr_cur_reg[5] 
       (.C(s_axi_aclk),
        .CE(\waddr_cur[15]_i_1_n_0 ),
        .D(\waddr_cur[5]_i_1_n_0 ),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \waddr_cur_reg[6] 
       (.C(s_axi_aclk),
        .CE(\waddr_cur[15]_i_1_n_0 ),
        .D(\waddr_cur[6]_i_1_n_0 ),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE \waddr_cur_reg[7] 
       (.C(s_axi_aclk),
        .CE(\waddr_cur[15]_i_1_n_0 ),
        .D(\waddr_cur[7]_i_1_n_0 ),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE \waddr_cur_reg[8] 
       (.C(s_axi_aclk),
        .CE(\waddr_cur[15]_i_1_n_0 ),
        .D(\waddr_cur[8]_i_1_n_0 ),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE \waddr_cur_reg[9] 
       (.C(s_axi_aclk),
        .CE(\waddr_cur[15]_i_1_n_0 ),
        .D(\waddr_cur[9]_i_1_n_0 ),
        .Q(p_0_in[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF444)) 
    \wburst_cnt[0]_i_1 
       (.I0(wburst_cnt[0]),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_awlen[0]),
        .I3(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\wburst_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF909090)) 
    \wburst_cnt[1]_i_1 
       (.I0(wburst_cnt[0]),
        .I1(wburst_cnt[1]),
        .I2(\FSM_onehot_wstate_reg[1]_0 ),
        .I3(s_axi_awlen[1]),
        .I4(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\wburst_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA900A900A900)) 
    \wburst_cnt[2]_i_1 
       (.I0(wburst_cnt[2]),
        .I1(wburst_cnt[1]),
        .I2(wburst_cnt[0]),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .I4(s_axi_awlen[2]),
        .I5(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\wburst_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA600A600A600)) 
    \wburst_cnt[3]_i_1 
       (.I0(wburst_cnt[3]),
        .I1(\wburst_cnt[3]_i_2_n_0 ),
        .I2(wburst_cnt[2]),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .I4(s_axi_awlen[3]),
        .I5(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\wburst_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \wburst_cnt[3]_i_2 
       (.I0(wburst_cnt[0]),
        .I1(wburst_cnt[1]),
        .O(\wburst_cnt[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF606060)) 
    \wburst_cnt[4]_i_1 
       (.I0(wburst_cnt[4]),
        .I1(\wburst_cnt[4]_i_2_n_0 ),
        .I2(\FSM_onehot_wstate_reg[1]_0 ),
        .I3(s_axi_awlen[4]),
        .I4(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\wburst_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \wburst_cnt[4]_i_2 
       (.I0(wburst_cnt[1]),
        .I1(wburst_cnt[0]),
        .I2(wburst_cnt[3]),
        .I3(wburst_cnt[2]),
        .O(\wburst_cnt[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF909090)) 
    \wburst_cnt[5]_i_1 
       (.I0(wburst_cnt[5]),
        .I1(\wburst_cnt[5]_i_2_n_0 ),
        .I2(\FSM_onehot_wstate_reg[1]_0 ),
        .I3(s_axi_awlen[5]),
        .I4(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\wburst_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \wburst_cnt[5]_i_2 
       (.I0(wburst_cnt[4]),
        .I1(wburst_cnt[2]),
        .I2(wburst_cnt[3]),
        .I3(wburst_cnt[0]),
        .I4(wburst_cnt[1]),
        .O(\wburst_cnt[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF909090)) 
    \wburst_cnt[6]_i_1 
       (.I0(wburst_cnt[6]),
        .I1(\wburst_cnt[7]_i_3_n_0 ),
        .I2(\FSM_onehot_wstate_reg[1]_0 ),
        .I3(s_axi_awlen[6]),
        .I4(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\wburst_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAA8AAA8)) 
    \wburst_cnt[7]_i_1 
       (.I0(\waddr_cur[15]_i_1_n_0 ),
        .I1(wburst_cnt[7]),
        .I2(\wburst_cnt[7]_i_3_n_0 ),
        .I3(wburst_cnt[6]),
        .I4(s_axi_awvalid),
        .I5(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\wburst_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA900A900A900)) 
    \wburst_cnt[7]_i_2 
       (.I0(wburst_cnt[7]),
        .I1(\wburst_cnt[7]_i_3_n_0 ),
        .I2(wburst_cnt[6]),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .I4(s_axi_awlen[7]),
        .I5(\FSM_onehot_wstate_reg[0]_0 ),
        .O(\wburst_cnt[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wburst_cnt[7]_i_3 
       (.I0(wburst_cnt[5]),
        .I1(wburst_cnt[1]),
        .I2(wburst_cnt[0]),
        .I3(wburst_cnt[3]),
        .I4(wburst_cnt[2]),
        .I5(wburst_cnt[4]),
        .O(\wburst_cnt[7]_i_3_n_0 ));
  FDRE \wburst_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\wburst_cnt[7]_i_1_n_0 ),
        .D(\wburst_cnt[0]_i_1_n_0 ),
        .Q(wburst_cnt[0]),
        .R(1'b0));
  FDRE \wburst_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\wburst_cnt[7]_i_1_n_0 ),
        .D(\wburst_cnt[1]_i_1_n_0 ),
        .Q(wburst_cnt[1]),
        .R(1'b0));
  FDRE \wburst_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\wburst_cnt[7]_i_1_n_0 ),
        .D(\wburst_cnt[2]_i_1_n_0 ),
        .Q(wburst_cnt[2]),
        .R(1'b0));
  FDRE \wburst_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\wburst_cnt[7]_i_1_n_0 ),
        .D(\wburst_cnt[3]_i_1_n_0 ),
        .Q(wburst_cnt[3]),
        .R(1'b0));
  FDRE \wburst_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(\wburst_cnt[7]_i_1_n_0 ),
        .D(\wburst_cnt[4]_i_1_n_0 ),
        .Q(wburst_cnt[4]),
        .R(1'b0));
  FDRE \wburst_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(\wburst_cnt[7]_i_1_n_0 ),
        .D(\wburst_cnt[5]_i_1_n_0 ),
        .Q(wburst_cnt[5]),
        .R(1'b0));
  FDRE \wburst_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(\wburst_cnt[7]_i_1_n_0 ),
        .D(\wburst_cnt[6]_i_1_n_0 ),
        .Q(wburst_cnt[6]),
        .R(1'b0));
  FDRE \wburst_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(\wburst_cnt[7]_i_1_n_0 ),
        .D(\wburst_cnt[7]_i_2_n_0 ),
        .Q(wburst_cnt[7]),
        .R(1'b0));
endmodule
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

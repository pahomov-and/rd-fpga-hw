-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Sat Oct  3 01:25:52 2026
-- Host        : fedora running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/tymbys/home/FPGA/course/courses/robot-dreams/hw/hw05_lesson12/vivado/frame_dma/frame_dma.srcs/sources_1/bd/design_1/ip/design_1_axi4_full_ram_0_0/design_1_axi4_full_ram_0_0_sim_netlist.vhdl
-- Design      : design_1_axi4_full_ram_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_full_ram_0_0_axi4_full_ram is
  port (
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_wstate_reg[0]_0\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rvalid_reg_0 : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4_full_ram_0_0_axi4_full_ram : entity is "axi4_full_ram";
end design_1_axi4_full_ram_0_0_axi4_full_ram;

architecture STRUCTURE of design_1_axi4_full_ram_0_0_axi4_full_ram is
  signal \FSM_onehot_wstate[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_rep_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[0]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate_reg[1]_rep_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate_reg_n_0_[2]\ : STD_LOGIC;
  signal in8 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal mem_re : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal raddr_cur : STD_LOGIC_VECTOR ( 1 to 1 );
  signal raddr_cur0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \raddr_cur0_carry__0_n_0\ : STD_LOGIC;
  signal \raddr_cur0_carry__0_n_1\ : STD_LOGIC;
  signal \raddr_cur0_carry__0_n_2\ : STD_LOGIC;
  signal \raddr_cur0_carry__0_n_3\ : STD_LOGIC;
  signal \raddr_cur0_carry__1_n_0\ : STD_LOGIC;
  signal \raddr_cur0_carry__1_n_1\ : STD_LOGIC;
  signal \raddr_cur0_carry__1_n_2\ : STD_LOGIC;
  signal \raddr_cur0_carry__1_n_3\ : STD_LOGIC;
  signal \raddr_cur0_carry__2_n_2\ : STD_LOGIC;
  signal \raddr_cur0_carry__2_n_3\ : STD_LOGIC;
  signal raddr_cur0_carry_i_1_n_0 : STD_LOGIC;
  signal raddr_cur0_carry_n_0 : STD_LOGIC;
  signal raddr_cur0_carry_n_1 : STD_LOGIC;
  signal raddr_cur0_carry_n_2 : STD_LOGIC;
  signal raddr_cur0_carry_n_3 : STD_LOGIC;
  signal \raddr_cur[10]_i_1_n_0\ : STD_LOGIC;
  signal \raddr_cur[11]_i_1_n_0\ : STD_LOGIC;
  signal \raddr_cur[12]_i_1_n_0\ : STD_LOGIC;
  signal \raddr_cur[13]_i_1_n_0\ : STD_LOGIC;
  signal \raddr_cur[14]_i_1_n_0\ : STD_LOGIC;
  signal \raddr_cur[15]_i_1_n_0\ : STD_LOGIC;
  signal \raddr_cur[1]_i_1_n_0\ : STD_LOGIC;
  signal \raddr_cur[2]_i_1_n_0\ : STD_LOGIC;
  signal \raddr_cur[3]_i_1_n_0\ : STD_LOGIC;
  signal \raddr_cur[4]_i_1_n_0\ : STD_LOGIC;
  signal \raddr_cur[5]_i_1_n_0\ : STD_LOGIC;
  signal \raddr_cur[6]_i_1_n_0\ : STD_LOGIC;
  signal \raddr_cur[7]_i_1_n_0\ : STD_LOGIC;
  signal \raddr_cur[8]_i_1_n_0\ : STD_LOGIC;
  signal \raddr_cur[9]_i_1_n_0\ : STD_LOGIC;
  signal raddr_cur_0 : STD_LOGIC;
  signal rburst_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rburst_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \rburst_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \rburst_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \rburst_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \rburst_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \rburst_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \rburst_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \rburst_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \rburst_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \rburst_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \rstate[0]_i_1_n_0\ : STD_LOGIC;
  signal \rstate_reg_n_0_[0]\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rlast\ : STD_LOGIC;
  signal s_axi_rlast_i_1_n_0 : STD_LOGIC;
  signal s_axi_rlast_i_2_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_reg_0\ : STD_LOGIC;
  signal waddr_cur : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \waddr_cur0_carry__0_n_0\ : STD_LOGIC;
  signal \waddr_cur0_carry__0_n_1\ : STD_LOGIC;
  signal \waddr_cur0_carry__0_n_2\ : STD_LOGIC;
  signal \waddr_cur0_carry__0_n_3\ : STD_LOGIC;
  signal \waddr_cur0_carry__1_n_0\ : STD_LOGIC;
  signal \waddr_cur0_carry__1_n_1\ : STD_LOGIC;
  signal \waddr_cur0_carry__1_n_2\ : STD_LOGIC;
  signal \waddr_cur0_carry__1_n_3\ : STD_LOGIC;
  signal \waddr_cur0_carry__2_n_2\ : STD_LOGIC;
  signal \waddr_cur0_carry__2_n_3\ : STD_LOGIC;
  signal waddr_cur0_carry_i_1_n_0 : STD_LOGIC;
  signal waddr_cur0_carry_n_0 : STD_LOGIC;
  signal waddr_cur0_carry_n_1 : STD_LOGIC;
  signal waddr_cur0_carry_n_2 : STD_LOGIC;
  signal waddr_cur0_carry_n_3 : STD_LOGIC;
  signal \waddr_cur[10]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_cur[11]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_cur[12]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_cur[13]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_cur[14]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_cur[15]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_cur[15]_i_2_n_0\ : STD_LOGIC;
  signal \waddr_cur[1]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_cur[2]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_cur[3]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_cur[4]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_cur[5]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_cur[6]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_cur[7]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_cur[8]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_cur[9]_i_1_n_0\ : STD_LOGIC;
  signal wburst_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \wburst_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \wburst_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \wburst_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \wburst_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \wburst_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \wburst_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \wburst_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \wburst_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \wburst_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \wburst_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \wburst_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \wburst_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \wburst_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_mem_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_mem_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_10_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_10_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_10_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_10_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_10_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_10_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_10_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_10_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_mem_reg_10_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_10_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_10_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_10_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_11_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_11_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_11_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_11_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_11_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_11_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_11_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_11_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_mem_reg_11_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_11_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_11_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_11_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_12_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_12_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_12_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_12_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_12_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_12_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_12_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_12_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_mem_reg_12_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_12_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_12_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_12_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_13_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_13_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_13_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_13_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_13_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_13_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_13_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_13_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_mem_reg_13_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_13_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_13_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_13_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_14_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_14_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_14_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_14_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_14_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_14_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_14_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_14_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_mem_reg_14_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_14_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_14_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_14_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_15_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_15_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_15_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_15_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_15_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_15_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_15_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_15_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_mem_reg_15_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_15_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_15_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_15_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_2_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_mem_reg_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_3_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_3_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_mem_reg_3_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_3_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_4_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_4_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_4_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_4_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_4_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_4_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_mem_reg_4_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_4_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_5_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_5_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_5_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_5_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_mem_reg_5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_6_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_6_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_6_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_6_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_6_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_6_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_mem_reg_6_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_6_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_7_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_7_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_7_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_7_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_7_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_7_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_mem_reg_7_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_7_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_8_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_8_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_8_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_8_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_8_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_8_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_8_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_8_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_mem_reg_8_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_8_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_8_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_8_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_9_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_9_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_9_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_9_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_9_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_9_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_9_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_9_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_mem_reg_9_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_9_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_9_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_9_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_raddr_cur0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_raddr_cur0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_waddr_cur0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_waddr_cur0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_wstate[0]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_wstate[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_wstate[2]_i_1\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[0]\ : label is "WRIDLE:001,WRDATA:010,WRRESP:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRIDLE:001,WRDATA:010,WRRESP:100,";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \FSM_onehot_wstate_reg[1]\ : label is "FSM_onehot_wstate_reg[1]";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]_rep\ : label is "WRIDLE:001,WRDATA:010,WRRESP:100,";
  attribute ORIG_CELL_NAME of \FSM_onehot_wstate_reg[1]_rep\ : label is "FSM_onehot_wstate_reg[1]";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRIDLE:001,WRDATA:010,WRRESP:100,";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0 : label is 524288;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0 : label is "design_1_axi4_full_ram_0_0/inst/mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of mem_reg_0 : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0 : label is 16383;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0 : label is 1;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_1 : label is 524288;
  attribute RTL_RAM_NAME of mem_reg_1 : label is "design_1_axi4_full_ram_0_0/inst/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_1 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_1 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_1 : label is 0;
  attribute ram_addr_end of mem_reg_1 : label is 16383;
  attribute ram_offset of mem_reg_1 : label is 0;
  attribute ram_slice_begin of mem_reg_1 : label is 2;
  attribute ram_slice_end of mem_reg_1 : label is 3;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_10 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_10 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_10 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_10 : label is 524288;
  attribute RTL_RAM_NAME of mem_reg_10 : label is "design_1_axi4_full_ram_0_0/inst/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_10 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_10 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_10 : label is 0;
  attribute ram_addr_end of mem_reg_10 : label is 16383;
  attribute ram_offset of mem_reg_10 : label is 0;
  attribute ram_slice_begin of mem_reg_10 : label is 20;
  attribute ram_slice_end of mem_reg_10 : label is 21;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_11 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_11 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_11 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_11 : label is 524288;
  attribute RTL_RAM_NAME of mem_reg_11 : label is "design_1_axi4_full_ram_0_0/inst/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_11 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_11 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_11 : label is 0;
  attribute ram_addr_end of mem_reg_11 : label is 16383;
  attribute ram_offset of mem_reg_11 : label is 0;
  attribute ram_slice_begin of mem_reg_11 : label is 22;
  attribute ram_slice_end of mem_reg_11 : label is 23;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_12 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_12 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_12 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_12 : label is 524288;
  attribute RTL_RAM_NAME of mem_reg_12 : label is "design_1_axi4_full_ram_0_0/inst/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_12 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_12 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_12 : label is 0;
  attribute ram_addr_end of mem_reg_12 : label is 16383;
  attribute ram_offset of mem_reg_12 : label is 0;
  attribute ram_slice_begin of mem_reg_12 : label is 24;
  attribute ram_slice_end of mem_reg_12 : label is 25;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_13 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_13 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_13 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_13 : label is 524288;
  attribute RTL_RAM_NAME of mem_reg_13 : label is "design_1_axi4_full_ram_0_0/inst/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_13 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_13 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_13 : label is 0;
  attribute ram_addr_end of mem_reg_13 : label is 16383;
  attribute ram_offset of mem_reg_13 : label is 0;
  attribute ram_slice_begin of mem_reg_13 : label is 26;
  attribute ram_slice_end of mem_reg_13 : label is 27;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_14 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_14 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_14 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_14 : label is 524288;
  attribute RTL_RAM_NAME of mem_reg_14 : label is "design_1_axi4_full_ram_0_0/inst/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_14 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_14 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_14 : label is 0;
  attribute ram_addr_end of mem_reg_14 : label is 16383;
  attribute ram_offset of mem_reg_14 : label is 0;
  attribute ram_slice_begin of mem_reg_14 : label is 28;
  attribute ram_slice_end of mem_reg_14 : label is 29;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_15 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_15 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_15 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_15 : label is 524288;
  attribute RTL_RAM_NAME of mem_reg_15 : label is "design_1_axi4_full_ram_0_0/inst/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_15 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_15 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_15 : label is 0;
  attribute ram_addr_end of mem_reg_15 : label is 16383;
  attribute ram_offset of mem_reg_15 : label is 0;
  attribute ram_slice_begin of mem_reg_15 : label is 30;
  attribute ram_slice_end of mem_reg_15 : label is 31;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_2 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_2 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_2 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_2 : label is 524288;
  attribute RTL_RAM_NAME of mem_reg_2 : label is "design_1_axi4_full_ram_0_0/inst/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_2 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_2 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_2 : label is 0;
  attribute ram_addr_end of mem_reg_2 : label is 16383;
  attribute ram_offset of mem_reg_2 : label is 0;
  attribute ram_slice_begin of mem_reg_2 : label is 4;
  attribute ram_slice_end of mem_reg_2 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_3 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_3 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_3 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_3 : label is 524288;
  attribute RTL_RAM_NAME of mem_reg_3 : label is "design_1_axi4_full_ram_0_0/inst/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_3 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_3 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_3 : label is 0;
  attribute ram_addr_end of mem_reg_3 : label is 16383;
  attribute ram_offset of mem_reg_3 : label is 0;
  attribute ram_slice_begin of mem_reg_3 : label is 6;
  attribute ram_slice_end of mem_reg_3 : label is 7;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_4 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_4 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_4 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_4 : label is 524288;
  attribute RTL_RAM_NAME of mem_reg_4 : label is "design_1_axi4_full_ram_0_0/inst/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_4 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_4 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_4 : label is 0;
  attribute ram_addr_end of mem_reg_4 : label is 16383;
  attribute ram_offset of mem_reg_4 : label is 0;
  attribute ram_slice_begin of mem_reg_4 : label is 8;
  attribute ram_slice_end of mem_reg_4 : label is 9;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_5 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_5 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_5 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_5 : label is 524288;
  attribute RTL_RAM_NAME of mem_reg_5 : label is "design_1_axi4_full_ram_0_0/inst/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_5 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_5 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_5 : label is 0;
  attribute ram_addr_end of mem_reg_5 : label is 16383;
  attribute ram_offset of mem_reg_5 : label is 0;
  attribute ram_slice_begin of mem_reg_5 : label is 10;
  attribute ram_slice_end of mem_reg_5 : label is 11;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_6 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_6 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_6 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_6 : label is 524288;
  attribute RTL_RAM_NAME of mem_reg_6 : label is "design_1_axi4_full_ram_0_0/inst/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_6 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_6 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_6 : label is 0;
  attribute ram_addr_end of mem_reg_6 : label is 16383;
  attribute ram_offset of mem_reg_6 : label is 0;
  attribute ram_slice_begin of mem_reg_6 : label is 12;
  attribute ram_slice_end of mem_reg_6 : label is 13;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_7 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_7 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_7 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_7 : label is 524288;
  attribute RTL_RAM_NAME of mem_reg_7 : label is "design_1_axi4_full_ram_0_0/inst/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_7 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_7 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_7 : label is 0;
  attribute ram_addr_end of mem_reg_7 : label is 16383;
  attribute ram_offset of mem_reg_7 : label is 0;
  attribute ram_slice_begin of mem_reg_7 : label is 14;
  attribute ram_slice_end of mem_reg_7 : label is 15;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_8 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_8 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_8 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_8 : label is 524288;
  attribute RTL_RAM_NAME of mem_reg_8 : label is "design_1_axi4_full_ram_0_0/inst/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_8 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_8 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_8 : label is 0;
  attribute ram_addr_end of mem_reg_8 : label is 16383;
  attribute ram_offset of mem_reg_8 : label is 0;
  attribute ram_slice_begin of mem_reg_8 : label is 16;
  attribute ram_slice_end of mem_reg_8 : label is 17;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_9 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_9 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_9 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_9 : label is 524288;
  attribute RTL_RAM_NAME of mem_reg_9 : label is "design_1_axi4_full_ram_0_0/inst/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_9 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_9 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_9 : label is 0;
  attribute ram_addr_end of mem_reg_9 : label is 16383;
  attribute ram_offset of mem_reg_9 : label is 0;
  attribute ram_slice_begin of mem_reg_9 : label is 18;
  attribute ram_slice_end of mem_reg_9 : label is 19;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of raddr_cur0_carry : label is 35;
  attribute ADDER_THRESHOLD of \raddr_cur0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \raddr_cur0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \raddr_cur0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \raddr_cur[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \raddr_cur[11]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \raddr_cur[12]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \raddr_cur[13]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \raddr_cur[14]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \raddr_cur[15]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \raddr_cur[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \raddr_cur[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \raddr_cur[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \raddr_cur[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \raddr_cur[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \raddr_cur[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \raddr_cur[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \raddr_cur[9]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rburst_cnt[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rburst_cnt[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rburst_cnt[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of s_axi_bvalid_i_1 : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD of waddr_cur0_carry : label is 35;
  attribute ADDER_THRESHOLD of \waddr_cur0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \waddr_cur0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \waddr_cur0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \wburst_cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wburst_cnt[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wburst_cnt[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wburst_cnt[5]_i_2\ : label is "soft_lutpair0";
begin
  \FSM_onehot_wstate_reg[0]_0\ <= \^fsm_onehot_wstate_reg[0]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rlast <= \^s_axi_rlast\;
  s_axi_rvalid_reg_0 <= \^s_axi_rvalid_reg_0\;
\FSM_onehot_wstate[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_wstate_reg_n_0_[2]\,
      I1 => \FSM_onehot_wstate[0]_i_3_n_0\,
      I2 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \FSM_onehot_wstate[0]_i_1_n_0\
    );
\FSM_onehot_wstate[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \FSM_onehot_wstate[0]_i_2_n_0\
    );
\FSM_onehot_wstate[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01000000"
    )
        port map (
      I0 => wburst_cnt(7),
      I1 => \wburst_cnt[7]_i_3_n_0\,
      I2 => wburst_cnt(6),
      I3 => \^fsm_onehot_wstate_reg[1]_0\,
      I4 => s_axi_wvalid,
      I5 => \FSM_onehot_wstate[0]_i_4_n_0\,
      O => \FSM_onehot_wstate[0]_i_3_n_0\
    );
\FSM_onehot_wstate[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[0]_0\,
      I1 => s_axi_awvalid,
      I2 => \FSM_onehot_wstate_reg_n_0_[2]\,
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid\,
      O => \FSM_onehot_wstate[0]_i_4_n_0\
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[0]_0\,
      I1 => \FSM_onehot_wstate[0]_i_3_n_0\,
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      O => \FSM_onehot_wstate[1]_i_1_n_0\
    );
\FSM_onehot_wstate[1]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[0]_0\,
      I1 => \FSM_onehot_wstate[0]_i_3_n_0\,
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      O => \FSM_onehot_wstate[1]_rep_i_1_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => \FSM_onehot_wstate[0]_i_3_n_0\,
      I2 => \FSM_onehot_wstate_reg_n_0_[2]\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_wstate[0]_i_1_n_0\,
      PRE => \FSM_onehot_wstate[0]_i_2_n_0\,
      Q => \^fsm_onehot_wstate_reg[0]_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \FSM_onehot_wstate[0]_i_2_n_0\,
      D => \FSM_onehot_wstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\
    );
\FSM_onehot_wstate_reg[1]_rep\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \FSM_onehot_wstate[0]_i_2_n_0\,
      D => \FSM_onehot_wstate[1]_rep_i_1_n_0\,
      Q => \FSM_onehot_wstate_reg[1]_rep_n_0\
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \FSM_onehot_wstate[0]_i_2_n_0\,
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \FSM_onehot_wstate_reg_n_0_[2]\
    );
mem_reg_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => p_0_in(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => p_1_in(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_mem_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => s_axi_wdata(1 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_mem_reg_0_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => s_axi_rdata(1 downto 0),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_axi_wvalid,
      ENBWREN => mem_re,
      INJECTDBITERR => NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(2) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(1) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(0) => \^fsm_onehot_wstate_reg[1]_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => p_0_in(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => p_1_in(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_mem_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => s_axi_wdata(3 downto 2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_mem_reg_1_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => s_axi_rdata(3 downto 2),
      DOPADOP(3 downto 0) => NLW_mem_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_axi_wvalid,
      ENBWREN => mem_re,
      INJECTDBITERR => NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_1_SBITERR_UNCONNECTED,
      WEA(3) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(2) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(1) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(0) => \^fsm_onehot_wstate_reg[1]_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_10: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => p_0_in(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => p_1_in(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_10_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_10_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_mem_reg_10_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => s_axi_wdata(21 downto 20),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_10_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_mem_reg_10_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => s_axi_rdata(21 downto 20),
      DOPADOP(3 downto 0) => NLW_mem_reg_10_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_10_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_10_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_axi_wvalid,
      ENBWREN => mem_re,
      INJECTDBITERR => NLW_mem_reg_10_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_10_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_10_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_10_SBITERR_UNCONNECTED,
      WEA(3) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(2) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(1) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(0) => \^fsm_onehot_wstate_reg[1]_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_11: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => p_0_in(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => p_1_in(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_11_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_11_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_mem_reg_11_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => s_axi_wdata(23 downto 22),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_11_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_mem_reg_11_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => s_axi_rdata(23 downto 22),
      DOPADOP(3 downto 0) => NLW_mem_reg_11_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_11_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_11_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_axi_wvalid,
      ENBWREN => mem_re,
      INJECTDBITERR => NLW_mem_reg_11_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_11_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_11_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_11_SBITERR_UNCONNECTED,
      WEA(3) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(2) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(1) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(0) => \^fsm_onehot_wstate_reg[1]_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_12: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => p_0_in(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => p_1_in(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_12_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_12_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_mem_reg_12_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => s_axi_wdata(25 downto 24),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_12_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_mem_reg_12_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => s_axi_rdata(25 downto 24),
      DOPADOP(3 downto 0) => NLW_mem_reg_12_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_12_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_12_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_axi_wvalid,
      ENBWREN => mem_re,
      INJECTDBITERR => NLW_mem_reg_12_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_12_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_12_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_12_SBITERR_UNCONNECTED,
      WEA(3) => \FSM_onehot_wstate_reg[1]_rep_n_0\,
      WEA(2) => \FSM_onehot_wstate_reg[1]_rep_n_0\,
      WEA(1) => \FSM_onehot_wstate_reg[1]_rep_n_0\,
      WEA(0) => \FSM_onehot_wstate_reg[1]_rep_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_13: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => p_0_in(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => p_1_in(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_13_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_13_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_mem_reg_13_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => s_axi_wdata(27 downto 26),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_13_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_mem_reg_13_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => s_axi_rdata(27 downto 26),
      DOPADOP(3 downto 0) => NLW_mem_reg_13_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_13_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_13_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_axi_wvalid,
      ENBWREN => mem_re,
      INJECTDBITERR => NLW_mem_reg_13_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_13_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_13_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_13_SBITERR_UNCONNECTED,
      WEA(3) => \FSM_onehot_wstate_reg[1]_rep_n_0\,
      WEA(2) => \FSM_onehot_wstate_reg[1]_rep_n_0\,
      WEA(1) => \FSM_onehot_wstate_reg[1]_rep_n_0\,
      WEA(0) => \FSM_onehot_wstate_reg[1]_rep_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_14: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => p_0_in(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => p_1_in(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_14_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_14_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_mem_reg_14_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => s_axi_wdata(29 downto 28),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_14_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_mem_reg_14_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => s_axi_rdata(29 downto 28),
      DOPADOP(3 downto 0) => NLW_mem_reg_14_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_14_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_14_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_axi_wvalid,
      ENBWREN => mem_re,
      INJECTDBITERR => NLW_mem_reg_14_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_14_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_14_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_14_SBITERR_UNCONNECTED,
      WEA(3) => \FSM_onehot_wstate_reg[1]_rep_n_0\,
      WEA(2) => \FSM_onehot_wstate_reg[1]_rep_n_0\,
      WEA(1) => \FSM_onehot_wstate_reg[1]_rep_n_0\,
      WEA(0) => \FSM_onehot_wstate_reg[1]_rep_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_15: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => p_0_in(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => p_1_in(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_15_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_15_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_mem_reg_15_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => s_axi_wdata(31 downto 30),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_15_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_mem_reg_15_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => s_axi_rdata(31 downto 30),
      DOPADOP(3 downto 0) => NLW_mem_reg_15_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_15_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_15_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_axi_wvalid,
      ENBWREN => mem_re,
      INJECTDBITERR => NLW_mem_reg_15_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_15_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_15_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_15_SBITERR_UNCONNECTED,
      WEA(3) => \FSM_onehot_wstate_reg[1]_rep_n_0\,
      WEA(2) => \FSM_onehot_wstate_reg[1]_rep_n_0\,
      WEA(1) => \FSM_onehot_wstate_reg[1]_rep_n_0\,
      WEA(0) => \FSM_onehot_wstate_reg[1]_rep_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_15_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => \rstate_reg_n_0_[0]\,
      I1 => \^s_axi_rvalid_reg_0\,
      I2 => s_axi_rready,
      O => mem_re
    );
mem_reg_2: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => p_0_in(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => p_1_in(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_2_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_2_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_mem_reg_2_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => s_axi_wdata(5 downto 4),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_2_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_mem_reg_2_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => s_axi_rdata(5 downto 4),
      DOPADOP(3 downto 0) => NLW_mem_reg_2_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_2_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_axi_wvalid,
      ENBWREN => mem_re,
      INJECTDBITERR => NLW_mem_reg_2_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_2_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_2_SBITERR_UNCONNECTED,
      WEA(3) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(2) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(1) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(0) => \^fsm_onehot_wstate_reg[1]_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_3: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => p_0_in(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => p_1_in(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_3_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_3_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_mem_reg_3_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => s_axi_wdata(7 downto 6),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_3_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_mem_reg_3_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => s_axi_rdata(7 downto 6),
      DOPADOP(3 downto 0) => NLW_mem_reg_3_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_3_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_axi_wvalid,
      ENBWREN => mem_re,
      INJECTDBITERR => NLW_mem_reg_3_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_3_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_3_SBITERR_UNCONNECTED,
      WEA(3) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(2) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(1) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(0) => \^fsm_onehot_wstate_reg[1]_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_4: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => p_0_in(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => p_1_in(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_4_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_4_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_mem_reg_4_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => s_axi_wdata(9 downto 8),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_4_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_mem_reg_4_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => s_axi_rdata(9 downto 8),
      DOPADOP(3 downto 0) => NLW_mem_reg_4_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_4_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_axi_wvalid,
      ENBWREN => mem_re,
      INJECTDBITERR => NLW_mem_reg_4_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_4_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_4_SBITERR_UNCONNECTED,
      WEA(3) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(2) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(1) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(0) => \^fsm_onehot_wstate_reg[1]_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_5: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => p_0_in(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => p_1_in(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_5_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_5_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_mem_reg_5_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => s_axi_wdata(11 downto 10),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_5_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_mem_reg_5_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => s_axi_rdata(11 downto 10),
      DOPADOP(3 downto 0) => NLW_mem_reg_5_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_5_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_axi_wvalid,
      ENBWREN => mem_re,
      INJECTDBITERR => NLW_mem_reg_5_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_5_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_5_SBITERR_UNCONNECTED,
      WEA(3) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(2) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(1) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(0) => \^fsm_onehot_wstate_reg[1]_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_6: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => p_0_in(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => p_1_in(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_6_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_6_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_mem_reg_6_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => s_axi_wdata(13 downto 12),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_6_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_mem_reg_6_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => s_axi_rdata(13 downto 12),
      DOPADOP(3 downto 0) => NLW_mem_reg_6_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_6_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_axi_wvalid,
      ENBWREN => mem_re,
      INJECTDBITERR => NLW_mem_reg_6_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_6_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_6_SBITERR_UNCONNECTED,
      WEA(3) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(2) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(1) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(0) => \^fsm_onehot_wstate_reg[1]_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_7: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => p_0_in(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => p_1_in(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_7_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_7_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_mem_reg_7_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => s_axi_wdata(15 downto 14),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_7_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_mem_reg_7_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => s_axi_rdata(15 downto 14),
      DOPADOP(3 downto 0) => NLW_mem_reg_7_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_7_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_axi_wvalid,
      ENBWREN => mem_re,
      INJECTDBITERR => NLW_mem_reg_7_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_7_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_7_SBITERR_UNCONNECTED,
      WEA(3) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(2) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(1) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(0) => \^fsm_onehot_wstate_reg[1]_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_8: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => p_0_in(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => p_1_in(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_8_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_8_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_mem_reg_8_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => s_axi_wdata(17 downto 16),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_8_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_mem_reg_8_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => s_axi_rdata(17 downto 16),
      DOPADOP(3 downto 0) => NLW_mem_reg_8_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_8_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_8_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_axi_wvalid,
      ENBWREN => mem_re,
      INJECTDBITERR => NLW_mem_reg_8_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_8_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_8_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_8_SBITERR_UNCONNECTED,
      WEA(3) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(2) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(1) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(0) => \^fsm_onehot_wstate_reg[1]_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_9: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 1) => p_0_in(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => p_1_in(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_9_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_9_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_mem_reg_9_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => s_axi_wdata(19 downto 18),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_9_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_mem_reg_9_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => s_axi_rdata(19 downto 18),
      DOPADOP(3 downto 0) => NLW_mem_reg_9_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_9_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_9_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_axi_wvalid,
      ENBWREN => mem_re,
      INJECTDBITERR => NLW_mem_reg_9_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_9_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_9_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_9_SBITERR_UNCONNECTED,
      WEA(3) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(2) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(1) => \^fsm_onehot_wstate_reg[1]_0\,
      WEA(0) => \^fsm_onehot_wstate_reg[1]_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
raddr_cur0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => raddr_cur0_carry_n_0,
      CO(2) => raddr_cur0_carry_n_1,
      CO(1) => raddr_cur0_carry_n_2,
      CO(0) => raddr_cur0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => p_1_in(0),
      DI(0) => '0',
      O(3 downto 0) => raddr_cur0(4 downto 1),
      S(3 downto 2) => p_1_in(2 downto 1),
      S(1) => raddr_cur0_carry_i_1_n_0,
      S(0) => raddr_cur(1)
    );
\raddr_cur0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => raddr_cur0_carry_n_0,
      CO(3) => \raddr_cur0_carry__0_n_0\,
      CO(2) => \raddr_cur0_carry__0_n_1\,
      CO(1) => \raddr_cur0_carry__0_n_2\,
      CO(0) => \raddr_cur0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => raddr_cur0(8 downto 5),
      S(3 downto 0) => p_1_in(6 downto 3)
    );
\raddr_cur0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \raddr_cur0_carry__0_n_0\,
      CO(3) => \raddr_cur0_carry__1_n_0\,
      CO(2) => \raddr_cur0_carry__1_n_1\,
      CO(1) => \raddr_cur0_carry__1_n_2\,
      CO(0) => \raddr_cur0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => raddr_cur0(12 downto 9),
      S(3 downto 0) => p_1_in(10 downto 7)
    );
\raddr_cur0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \raddr_cur0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_raddr_cur0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \raddr_cur0_carry__2_n_2\,
      CO(0) => \raddr_cur0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_raddr_cur0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => raddr_cur0(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => p_1_in(13 downto 11)
    );
raddr_cur0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_1_in(0),
      O => raddr_cur0_carry_i_1_n_0
    );
\raddr_cur[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => raddr_cur0(10),
      I1 => \rstate_reg_n_0_[0]\,
      I2 => s_axi_araddr(9),
      O => \raddr_cur[10]_i_1_n_0\
    );
\raddr_cur[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => raddr_cur0(11),
      I1 => \rstate_reg_n_0_[0]\,
      I2 => s_axi_araddr(10),
      O => \raddr_cur[11]_i_1_n_0\
    );
\raddr_cur[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => raddr_cur0(12),
      I1 => \rstate_reg_n_0_[0]\,
      I2 => s_axi_araddr(11),
      O => \raddr_cur[12]_i_1_n_0\
    );
\raddr_cur[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => raddr_cur0(13),
      I1 => \rstate_reg_n_0_[0]\,
      I2 => s_axi_araddr(12),
      O => \raddr_cur[13]_i_1_n_0\
    );
\raddr_cur[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => raddr_cur0(14),
      I1 => \rstate_reg_n_0_[0]\,
      I2 => s_axi_araddr(13),
      O => \raddr_cur[14]_i_1_n_0\
    );
\raddr_cur[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => raddr_cur0(15),
      I1 => \rstate_reg_n_0_[0]\,
      I2 => s_axi_araddr(14),
      O => \raddr_cur[15]_i_1_n_0\
    );
\raddr_cur[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => raddr_cur0(1),
      I1 => \rstate_reg_n_0_[0]\,
      I2 => s_axi_araddr(0),
      O => \raddr_cur[1]_i_1_n_0\
    );
\raddr_cur[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => raddr_cur0(2),
      I1 => \rstate_reg_n_0_[0]\,
      I2 => s_axi_araddr(1),
      O => \raddr_cur[2]_i_1_n_0\
    );
\raddr_cur[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => raddr_cur0(3),
      I1 => \rstate_reg_n_0_[0]\,
      I2 => s_axi_araddr(2),
      O => \raddr_cur[3]_i_1_n_0\
    );
\raddr_cur[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => raddr_cur0(4),
      I1 => \rstate_reg_n_0_[0]\,
      I2 => s_axi_araddr(3),
      O => \raddr_cur[4]_i_1_n_0\
    );
\raddr_cur[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => raddr_cur0(5),
      I1 => \rstate_reg_n_0_[0]\,
      I2 => s_axi_araddr(4),
      O => \raddr_cur[5]_i_1_n_0\
    );
\raddr_cur[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => raddr_cur0(6),
      I1 => \rstate_reg_n_0_[0]\,
      I2 => s_axi_araddr(5),
      O => \raddr_cur[6]_i_1_n_0\
    );
\raddr_cur[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => raddr_cur0(7),
      I1 => \rstate_reg_n_0_[0]\,
      I2 => s_axi_araddr(6),
      O => \raddr_cur[7]_i_1_n_0\
    );
\raddr_cur[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => raddr_cur0(8),
      I1 => \rstate_reg_n_0_[0]\,
      I2 => s_axi_araddr(7),
      O => \raddr_cur[8]_i_1_n_0\
    );
\raddr_cur[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => raddr_cur0(9),
      I1 => \rstate_reg_n_0_[0]\,
      I2 => s_axi_araddr(8),
      O => \raddr_cur[9]_i_1_n_0\
    );
\raddr_cur_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \raddr_cur[10]_i_1_n_0\,
      Q => p_1_in(8),
      R => '0'
    );
\raddr_cur_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \raddr_cur[11]_i_1_n_0\,
      Q => p_1_in(9),
      R => '0'
    );
\raddr_cur_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \raddr_cur[12]_i_1_n_0\,
      Q => p_1_in(10),
      R => '0'
    );
\raddr_cur_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \raddr_cur[13]_i_1_n_0\,
      Q => p_1_in(11),
      R => '0'
    );
\raddr_cur_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \raddr_cur[14]_i_1_n_0\,
      Q => p_1_in(12),
      R => '0'
    );
\raddr_cur_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \raddr_cur[15]_i_1_n_0\,
      Q => p_1_in(13),
      R => '0'
    );
\raddr_cur_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \raddr_cur[1]_i_1_n_0\,
      Q => raddr_cur(1),
      R => '0'
    );
\raddr_cur_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \raddr_cur[2]_i_1_n_0\,
      Q => p_1_in(0),
      R => '0'
    );
\raddr_cur_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \raddr_cur[3]_i_1_n_0\,
      Q => p_1_in(1),
      R => '0'
    );
\raddr_cur_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \raddr_cur[4]_i_1_n_0\,
      Q => p_1_in(2),
      R => '0'
    );
\raddr_cur_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \raddr_cur[5]_i_1_n_0\,
      Q => p_1_in(3),
      R => '0'
    );
\raddr_cur_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \raddr_cur[6]_i_1_n_0\,
      Q => p_1_in(4),
      R => '0'
    );
\raddr_cur_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \raddr_cur[7]_i_1_n_0\,
      Q => p_1_in(5),
      R => '0'
    );
\raddr_cur_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \raddr_cur[8]_i_1_n_0\,
      Q => p_1_in(6),
      R => '0'
    );
\raddr_cur_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \raddr_cur[9]_i_1_n_0\,
      Q => p_1_in(7),
      R => '0'
    );
\rburst_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => rburst_cnt(0),
      I1 => \rstate_reg_n_0_[0]\,
      I2 => s_axi_arlen(0),
      O => \rburst_cnt[0]_i_1_n_0\
    );
\rburst_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => rburst_cnt(1),
      I1 => rburst_cnt(0),
      I2 => \rstate_reg_n_0_[0]\,
      I3 => s_axi_arlen(1),
      O => \rburst_cnt[1]_i_1_n_0\
    );
\rburst_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1FFE100"
    )
        port map (
      I0 => rburst_cnt(1),
      I1 => rburst_cnt(0),
      I2 => rburst_cnt(2),
      I3 => \rstate_reg_n_0_[0]\,
      I4 => s_axi_arlen(2),
      O => \rburst_cnt[2]_i_1_n_0\
    );
\rburst_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9FFFFAAA90000"
    )
        port map (
      I0 => rburst_cnt(3),
      I1 => rburst_cnt(1),
      I2 => rburst_cnt(0),
      I3 => rburst_cnt(2),
      I4 => \rstate_reg_n_0_[0]\,
      I5 => s_axi_arlen(3),
      O => \rburst_cnt[3]_i_1_n_0\
    );
\rburst_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => rburst_cnt(4),
      I1 => \rburst_cnt[6]_i_2_n_0\,
      I2 => \rstate_reg_n_0_[0]\,
      I3 => s_axi_arlen(4),
      O => \rburst_cnt[4]_i_1_n_0\
    );
\rburst_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AFF9A00"
    )
        port map (
      I0 => rburst_cnt(5),
      I1 => rburst_cnt(4),
      I2 => \rburst_cnt[6]_i_2_n_0\,
      I3 => \rstate_reg_n_0_[0]\,
      I4 => s_axi_arlen(5),
      O => \rburst_cnt[5]_i_1_n_0\
    );
\rburst_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA9AFFFFAA9A0000"
    )
        port map (
      I0 => rburst_cnt(6),
      I1 => rburst_cnt(5),
      I2 => \rburst_cnt[6]_i_2_n_0\,
      I3 => rburst_cnt(4),
      I4 => \rstate_reg_n_0_[0]\,
      I5 => s_axi_arlen(6),
      O => \rburst_cnt[6]_i_1_n_0\
    );
\rburst_cnt[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => rburst_cnt(0),
      I1 => rburst_cnt(1),
      I2 => rburst_cnt(2),
      I3 => rburst_cnt(3),
      O => \rburst_cnt[6]_i_2_n_0\
    );
\rburst_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08A808A8080808A8"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_arvalid,
      I2 => \rstate_reg_n_0_[0]\,
      I3 => s_axi_rlast_i_2_n_0,
      I4 => \^s_axi_rvalid_reg_0\,
      I5 => s_axi_rready,
      O => raddr_cur_0
    );
\rburst_cnt[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AFF9A00"
    )
        port map (
      I0 => rburst_cnt(7),
      I1 => rburst_cnt(6),
      I2 => \rburst_cnt[7]_i_3_n_0\,
      I3 => \rstate_reg_n_0_[0]\,
      I4 => s_axi_arlen(7),
      O => \rburst_cnt[7]_i_2_n_0\
    );
\rburst_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => rburst_cnt(4),
      I1 => rburst_cnt(0),
      I2 => rburst_cnt(1),
      I3 => rburst_cnt(2),
      I4 => rburst_cnt(3),
      I5 => rburst_cnt(5),
      O => \rburst_cnt[7]_i_3_n_0\
    );
\rburst_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \rburst_cnt[0]_i_1_n_0\,
      Q => rburst_cnt(0),
      R => '0'
    );
\rburst_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \rburst_cnt[1]_i_1_n_0\,
      Q => rburst_cnt(1),
      R => '0'
    );
\rburst_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \rburst_cnt[2]_i_1_n_0\,
      Q => rburst_cnt(2),
      R => '0'
    );
\rburst_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \rburst_cnt[3]_i_1_n_0\,
      Q => rburst_cnt(3),
      R => '0'
    );
\rburst_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \rburst_cnt[4]_i_1_n_0\,
      Q => rburst_cnt(4),
      R => '0'
    );
\rburst_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \rburst_cnt[5]_i_1_n_0\,
      Q => rburst_cnt(5),
      R => '0'
    );
\rburst_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \rburst_cnt[6]_i_1_n_0\,
      Q => rburst_cnt(6),
      R => '0'
    );
\rburst_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => raddr_cur_0,
      D => \rburst_cnt[7]_i_2_n_0\,
      Q => rburst_cnt(7),
      R => '0'
    );
\rstate[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F7FFF00"
    )
        port map (
      I0 => s_axi_rlast_i_2_n_0,
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => s_axi_arvalid,
      I4 => \rstate_reg_n_0_[0]\,
      O => \rstate[0]_i_1_n_0\
    );
\rstate_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \FSM_onehot_wstate[0]_i_2_n_0\,
      D => \rstate[0]_i_1_n_0\,
      Q => \rstate_reg_n_0_[0]\
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rstate_reg_n_0_[0]\,
      O => s_axi_arready
    );
s_axi_bvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \FSM_onehot_wstate_reg_n_0_[2]\,
      I2 => \^s_axi_bvalid\,
      O => s_axi_bvalid_i_1_n_0
    );
s_axi_bvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \FSM_onehot_wstate[0]_i_2_n_0\,
      D => s_axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\
    );
s_axi_rlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBF80800080"
    )
        port map (
      I0 => s_axi_rlast_i_2_n_0,
      I1 => s_axi_aresetn,
      I2 => \rstate_reg_n_0_[0]\,
      I3 => \^s_axi_rvalid_reg_0\,
      I4 => s_axi_rready,
      I5 => \^s_axi_rlast\,
      O => s_axi_rlast_i_1_n_0
    );
s_axi_rlast_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \rburst_cnt[6]_i_2_n_0\,
      I1 => rburst_cnt(6),
      I2 => rburst_cnt(7),
      I3 => rburst_cnt(5),
      I4 => rburst_cnt(4),
      O => s_axi_rlast_i_2_n_0
    );
s_axi_rlast_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rlast_i_1_n_0,
      Q => \^s_axi_rlast\,
      R => '0'
    );
s_axi_rvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \FSM_onehot_wstate[0]_i_2_n_0\,
      D => \rstate_reg_n_0_[0]\,
      Q => \^s_axi_rvalid_reg_0\
    );
waddr_cur0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => waddr_cur0_carry_n_0,
      CO(2) => waddr_cur0_carry_n_1,
      CO(1) => waddr_cur0_carry_n_2,
      CO(0) => waddr_cur0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => p_0_in(0),
      DI(0) => '0',
      O(3 downto 0) => in8(4 downto 1),
      S(3 downto 2) => p_0_in(2 downto 1),
      S(1) => waddr_cur0_carry_i_1_n_0,
      S(0) => waddr_cur(1)
    );
\waddr_cur0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => waddr_cur0_carry_n_0,
      CO(3) => \waddr_cur0_carry__0_n_0\,
      CO(2) => \waddr_cur0_carry__0_n_1\,
      CO(1) => \waddr_cur0_carry__0_n_2\,
      CO(0) => \waddr_cur0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(8 downto 5),
      S(3 downto 0) => p_0_in(6 downto 3)
    );
\waddr_cur0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \waddr_cur0_carry__0_n_0\,
      CO(3) => \waddr_cur0_carry__1_n_0\,
      CO(2) => \waddr_cur0_carry__1_n_1\,
      CO(1) => \waddr_cur0_carry__1_n_2\,
      CO(0) => \waddr_cur0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(12 downto 9),
      S(3 downto 0) => p_0_in(10 downto 7)
    );
\waddr_cur0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \waddr_cur0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_waddr_cur0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \waddr_cur0_carry__2_n_2\,
      CO(0) => \waddr_cur0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_waddr_cur0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => in8(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => p_0_in(13 downto 11)
    );
waddr_cur0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in(0),
      O => waddr_cur0_carry_i_1_n_0
    );
\waddr_cur[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in8(10),
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_awaddr(9),
      I3 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \waddr_cur[10]_i_1_n_0\
    );
\waddr_cur[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in8(11),
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_awaddr(10),
      I3 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \waddr_cur[11]_i_1_n_0\
    );
\waddr_cur[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in8(12),
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_awaddr(11),
      I3 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \waddr_cur[12]_i_1_n_0\
    );
\waddr_cur[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in8(13),
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_awaddr(12),
      I3 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \waddr_cur[13]_i_1_n_0\
    );
\waddr_cur[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in8(14),
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_awaddr(13),
      I3 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \waddr_cur[14]_i_1_n_0\
    );
\waddr_cur[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \waddr_cur[15]_i_1_n_0\
    );
\waddr_cur[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in8(15),
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_awaddr(14),
      I3 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \waddr_cur[15]_i_2_n_0\
    );
\waddr_cur[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in8(1),
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_awaddr(0),
      I3 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \waddr_cur[1]_i_1_n_0\
    );
\waddr_cur[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in8(2),
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_awaddr(1),
      I3 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \waddr_cur[2]_i_1_n_0\
    );
\waddr_cur[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in8(3),
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_awaddr(2),
      I3 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \waddr_cur[3]_i_1_n_0\
    );
\waddr_cur[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in8(4),
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_awaddr(3),
      I3 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \waddr_cur[4]_i_1_n_0\
    );
\waddr_cur[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in8(5),
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_awaddr(4),
      I3 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \waddr_cur[5]_i_1_n_0\
    );
\waddr_cur[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in8(6),
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_awaddr(5),
      I3 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \waddr_cur[6]_i_1_n_0\
    );
\waddr_cur[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in8(7),
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_awaddr(6),
      I3 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \waddr_cur[7]_i_1_n_0\
    );
\waddr_cur[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in8(8),
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_awaddr(7),
      I3 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \waddr_cur[8]_i_1_n_0\
    );
\waddr_cur[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in8(9),
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_awaddr(8),
      I3 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \waddr_cur[9]_i_1_n_0\
    );
\waddr_cur_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \waddr_cur[15]_i_1_n_0\,
      D => \waddr_cur[10]_i_1_n_0\,
      Q => p_0_in(8),
      R => '0'
    );
\waddr_cur_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \waddr_cur[15]_i_1_n_0\,
      D => \waddr_cur[11]_i_1_n_0\,
      Q => p_0_in(9),
      R => '0'
    );
\waddr_cur_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \waddr_cur[15]_i_1_n_0\,
      D => \waddr_cur[12]_i_1_n_0\,
      Q => p_0_in(10),
      R => '0'
    );
\waddr_cur_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \waddr_cur[15]_i_1_n_0\,
      D => \waddr_cur[13]_i_1_n_0\,
      Q => p_0_in(11),
      R => '0'
    );
\waddr_cur_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \waddr_cur[15]_i_1_n_0\,
      D => \waddr_cur[14]_i_1_n_0\,
      Q => p_0_in(12),
      R => '0'
    );
\waddr_cur_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \waddr_cur[15]_i_1_n_0\,
      D => \waddr_cur[15]_i_2_n_0\,
      Q => p_0_in(13),
      R => '0'
    );
\waddr_cur_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \waddr_cur[15]_i_1_n_0\,
      D => \waddr_cur[1]_i_1_n_0\,
      Q => waddr_cur(1),
      R => '0'
    );
\waddr_cur_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \waddr_cur[15]_i_1_n_0\,
      D => \waddr_cur[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => '0'
    );
\waddr_cur_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \waddr_cur[15]_i_1_n_0\,
      D => \waddr_cur[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => '0'
    );
\waddr_cur_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \waddr_cur[15]_i_1_n_0\,
      D => \waddr_cur[4]_i_1_n_0\,
      Q => p_0_in(2),
      R => '0'
    );
\waddr_cur_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \waddr_cur[15]_i_1_n_0\,
      D => \waddr_cur[5]_i_1_n_0\,
      Q => p_0_in(3),
      R => '0'
    );
\waddr_cur_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \waddr_cur[15]_i_1_n_0\,
      D => \waddr_cur[6]_i_1_n_0\,
      Q => p_0_in(4),
      R => '0'
    );
\waddr_cur_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \waddr_cur[15]_i_1_n_0\,
      D => \waddr_cur[7]_i_1_n_0\,
      Q => p_0_in(5),
      R => '0'
    );
\waddr_cur_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \waddr_cur[15]_i_1_n_0\,
      D => \waddr_cur[8]_i_1_n_0\,
      Q => p_0_in(6),
      R => '0'
    );
\waddr_cur_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \waddr_cur[15]_i_1_n_0\,
      D => \waddr_cur[9]_i_1_n_0\,
      Q => p_0_in(7),
      R => '0'
    );
\wburst_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => wburst_cnt(0),
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_awlen(0),
      I3 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \wburst_cnt[0]_i_1_n_0\
    );
\wburst_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF909090"
    )
        port map (
      I0 => wburst_cnt(0),
      I1 => wburst_cnt(1),
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      I3 => s_axi_awlen(1),
      I4 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \wburst_cnt[1]_i_1_n_0\
    );
\wburst_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA900A900A900"
    )
        port map (
      I0 => wburst_cnt(2),
      I1 => wburst_cnt(1),
      I2 => wburst_cnt(0),
      I3 => \^fsm_onehot_wstate_reg[1]_0\,
      I4 => s_axi_awlen(2),
      I5 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \wburst_cnt[2]_i_1_n_0\
    );
\wburst_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA600A600A600"
    )
        port map (
      I0 => wburst_cnt(3),
      I1 => \wburst_cnt[3]_i_2_n_0\,
      I2 => wburst_cnt(2),
      I3 => \^fsm_onehot_wstate_reg[1]_0\,
      I4 => s_axi_awlen(3),
      I5 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \wburst_cnt[3]_i_1_n_0\
    );
\wburst_cnt[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wburst_cnt(0),
      I1 => wburst_cnt(1),
      O => \wburst_cnt[3]_i_2_n_0\
    );
\wburst_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF606060"
    )
        port map (
      I0 => wburst_cnt(4),
      I1 => \wburst_cnt[4]_i_2_n_0\,
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      I3 => s_axi_awlen(4),
      I4 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \wburst_cnt[4]_i_1_n_0\
    );
\wburst_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => wburst_cnt(1),
      I1 => wburst_cnt(0),
      I2 => wburst_cnt(3),
      I3 => wburst_cnt(2),
      O => \wburst_cnt[4]_i_2_n_0\
    );
\wburst_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF909090"
    )
        port map (
      I0 => wburst_cnt(5),
      I1 => \wburst_cnt[5]_i_2_n_0\,
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      I3 => s_axi_awlen(5),
      I4 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \wburst_cnt[5]_i_1_n_0\
    );
\wburst_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => wburst_cnt(4),
      I1 => wburst_cnt(2),
      I2 => wburst_cnt(3),
      I3 => wburst_cnt(0),
      I4 => wburst_cnt(1),
      O => \wburst_cnt[5]_i_2_n_0\
    );
\wburst_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF909090"
    )
        port map (
      I0 => wburst_cnt(6),
      I1 => \wburst_cnt[7]_i_3_n_0\,
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      I3 => s_axi_awlen(6),
      I4 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \wburst_cnt[6]_i_1_n_0\
    );
\wburst_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAA8AAA8"
    )
        port map (
      I0 => \waddr_cur[15]_i_1_n_0\,
      I1 => wburst_cnt(7),
      I2 => \wburst_cnt[7]_i_3_n_0\,
      I3 => wburst_cnt(6),
      I4 => s_axi_awvalid,
      I5 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \wburst_cnt[7]_i_1_n_0\
    );
\wburst_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA900A900A900"
    )
        port map (
      I0 => wburst_cnt(7),
      I1 => \wburst_cnt[7]_i_3_n_0\,
      I2 => wburst_cnt(6),
      I3 => \^fsm_onehot_wstate_reg[1]_0\,
      I4 => s_axi_awlen(7),
      I5 => \^fsm_onehot_wstate_reg[0]_0\,
      O => \wburst_cnt[7]_i_2_n_0\
    );
\wburst_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => wburst_cnt(5),
      I1 => wburst_cnt(1),
      I2 => wburst_cnt(0),
      I3 => wburst_cnt(3),
      I4 => wburst_cnt(2),
      I5 => wburst_cnt(4),
      O => \wburst_cnt[7]_i_3_n_0\
    );
\wburst_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \wburst_cnt[7]_i_1_n_0\,
      D => \wburst_cnt[0]_i_1_n_0\,
      Q => wburst_cnt(0),
      R => '0'
    );
\wburst_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \wburst_cnt[7]_i_1_n_0\,
      D => \wburst_cnt[1]_i_1_n_0\,
      Q => wburst_cnt(1),
      R => '0'
    );
\wburst_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \wburst_cnt[7]_i_1_n_0\,
      D => \wburst_cnt[2]_i_1_n_0\,
      Q => wburst_cnt(2),
      R => '0'
    );
\wburst_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \wburst_cnt[7]_i_1_n_0\,
      D => \wburst_cnt[3]_i_1_n_0\,
      Q => wburst_cnt(3),
      R => '0'
    );
\wburst_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \wburst_cnt[7]_i_1_n_0\,
      D => \wburst_cnt[4]_i_1_n_0\,
      Q => wburst_cnt(4),
      R => '0'
    );
\wburst_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \wburst_cnt[7]_i_1_n_0\,
      D => \wburst_cnt[5]_i_1_n_0\,
      Q => wburst_cnt(5),
      R => '0'
    );
\wburst_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \wburst_cnt[7]_i_1_n_0\,
      D => \wburst_cnt[6]_i_1_n_0\,
      Q => wburst_cnt(6),
      R => '0'
    );
\wburst_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \wburst_cnt[7]_i_1_n_0\,
      D => \wburst_cnt[7]_i_2_n_0\,
      Q => wburst_cnt(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4_full_ram_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axi4_full_ram_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axi4_full_ram_0_0 : entity is "design_1_axi4_full_ram_0_0,axi4_full_ram,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axi4_full_ram_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_axi4_full_ram_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axi4_full_ram_0_0 : entity is "axi4_full_ram,Vivado 2025.1";
end design_1_axi4_full_ram_0_0;

architecture STRUCTURE of design_1_axi4_full_ram_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of s_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute X_INTERFACE_MODE of s_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 s_axi RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 s_axi WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 s_axi ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 s_axi ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 s_axi ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_MODE of s_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_awaddr : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 s_axi AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 s_axi AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 s_axi AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_axi4_full_ram_0_0_axi4_full_ram
     port map (
      \FSM_onehot_wstate_reg[0]_0\ => s_axi_awready,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_wready,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(14 downto 0) => s_axi_araddr(15 downto 1),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(14 downto 0) => s_axi_awaddr(15 downto 1),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_reg_0 => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;

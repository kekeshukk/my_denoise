-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Wed Aug 10 17:51:42 2022
-- Host        : DESKTOP-5JBVKGD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_MSXBO_FDMA_0_0_sim_netlist.vhdl
-- Design      : system_MSXBO_FDMA_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSXBO_FDMA_v1_0_M00_AXI is
  port (
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    w_cycle_flag_reg_0 : out STD_LOGIC;
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rready_reg_0 : out STD_LOGIC;
    m00_axi_wlast : out STD_LOGIC;
    m00_axi_wready_0 : out STD_LOGIC;
    m00_axi_rvalid_0 : out STD_LOGIC;
    m00_axi_awvalid : out STD_LOGIC;
    pkg_wr_last : out STD_LOGIC;
    axi_arvalid_reg_0 : out STD_LOGIC;
    pkg_rd_last : out STD_LOGIC;
    pkg_wr_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pkg_wr_areq : in STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    pkg_rd_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pkg_rd_areq : in STD_LOGIC;
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rlast : in STD_LOGIC;
    pkg_wr_size : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pkg_rd_size : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSXBO_FDMA_v1_0_M00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSXBO_FDMA_v1_0_M00_AXI is
  signal \axi_araddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[12]_i_10_n_0\ : STD_LOGIC;
  signal \axi_araddr[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[12]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[12]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[12]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr[12]_i_6_n_0\ : STD_LOGIC;
  signal \axi_araddr[12]_i_7_n_0\ : STD_LOGIC;
  signal \axi_araddr[12]_i_8_n_0\ : STD_LOGIC;
  signal \axi_araddr[12]_i_9_n_0\ : STD_LOGIC;
  signal \axi_araddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[20]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[20]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[20]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr[20]_i_6_n_0\ : STD_LOGIC;
  signal \axi_araddr[20]_i_7_n_0\ : STD_LOGIC;
  signal \axi_araddr[20]_i_8_n_0\ : STD_LOGIC;
  signal \axi_araddr[20]_i_9_n_0\ : STD_LOGIC;
  signal \axi_araddr[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[28]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[28]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[28]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr[28]_i_6_n_0\ : STD_LOGIC;
  signal \axi_araddr[28]_i_7_n_0\ : STD_LOGIC;
  signal \axi_araddr[28]_i_8_n_0\ : STD_LOGIC;
  signal \axi_araddr[28]_i_9_n_0\ : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[31]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[31]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[12]_i_1_n_10\ : STD_LOGIC;
  signal \axi_araddr_reg[12]_i_1_n_11\ : STD_LOGIC;
  signal \axi_araddr_reg[12]_i_1_n_12\ : STD_LOGIC;
  signal \axi_araddr_reg[12]_i_1_n_13\ : STD_LOGIC;
  signal \axi_araddr_reg[12]_i_1_n_14\ : STD_LOGIC;
  signal \axi_araddr_reg[12]_i_1_n_15\ : STD_LOGIC;
  signal \axi_araddr_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[12]_i_1_n_8\ : STD_LOGIC;
  signal \axi_araddr_reg[12]_i_1_n_9\ : STD_LOGIC;
  signal \axi_araddr_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[20]_i_1_n_10\ : STD_LOGIC;
  signal \axi_araddr_reg[20]_i_1_n_11\ : STD_LOGIC;
  signal \axi_araddr_reg[20]_i_1_n_12\ : STD_LOGIC;
  signal \axi_araddr_reg[20]_i_1_n_13\ : STD_LOGIC;
  signal \axi_araddr_reg[20]_i_1_n_14\ : STD_LOGIC;
  signal \axi_araddr_reg[20]_i_1_n_15\ : STD_LOGIC;
  signal \axi_araddr_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[20]_i_1_n_8\ : STD_LOGIC;
  signal \axi_araddr_reg[20]_i_1_n_9\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_1_n_10\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_1_n_11\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_1_n_12\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_1_n_13\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_1_n_14\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_1_n_15\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_1_n_8\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_1_n_9\ : STD_LOGIC;
  signal \axi_araddr_reg[31]_i_2_n_13\ : STD_LOGIC;
  signal \axi_araddr_reg[31]_i_2_n_14\ : STD_LOGIC;
  signal \axi_araddr_reg[31]_i_2_n_15\ : STD_LOGIC;
  signal \axi_araddr_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal axi_arvalid04_out : STD_LOGIC;
  signal axi_arvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_arvalid_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[12]_i_10_n_0\ : STD_LOGIC;
  signal \axi_awaddr[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr[12]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[12]_i_4_n_0\ : STD_LOGIC;
  signal \axi_awaddr[12]_i_5_n_0\ : STD_LOGIC;
  signal \axi_awaddr[12]_i_6_n_0\ : STD_LOGIC;
  signal \axi_awaddr[12]_i_7_n_0\ : STD_LOGIC;
  signal \axi_awaddr[12]_i_8_n_0\ : STD_LOGIC;
  signal \axi_awaddr[12]_i_9_n_0\ : STD_LOGIC;
  signal \axi_awaddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr[20]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[20]_i_4_n_0\ : STD_LOGIC;
  signal \axi_awaddr[20]_i_5_n_0\ : STD_LOGIC;
  signal \axi_awaddr[20]_i_6_n_0\ : STD_LOGIC;
  signal \axi_awaddr[20]_i_7_n_0\ : STD_LOGIC;
  signal \axi_awaddr[20]_i_8_n_0\ : STD_LOGIC;
  signal \axi_awaddr[20]_i_9_n_0\ : STD_LOGIC;
  signal \axi_awaddr[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr[28]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[28]_i_4_n_0\ : STD_LOGIC;
  signal \axi_awaddr[28]_i_5_n_0\ : STD_LOGIC;
  signal \axi_awaddr[28]_i_6_n_0\ : STD_LOGIC;
  signal \axi_awaddr[28]_i_7_n_0\ : STD_LOGIC;
  signal \axi_awaddr[28]_i_8_n_0\ : STD_LOGIC;
  signal \axi_awaddr[28]_i_9_n_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr[31]_i_4_n_0\ : STD_LOGIC;
  signal \axi_awaddr[31]_i_5_n_0\ : STD_LOGIC;
  signal \axi_awaddr[31]_i_6_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \axi_awaddr_reg[12]_i_1_n_10\ : STD_LOGIC;
  signal \axi_awaddr_reg[12]_i_1_n_11\ : STD_LOGIC;
  signal \axi_awaddr_reg[12]_i_1_n_12\ : STD_LOGIC;
  signal \axi_awaddr_reg[12]_i_1_n_13\ : STD_LOGIC;
  signal \axi_awaddr_reg[12]_i_1_n_14\ : STD_LOGIC;
  signal \axi_awaddr_reg[12]_i_1_n_15\ : STD_LOGIC;
  signal \axi_awaddr_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \axi_awaddr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \axi_awaddr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \axi_awaddr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \axi_awaddr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \axi_awaddr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \axi_awaddr_reg[12]_i_1_n_8\ : STD_LOGIC;
  signal \axi_awaddr_reg[12]_i_1_n_9\ : STD_LOGIC;
  signal \axi_awaddr_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \axi_awaddr_reg[20]_i_1_n_10\ : STD_LOGIC;
  signal \axi_awaddr_reg[20]_i_1_n_11\ : STD_LOGIC;
  signal \axi_awaddr_reg[20]_i_1_n_12\ : STD_LOGIC;
  signal \axi_awaddr_reg[20]_i_1_n_13\ : STD_LOGIC;
  signal \axi_awaddr_reg[20]_i_1_n_14\ : STD_LOGIC;
  signal \axi_awaddr_reg[20]_i_1_n_15\ : STD_LOGIC;
  signal \axi_awaddr_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \axi_awaddr_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \axi_awaddr_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \axi_awaddr_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \axi_awaddr_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \axi_awaddr_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \axi_awaddr_reg[20]_i_1_n_8\ : STD_LOGIC;
  signal \axi_awaddr_reg[20]_i_1_n_9\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_1_n_10\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_1_n_11\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_1_n_12\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_1_n_13\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_1_n_14\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_1_n_15\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_1_n_8\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_1_n_9\ : STD_LOGIC;
  signal \axi_awaddr_reg[31]_i_3_n_13\ : STD_LOGIC;
  signal \axi_awaddr_reg[31]_i_3_n_14\ : STD_LOGIC;
  signal \axi_awaddr_reg[31]_i_3_n_15\ : STD_LOGIC;
  signal \axi_awaddr_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \axi_awaddr_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal axi_awvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rready_i_1_n_0 : STD_LOGIC;
  signal \^axi_rready_reg_0\ : STD_LOGIC;
  signal axi_wlast : STD_LOGIC;
  signal axi_wlast_i_2_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^m00_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m00_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m00_axi_awvalid\ : STD_LOGIC;
  signal \^m00_axi_rvalid_0\ : STD_LOGIC;
  signal \^m00_axi_wlast\ : STD_LOGIC;
  signal \^m00_axi_wready_0\ : STD_LOGIC;
  signal pkg_rd_last0 : STD_LOGIC;
  signal \pkg_rd_last0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pkg_rd_last0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pkg_rd_last0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pkg_rd_last0_carry__0_n_6\ : STD_LOGIC;
  signal \pkg_rd_last0_carry__0_n_7\ : STD_LOGIC;
  signal pkg_rd_last0_carry_i_1_n_0 : STD_LOGIC;
  signal pkg_rd_last0_carry_i_2_n_0 : STD_LOGIC;
  signal pkg_rd_last0_carry_i_3_n_0 : STD_LOGIC;
  signal pkg_rd_last0_carry_i_4_n_0 : STD_LOGIC;
  signal pkg_rd_last0_carry_i_5_n_0 : STD_LOGIC;
  signal pkg_rd_last0_carry_i_6_n_0 : STD_LOGIC;
  signal pkg_rd_last0_carry_i_7_n_0 : STD_LOGIC;
  signal pkg_rd_last0_carry_i_8_n_0 : STD_LOGIC;
  signal pkg_rd_last0_carry_n_0 : STD_LOGIC;
  signal pkg_rd_last0_carry_n_1 : STD_LOGIC;
  signal pkg_rd_last0_carry_n_2 : STD_LOGIC;
  signal pkg_rd_last0_carry_n_3 : STD_LOGIC;
  signal pkg_rd_last0_carry_n_4 : STD_LOGIC;
  signal pkg_rd_last0_carry_n_5 : STD_LOGIC;
  signal pkg_rd_last0_carry_n_6 : STD_LOGIC;
  signal pkg_rd_last0_carry_n_7 : STD_LOGIC;
  signal pkg_rd_last1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \pkg_rd_last1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__0_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__0_n_1\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__0_n_2\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__0_n_3\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__0_n_4\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__0_n_5\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__0_n_6\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__0_n_7\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__1_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__1_n_1\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__1_n_2\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__1_n_3\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__1_n_4\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__1_n_5\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__1_n_6\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__1_n_7\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__2_n_2\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__2_n_3\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__2_n_4\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__2_n_5\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__2_n_6\ : STD_LOGIC;
  signal \pkg_rd_last1_carry__2_n_7\ : STD_LOGIC;
  signal pkg_rd_last1_carry_i_1_n_0 : STD_LOGIC;
  signal pkg_rd_last1_carry_i_2_n_0 : STD_LOGIC;
  signal pkg_rd_last1_carry_i_3_n_0 : STD_LOGIC;
  signal pkg_rd_last1_carry_i_4_n_0 : STD_LOGIC;
  signal pkg_rd_last1_carry_i_5_n_0 : STD_LOGIC;
  signal pkg_rd_last1_carry_i_6_n_0 : STD_LOGIC;
  signal pkg_rd_last1_carry_i_7_n_0 : STD_LOGIC;
  signal pkg_rd_last1_carry_i_8_n_0 : STD_LOGIC;
  signal pkg_rd_last1_carry_n_0 : STD_LOGIC;
  signal pkg_rd_last1_carry_n_1 : STD_LOGIC;
  signal pkg_rd_last1_carry_n_2 : STD_LOGIC;
  signal pkg_rd_last1_carry_n_3 : STD_LOGIC;
  signal pkg_rd_last1_carry_n_4 : STD_LOGIC;
  signal pkg_rd_last1_carry_n_5 : STD_LOGIC;
  signal pkg_rd_last1_carry_n_6 : STD_LOGIC;
  signal pkg_rd_last1_carry_n_7 : STD_LOGIC;
  signal pkg_wr_last0 : STD_LOGIC;
  signal \pkg_wr_last0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pkg_wr_last0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pkg_wr_last0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pkg_wr_last0_carry__0_n_6\ : STD_LOGIC;
  signal \pkg_wr_last0_carry__0_n_7\ : STD_LOGIC;
  signal pkg_wr_last0_carry_i_1_n_0 : STD_LOGIC;
  signal pkg_wr_last0_carry_i_2_n_0 : STD_LOGIC;
  signal pkg_wr_last0_carry_i_3_n_0 : STD_LOGIC;
  signal pkg_wr_last0_carry_i_4_n_0 : STD_LOGIC;
  signal pkg_wr_last0_carry_i_5_n_0 : STD_LOGIC;
  signal pkg_wr_last0_carry_i_6_n_0 : STD_LOGIC;
  signal pkg_wr_last0_carry_i_7_n_0 : STD_LOGIC;
  signal pkg_wr_last0_carry_i_8_n_0 : STD_LOGIC;
  signal pkg_wr_last0_carry_n_0 : STD_LOGIC;
  signal pkg_wr_last0_carry_n_1 : STD_LOGIC;
  signal pkg_wr_last0_carry_n_2 : STD_LOGIC;
  signal pkg_wr_last0_carry_n_3 : STD_LOGIC;
  signal pkg_wr_last0_carry_n_4 : STD_LOGIC;
  signal pkg_wr_last0_carry_n_5 : STD_LOGIC;
  signal pkg_wr_last0_carry_n_6 : STD_LOGIC;
  signal pkg_wr_last0_carry_n_7 : STD_LOGIC;
  signal pkg_wr_last1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \pkg_wr_last1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__0_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__0_n_1\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__0_n_2\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__0_n_3\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__0_n_4\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__0_n_5\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__0_n_6\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__0_n_7\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__1_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__1_n_1\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__1_n_2\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__1_n_3\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__1_n_4\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__1_n_5\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__1_n_6\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__1_n_7\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__2_n_2\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__2_n_3\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__2_n_4\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__2_n_5\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__2_n_6\ : STD_LOGIC;
  signal \pkg_wr_last1_carry__2_n_7\ : STD_LOGIC;
  signal pkg_wr_last1_carry_i_1_n_0 : STD_LOGIC;
  signal pkg_wr_last1_carry_i_2_n_0 : STD_LOGIC;
  signal pkg_wr_last1_carry_i_3_n_0 : STD_LOGIC;
  signal pkg_wr_last1_carry_i_4_n_0 : STD_LOGIC;
  signal pkg_wr_last1_carry_i_5_n_0 : STD_LOGIC;
  signal pkg_wr_last1_carry_i_6_n_0 : STD_LOGIC;
  signal pkg_wr_last1_carry_i_7_n_0 : STD_LOGIC;
  signal pkg_wr_last1_carry_i_8_n_0 : STD_LOGIC;
  signal pkg_wr_last1_carry_n_0 : STD_LOGIC;
  signal pkg_wr_last1_carry_n_1 : STD_LOGIC;
  signal pkg_wr_last1_carry_n_2 : STD_LOGIC;
  signal pkg_wr_last1_carry_n_3 : STD_LOGIC;
  signal pkg_wr_last1_carry_n_4 : STD_LOGIC;
  signal pkg_wr_last1_carry_n_5 : STD_LOGIC;
  signal pkg_wr_last1_carry_n_6 : STD_LOGIC;
  signal pkg_wr_last1_carry_n_7 : STD_LOGIC;
  signal r_cycle_flag : STD_LOGIC;
  signal r_cycle_flag_i_1_n_0 : STD_LOGIC;
  signal r_fdma_locked : STD_LOGIC;
  signal r_fdma_locked_i_1_n_0 : STD_LOGIC;
  signal \rd_data_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal rd_data_cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \rd_data_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \rd_data_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \rd_data_cnt_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \rd_data_cnt_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \rd_data_cnt_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \rd_data_cnt_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \rd_data_cnt_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \rd_data_cnt_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \rd_data_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \rd_data_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \rd_data_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \rd_data_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \rd_data_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \rd_data_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \rd_data_cnt_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \rd_data_cnt_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \rd_data_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \rd_data_cnt_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \rd_data_cnt_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \rd_data_cnt_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \rd_data_cnt_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \rd_data_cnt_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \rd_data_cnt_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \rd_data_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \rd_data_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \rd_data_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \rd_data_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \rd_data_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \rd_data_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \rd_data_cnt_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \rd_data_cnt_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \rd_data_cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \rd_data_cnt_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \rd_data_cnt_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \rd_data_cnt_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \rd_data_cnt_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \rd_data_cnt_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \rd_data_cnt_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \rd_data_cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \rd_data_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \rd_data_cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \rd_data_cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \rd_data_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \rd_data_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \rd_data_cnt_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \rd_data_cnt_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \rd_data_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \rd_data_cnt_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \rd_data_cnt_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \rd_data_cnt_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \rd_data_cnt_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \rd_data_cnt_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \rd_data_cnt_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \rd_data_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \rd_data_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \rd_data_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \rd_data_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \rd_data_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \rd_data_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \rd_data_cnt_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \rd_data_cnt_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal read_data_flag : STD_LOGIC;
  signal read_data_flag_i_1_n_0 : STD_LOGIC;
  signal w_cycle_flag_i_1_n_0 : STD_LOGIC;
  signal \^w_cycle_flag_reg_0\ : STD_LOGIC;
  signal w_fdma_locked : STD_LOGIC;
  signal w_fdma_locked_i_1_n_0 : STD_LOGIC;
  signal w_word_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \w_word_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \w_word_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \w_word_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \w_word_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \w_word_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \w_word_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \w_word_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \w_word_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \w_word_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \w_word_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \w_word_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \wr_data_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal wr_data_cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \wr_data_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \wr_data_cnt_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \wr_data_cnt_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \wr_data_cnt_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \wr_data_cnt_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \wr_data_cnt_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \wr_data_cnt_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \wr_data_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \wr_data_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \wr_data_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \wr_data_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \wr_data_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \wr_data_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \wr_data_cnt_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \wr_data_cnt_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \wr_data_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \wr_data_cnt_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \wr_data_cnt_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \wr_data_cnt_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \wr_data_cnt_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \wr_data_cnt_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \wr_data_cnt_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \wr_data_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \wr_data_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \wr_data_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \wr_data_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \wr_data_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \wr_data_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \wr_data_cnt_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \wr_data_cnt_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \wr_data_cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \wr_data_cnt_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \wr_data_cnt_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \wr_data_cnt_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \wr_data_cnt_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \wr_data_cnt_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \wr_data_cnt_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \wr_data_cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \wr_data_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \wr_data_cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \wr_data_cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \wr_data_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \wr_data_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \wr_data_cnt_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \wr_data_cnt_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \wr_data_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \wr_data_cnt_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \wr_data_cnt_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \wr_data_cnt_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \wr_data_cnt_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \wr_data_cnt_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \wr_data_cnt_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \wr_data_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \wr_data_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \wr_data_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \wr_data_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \wr_data_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \wr_data_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \wr_data_cnt_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \wr_data_cnt_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \NLW_axi_araddr_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_axi_araddr_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_axi_awaddr_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_axi_awaddr_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal NLW_pkg_rd_last0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_pkg_rd_last0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_pkg_rd_last0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_pkg_rd_last1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_pkg_rd_last1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_pkg_wr_last0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_pkg_wr_last0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_pkg_wr_last0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_pkg_wr_last1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_pkg_wr_last1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_rd_data_cnt_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_wr_data_cnt_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \axi_araddr_reg[12]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \axi_araddr_reg[20]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \axi_araddr_reg[28]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \axi_araddr_reg[31]_i_2\ : label is 16;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arvalid_i_1 : label is "soft_lutpair5";
  attribute ADDER_THRESHOLD of \axi_awaddr_reg[12]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \axi_awaddr_reg[20]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \axi_awaddr_reg[28]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \axi_awaddr_reg[31]_i_3\ : label is 16;
  attribute SOFT_HLUTNM of axi_rready_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_wlast_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_wlast_i_2 : label is "soft_lutpair6";
  attribute ADDER_THRESHOLD of pkg_rd_last1_carry : label is 35;
  attribute ADDER_THRESHOLD of \pkg_rd_last1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \pkg_rd_last1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \pkg_rd_last1_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of pkg_rd_last_INST_0 : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD of pkg_wr_last1_carry : label is 35;
  attribute ADDER_THRESHOLD of \pkg_wr_last1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \pkg_wr_last1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \pkg_wr_last1_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of pkg_wr_last_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of r_fdma_locked_i_1 : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD of \rd_data_cnt_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \rd_data_cnt_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \rd_data_cnt_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \rd_data_cnt_reg[8]_i_1\ : label is 16;
  attribute SOFT_HLUTNM of w_fdma_locked_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \w_word_cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \w_word_cnt[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \w_word_cnt[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \w_word_cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \w_word_cnt[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \w_word_cnt[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \w_word_cnt[7]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \w_word_cnt[7]_i_4\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD of \wr_data_cnt_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \wr_data_cnt_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \wr_data_cnt_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \wr_data_cnt_reg[8]_i_1\ : label is 16;
begin
  axi_arvalid_reg_0 <= \^axi_arvalid_reg_0\;
  axi_rready_reg_0 <= \^axi_rready_reg_0\;
  m00_axi_araddr(31 downto 0) <= \^m00_axi_araddr\(31 downto 0);
  m00_axi_awaddr(31 downto 0) <= \^m00_axi_awaddr\(31 downto 0);
  m00_axi_awvalid <= \^m00_axi_awvalid\;
  m00_axi_rvalid_0 <= \^m00_axi_rvalid_0\;
  m00_axi_wlast <= \^m00_axi_wlast\;
  m00_axi_wready_0 <= \^m00_axi_wready_0\;
  w_cycle_flag_reg_0 <= \^w_cycle_flag_reg_0\;
\axi_araddr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(0),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(0),
      O => \axi_araddr[0]_i_1_n_0\
    );
\axi_araddr[12]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(5),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(5),
      O => \axi_araddr[12]_i_10_n_0\
    );
\axi_araddr[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(6),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(6),
      O => \axi_araddr[12]_i_2_n_0\
    );
\axi_araddr[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(12),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(12),
      O => \axi_araddr[12]_i_3_n_0\
    );
\axi_araddr[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(11),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(11),
      O => \axi_araddr[12]_i_4_n_0\
    );
\axi_araddr[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(10),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(10),
      O => \axi_araddr[12]_i_5_n_0\
    );
\axi_araddr[12]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(9),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(9),
      O => \axi_araddr[12]_i_6_n_0\
    );
\axi_araddr[12]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(8),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(8),
      O => \axi_araddr[12]_i_7_n_0\
    );
\axi_araddr[12]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(7),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(7),
      O => \axi_araddr[12]_i_8_n_0\
    );
\axi_araddr[12]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C55"
    )
        port map (
      I0 => \^m00_axi_araddr\(6),
      I1 => pkg_rd_addr(6),
      I2 => r_fdma_locked,
      I3 => pkg_rd_areq,
      O => \axi_araddr[12]_i_9_n_0\
    );
\axi_araddr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(1),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(1),
      O => \axi_araddr[1]_i_1_n_0\
    );
\axi_araddr[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(20),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(20),
      O => \axi_araddr[20]_i_2_n_0\
    );
\axi_araddr[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(19),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(19),
      O => \axi_araddr[20]_i_3_n_0\
    );
\axi_araddr[20]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(18),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(18),
      O => \axi_araddr[20]_i_4_n_0\
    );
\axi_araddr[20]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(17),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(17),
      O => \axi_araddr[20]_i_5_n_0\
    );
\axi_araddr[20]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(16),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(16),
      O => \axi_araddr[20]_i_6_n_0\
    );
\axi_araddr[20]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(15),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(15),
      O => \axi_araddr[20]_i_7_n_0\
    );
\axi_araddr[20]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(14),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(14),
      O => \axi_araddr[20]_i_8_n_0\
    );
\axi_araddr[20]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(13),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(13),
      O => \axi_araddr[20]_i_9_n_0\
    );
\axi_araddr[28]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(28),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(28),
      O => \axi_araddr[28]_i_2_n_0\
    );
\axi_araddr[28]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(27),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(27),
      O => \axi_araddr[28]_i_3_n_0\
    );
\axi_araddr[28]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(26),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(26),
      O => \axi_araddr[28]_i_4_n_0\
    );
\axi_araddr[28]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(25),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(25),
      O => \axi_araddr[28]_i_5_n_0\
    );
\axi_araddr[28]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(24),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(24),
      O => \axi_araddr[28]_i_6_n_0\
    );
\axi_araddr[28]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(23),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(23),
      O => \axi_araddr[28]_i_7_n_0\
    );
\axi_araddr[28]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(22),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(22),
      O => \axi_araddr[28]_i_8_n_0\
    );
\axi_araddr[28]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(21),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(21),
      O => \axi_araddr[28]_i_9_n_0\
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(2),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => r_fdma_locked,
      I1 => pkg_rd_areq,
      I2 => m00_axi_arready,
      I3 => \^axi_arvalid_reg_0\,
      O => \axi_araddr[31]_i_1_n_0\
    );
\axi_araddr[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(31),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(31),
      O => \axi_araddr[31]_i_3_n_0\
    );
\axi_araddr[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(30),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(30),
      O => \axi_araddr[31]_i_4_n_0\
    );
\axi_araddr[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(29),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(29),
      O => \axi_araddr[31]_i_5_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(3),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_rd_addr(4),
      I1 => pkg_rd_areq,
      I2 => r_fdma_locked,
      I3 => \^m00_axi_araddr\(4),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr[0]_i_1_n_0\,
      Q => \^m00_axi_araddr\(0),
      R => clear
    );
\axi_araddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[12]_i_1_n_10\,
      Q => \^m00_axi_araddr\(10),
      R => clear
    );
\axi_araddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[12]_i_1_n_9\,
      Q => \^m00_axi_araddr\(11),
      R => clear
    );
\axi_araddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[12]_i_1_n_8\,
      Q => \^m00_axi_araddr\(12),
      R => clear
    );
\axi_araddr_reg[12]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \axi_araddr_reg[12]_i_1_n_0\,
      CO(6) => \axi_araddr_reg[12]_i_1_n_1\,
      CO(5) => \axi_araddr_reg[12]_i_1_n_2\,
      CO(4) => \axi_araddr_reg[12]_i_1_n_3\,
      CO(3) => \axi_araddr_reg[12]_i_1_n_4\,
      CO(2) => \axi_araddr_reg[12]_i_1_n_5\,
      CO(1) => \axi_araddr_reg[12]_i_1_n_6\,
      CO(0) => \axi_araddr_reg[12]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \axi_araddr[12]_i_2_n_0\,
      DI(0) => '0',
      O(7) => \axi_araddr_reg[12]_i_1_n_8\,
      O(6) => \axi_araddr_reg[12]_i_1_n_9\,
      O(5) => \axi_araddr_reg[12]_i_1_n_10\,
      O(4) => \axi_araddr_reg[12]_i_1_n_11\,
      O(3) => \axi_araddr_reg[12]_i_1_n_12\,
      O(2) => \axi_araddr_reg[12]_i_1_n_13\,
      O(1) => \axi_araddr_reg[12]_i_1_n_14\,
      O(0) => \axi_araddr_reg[12]_i_1_n_15\,
      S(7) => \axi_araddr[12]_i_3_n_0\,
      S(6) => \axi_araddr[12]_i_4_n_0\,
      S(5) => \axi_araddr[12]_i_5_n_0\,
      S(4) => \axi_araddr[12]_i_6_n_0\,
      S(3) => \axi_araddr[12]_i_7_n_0\,
      S(2) => \axi_araddr[12]_i_8_n_0\,
      S(1) => \axi_araddr[12]_i_9_n_0\,
      S(0) => \axi_araddr[12]_i_10_n_0\
    );
\axi_araddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[20]_i_1_n_15\,
      Q => \^m00_axi_araddr\(13),
      R => clear
    );
\axi_araddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[20]_i_1_n_14\,
      Q => \^m00_axi_araddr\(14),
      R => clear
    );
\axi_araddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[20]_i_1_n_13\,
      Q => \^m00_axi_araddr\(15),
      R => clear
    );
\axi_araddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[20]_i_1_n_12\,
      Q => \^m00_axi_araddr\(16),
      R => clear
    );
\axi_araddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[20]_i_1_n_11\,
      Q => \^m00_axi_araddr\(17),
      R => clear
    );
\axi_araddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[20]_i_1_n_10\,
      Q => \^m00_axi_araddr\(18),
      R => clear
    );
\axi_araddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[20]_i_1_n_9\,
      Q => \^m00_axi_araddr\(19),
      R => clear
    );
\axi_araddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr[1]_i_1_n_0\,
      Q => \^m00_axi_araddr\(1),
      R => clear
    );
\axi_araddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[20]_i_1_n_8\,
      Q => \^m00_axi_araddr\(20),
      R => clear
    );
\axi_araddr_reg[20]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_araddr_reg[12]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \axi_araddr_reg[20]_i_1_n_0\,
      CO(6) => \axi_araddr_reg[20]_i_1_n_1\,
      CO(5) => \axi_araddr_reg[20]_i_1_n_2\,
      CO(4) => \axi_araddr_reg[20]_i_1_n_3\,
      CO(3) => \axi_araddr_reg[20]_i_1_n_4\,
      CO(2) => \axi_araddr_reg[20]_i_1_n_5\,
      CO(1) => \axi_araddr_reg[20]_i_1_n_6\,
      CO(0) => \axi_araddr_reg[20]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \axi_araddr_reg[20]_i_1_n_8\,
      O(6) => \axi_araddr_reg[20]_i_1_n_9\,
      O(5) => \axi_araddr_reg[20]_i_1_n_10\,
      O(4) => \axi_araddr_reg[20]_i_1_n_11\,
      O(3) => \axi_araddr_reg[20]_i_1_n_12\,
      O(2) => \axi_araddr_reg[20]_i_1_n_13\,
      O(1) => \axi_araddr_reg[20]_i_1_n_14\,
      O(0) => \axi_araddr_reg[20]_i_1_n_15\,
      S(7) => \axi_araddr[20]_i_2_n_0\,
      S(6) => \axi_araddr[20]_i_3_n_0\,
      S(5) => \axi_araddr[20]_i_4_n_0\,
      S(4) => \axi_araddr[20]_i_5_n_0\,
      S(3) => \axi_araddr[20]_i_6_n_0\,
      S(2) => \axi_araddr[20]_i_7_n_0\,
      S(1) => \axi_araddr[20]_i_8_n_0\,
      S(0) => \axi_araddr[20]_i_9_n_0\
    );
\axi_araddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[28]_i_1_n_15\,
      Q => \^m00_axi_araddr\(21),
      R => clear
    );
\axi_araddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[28]_i_1_n_14\,
      Q => \^m00_axi_araddr\(22),
      R => clear
    );
\axi_araddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[28]_i_1_n_13\,
      Q => \^m00_axi_araddr\(23),
      R => clear
    );
\axi_araddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[28]_i_1_n_12\,
      Q => \^m00_axi_araddr\(24),
      R => clear
    );
\axi_araddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[28]_i_1_n_11\,
      Q => \^m00_axi_araddr\(25),
      R => clear
    );
\axi_araddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[28]_i_1_n_10\,
      Q => \^m00_axi_araddr\(26),
      R => clear
    );
\axi_araddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[28]_i_1_n_9\,
      Q => \^m00_axi_araddr\(27),
      R => clear
    );
\axi_araddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[28]_i_1_n_8\,
      Q => \^m00_axi_araddr\(28),
      R => clear
    );
\axi_araddr_reg[28]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_araddr_reg[20]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \axi_araddr_reg[28]_i_1_n_0\,
      CO(6) => \axi_araddr_reg[28]_i_1_n_1\,
      CO(5) => \axi_araddr_reg[28]_i_1_n_2\,
      CO(4) => \axi_araddr_reg[28]_i_1_n_3\,
      CO(3) => \axi_araddr_reg[28]_i_1_n_4\,
      CO(2) => \axi_araddr_reg[28]_i_1_n_5\,
      CO(1) => \axi_araddr_reg[28]_i_1_n_6\,
      CO(0) => \axi_araddr_reg[28]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \axi_araddr_reg[28]_i_1_n_8\,
      O(6) => \axi_araddr_reg[28]_i_1_n_9\,
      O(5) => \axi_araddr_reg[28]_i_1_n_10\,
      O(4) => \axi_araddr_reg[28]_i_1_n_11\,
      O(3) => \axi_araddr_reg[28]_i_1_n_12\,
      O(2) => \axi_araddr_reg[28]_i_1_n_13\,
      O(1) => \axi_araddr_reg[28]_i_1_n_14\,
      O(0) => \axi_araddr_reg[28]_i_1_n_15\,
      S(7) => \axi_araddr[28]_i_2_n_0\,
      S(6) => \axi_araddr[28]_i_3_n_0\,
      S(5) => \axi_araddr[28]_i_4_n_0\,
      S(4) => \axi_araddr[28]_i_5_n_0\,
      S(3) => \axi_araddr[28]_i_6_n_0\,
      S(2) => \axi_araddr[28]_i_7_n_0\,
      S(1) => \axi_araddr[28]_i_8_n_0\,
      S(0) => \axi_araddr[28]_i_9_n_0\
    );
\axi_araddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[31]_i_2_n_15\,
      Q => \^m00_axi_araddr\(29),
      R => clear
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr[2]_i_1_n_0\,
      Q => \^m00_axi_araddr\(2),
      R => clear
    );
\axi_araddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[31]_i_2_n_14\,
      Q => \^m00_axi_araddr\(30),
      R => clear
    );
\axi_araddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[31]_i_2_n_13\,
      Q => \^m00_axi_araddr\(31),
      R => clear
    );
\axi_araddr_reg[31]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_araddr_reg[28]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_axi_araddr_reg[31]_i_2_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \axi_araddr_reg[31]_i_2_n_6\,
      CO(0) => \axi_araddr_reg[31]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 3) => \NLW_axi_araddr_reg[31]_i_2_O_UNCONNECTED\(7 downto 3),
      O(2) => \axi_araddr_reg[31]_i_2_n_13\,
      O(1) => \axi_araddr_reg[31]_i_2_n_14\,
      O(0) => \axi_araddr_reg[31]_i_2_n_15\,
      S(7 downto 3) => B"00000",
      S(2) => \axi_araddr[31]_i_3_n_0\,
      S(1) => \axi_araddr[31]_i_4_n_0\,
      S(0) => \axi_araddr[31]_i_5_n_0\
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr[3]_i_1_n_0\,
      Q => \^m00_axi_araddr\(3),
      R => clear
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr[4]_i_1_n_0\,
      Q => \^m00_axi_araddr\(4),
      R => clear
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[12]_i_1_n_15\,
      Q => \^m00_axi_araddr\(5),
      R => clear
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[12]_i_1_n_14\,
      Q => \^m00_axi_araddr\(6),
      R => clear
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[12]_i_1_n_13\,
      Q => \^m00_axi_araddr\(7),
      R => clear
    );
\axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[12]_i_1_n_12\,
      Q => \^m00_axi_araddr\(8),
      R => clear
    );
\axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_araddr[31]_i_1_n_0\,
      D => \axi_araddr_reg[12]_i_1_n_11\,
      Q => \^m00_axi_araddr\(9),
      R => clear
    );
axi_arvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A88"
    )
        port map (
      I0 => m00_axi_aresetn,
      I1 => \^axi_arvalid_reg_0\,
      I2 => m00_axi_arready,
      I3 => r_cycle_flag,
      O => axi_arvalid_i_1_n_0
    );
axi_arvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => axi_arvalid_i_1_n_0,
      Q => \^axi_arvalid_reg_0\,
      R => '0'
    );
\axi_awaddr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(0),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(0),
      O => \axi_awaddr[0]_i_1_n_0\
    );
\axi_awaddr[12]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(5),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(5),
      O => \axi_awaddr[12]_i_10_n_0\
    );
\axi_awaddr[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(6),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(6),
      O => \axi_awaddr[12]_i_2_n_0\
    );
\axi_awaddr[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(12),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(12),
      O => \axi_awaddr[12]_i_3_n_0\
    );
\axi_awaddr[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(11),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(11),
      O => \axi_awaddr[12]_i_4_n_0\
    );
\axi_awaddr[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(10),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(10),
      O => \axi_awaddr[12]_i_5_n_0\
    );
\axi_awaddr[12]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(9),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(9),
      O => \axi_awaddr[12]_i_6_n_0\
    );
\axi_awaddr[12]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(8),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(8),
      O => \axi_awaddr[12]_i_7_n_0\
    );
\axi_awaddr[12]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(7),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(7),
      O => \axi_awaddr[12]_i_8_n_0\
    );
\axi_awaddr[12]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C55"
    )
        port map (
      I0 => \^m00_axi_awaddr\(6),
      I1 => pkg_wr_addr(6),
      I2 => w_fdma_locked,
      I3 => pkg_wr_areq,
      O => \axi_awaddr[12]_i_9_n_0\
    );
\axi_awaddr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(1),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(1),
      O => \axi_awaddr[1]_i_1_n_0\
    );
\axi_awaddr[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(20),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(20),
      O => \axi_awaddr[20]_i_2_n_0\
    );
\axi_awaddr[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(19),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(19),
      O => \axi_awaddr[20]_i_3_n_0\
    );
\axi_awaddr[20]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(18),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(18),
      O => \axi_awaddr[20]_i_4_n_0\
    );
\axi_awaddr[20]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(17),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(17),
      O => \axi_awaddr[20]_i_5_n_0\
    );
\axi_awaddr[20]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(16),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(16),
      O => \axi_awaddr[20]_i_6_n_0\
    );
\axi_awaddr[20]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(15),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(15),
      O => \axi_awaddr[20]_i_7_n_0\
    );
\axi_awaddr[20]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(14),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(14),
      O => \axi_awaddr[20]_i_8_n_0\
    );
\axi_awaddr[20]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(13),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(13),
      O => \axi_awaddr[20]_i_9_n_0\
    );
\axi_awaddr[28]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(28),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(28),
      O => \axi_awaddr[28]_i_2_n_0\
    );
\axi_awaddr[28]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(27),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(27),
      O => \axi_awaddr[28]_i_3_n_0\
    );
\axi_awaddr[28]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(26),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(26),
      O => \axi_awaddr[28]_i_4_n_0\
    );
\axi_awaddr[28]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(25),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(25),
      O => \axi_awaddr[28]_i_5_n_0\
    );
\axi_awaddr[28]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(24),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(24),
      O => \axi_awaddr[28]_i_6_n_0\
    );
\axi_awaddr[28]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(23),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(23),
      O => \axi_awaddr[28]_i_7_n_0\
    );
\axi_awaddr[28]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(22),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(22),
      O => \axi_awaddr[28]_i_8_n_0\
    );
\axi_awaddr[28]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(21),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(21),
      O => \axi_awaddr[28]_i_9_n_0\
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(2),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m00_axi_aresetn,
      O => clear
    );
\axi_awaddr[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => w_fdma_locked,
      I1 => pkg_wr_areq,
      I2 => \^m00_axi_awvalid\,
      I3 => m00_axi_awready,
      O => \axi_awaddr[31]_i_2_n_0\
    );
\axi_awaddr[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(31),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(31),
      O => \axi_awaddr[31]_i_4_n_0\
    );
\axi_awaddr[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(30),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(30),
      O => \axi_awaddr[31]_i_5_n_0\
    );
\axi_awaddr[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(29),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(29),
      O => \axi_awaddr[31]_i_6_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(3),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => pkg_wr_addr(4),
      I1 => pkg_wr_areq,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awaddr\(4),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr[0]_i_1_n_0\,
      Q => \^m00_axi_awaddr\(0),
      R => clear
    );
\axi_awaddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[12]_i_1_n_10\,
      Q => \^m00_axi_awaddr\(10),
      R => clear
    );
\axi_awaddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[12]_i_1_n_9\,
      Q => \^m00_axi_awaddr\(11),
      R => clear
    );
\axi_awaddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[12]_i_1_n_8\,
      Q => \^m00_axi_awaddr\(12),
      R => clear
    );
\axi_awaddr_reg[12]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \axi_awaddr_reg[12]_i_1_n_0\,
      CO(6) => \axi_awaddr_reg[12]_i_1_n_1\,
      CO(5) => \axi_awaddr_reg[12]_i_1_n_2\,
      CO(4) => \axi_awaddr_reg[12]_i_1_n_3\,
      CO(3) => \axi_awaddr_reg[12]_i_1_n_4\,
      CO(2) => \axi_awaddr_reg[12]_i_1_n_5\,
      CO(1) => \axi_awaddr_reg[12]_i_1_n_6\,
      CO(0) => \axi_awaddr_reg[12]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \axi_awaddr[12]_i_2_n_0\,
      DI(0) => '0',
      O(7) => \axi_awaddr_reg[12]_i_1_n_8\,
      O(6) => \axi_awaddr_reg[12]_i_1_n_9\,
      O(5) => \axi_awaddr_reg[12]_i_1_n_10\,
      O(4) => \axi_awaddr_reg[12]_i_1_n_11\,
      O(3) => \axi_awaddr_reg[12]_i_1_n_12\,
      O(2) => \axi_awaddr_reg[12]_i_1_n_13\,
      O(1) => \axi_awaddr_reg[12]_i_1_n_14\,
      O(0) => \axi_awaddr_reg[12]_i_1_n_15\,
      S(7) => \axi_awaddr[12]_i_3_n_0\,
      S(6) => \axi_awaddr[12]_i_4_n_0\,
      S(5) => \axi_awaddr[12]_i_5_n_0\,
      S(4) => \axi_awaddr[12]_i_6_n_0\,
      S(3) => \axi_awaddr[12]_i_7_n_0\,
      S(2) => \axi_awaddr[12]_i_8_n_0\,
      S(1) => \axi_awaddr[12]_i_9_n_0\,
      S(0) => \axi_awaddr[12]_i_10_n_0\
    );
\axi_awaddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[20]_i_1_n_15\,
      Q => \^m00_axi_awaddr\(13),
      R => clear
    );
\axi_awaddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[20]_i_1_n_14\,
      Q => \^m00_axi_awaddr\(14),
      R => clear
    );
\axi_awaddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[20]_i_1_n_13\,
      Q => \^m00_axi_awaddr\(15),
      R => clear
    );
\axi_awaddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[20]_i_1_n_12\,
      Q => \^m00_axi_awaddr\(16),
      R => clear
    );
\axi_awaddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[20]_i_1_n_11\,
      Q => \^m00_axi_awaddr\(17),
      R => clear
    );
\axi_awaddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[20]_i_1_n_10\,
      Q => \^m00_axi_awaddr\(18),
      R => clear
    );
\axi_awaddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[20]_i_1_n_9\,
      Q => \^m00_axi_awaddr\(19),
      R => clear
    );
\axi_awaddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr[1]_i_1_n_0\,
      Q => \^m00_axi_awaddr\(1),
      R => clear
    );
\axi_awaddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[20]_i_1_n_8\,
      Q => \^m00_axi_awaddr\(20),
      R => clear
    );
\axi_awaddr_reg[20]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_awaddr_reg[12]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \axi_awaddr_reg[20]_i_1_n_0\,
      CO(6) => \axi_awaddr_reg[20]_i_1_n_1\,
      CO(5) => \axi_awaddr_reg[20]_i_1_n_2\,
      CO(4) => \axi_awaddr_reg[20]_i_1_n_3\,
      CO(3) => \axi_awaddr_reg[20]_i_1_n_4\,
      CO(2) => \axi_awaddr_reg[20]_i_1_n_5\,
      CO(1) => \axi_awaddr_reg[20]_i_1_n_6\,
      CO(0) => \axi_awaddr_reg[20]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \axi_awaddr_reg[20]_i_1_n_8\,
      O(6) => \axi_awaddr_reg[20]_i_1_n_9\,
      O(5) => \axi_awaddr_reg[20]_i_1_n_10\,
      O(4) => \axi_awaddr_reg[20]_i_1_n_11\,
      O(3) => \axi_awaddr_reg[20]_i_1_n_12\,
      O(2) => \axi_awaddr_reg[20]_i_1_n_13\,
      O(1) => \axi_awaddr_reg[20]_i_1_n_14\,
      O(0) => \axi_awaddr_reg[20]_i_1_n_15\,
      S(7) => \axi_awaddr[20]_i_2_n_0\,
      S(6) => \axi_awaddr[20]_i_3_n_0\,
      S(5) => \axi_awaddr[20]_i_4_n_0\,
      S(4) => \axi_awaddr[20]_i_5_n_0\,
      S(3) => \axi_awaddr[20]_i_6_n_0\,
      S(2) => \axi_awaddr[20]_i_7_n_0\,
      S(1) => \axi_awaddr[20]_i_8_n_0\,
      S(0) => \axi_awaddr[20]_i_9_n_0\
    );
\axi_awaddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[28]_i_1_n_15\,
      Q => \^m00_axi_awaddr\(21),
      R => clear
    );
\axi_awaddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[28]_i_1_n_14\,
      Q => \^m00_axi_awaddr\(22),
      R => clear
    );
\axi_awaddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[28]_i_1_n_13\,
      Q => \^m00_axi_awaddr\(23),
      R => clear
    );
\axi_awaddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[28]_i_1_n_12\,
      Q => \^m00_axi_awaddr\(24),
      R => clear
    );
\axi_awaddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[28]_i_1_n_11\,
      Q => \^m00_axi_awaddr\(25),
      R => clear
    );
\axi_awaddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[28]_i_1_n_10\,
      Q => \^m00_axi_awaddr\(26),
      R => clear
    );
\axi_awaddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[28]_i_1_n_9\,
      Q => \^m00_axi_awaddr\(27),
      R => clear
    );
\axi_awaddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[28]_i_1_n_8\,
      Q => \^m00_axi_awaddr\(28),
      R => clear
    );
\axi_awaddr_reg[28]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_awaddr_reg[20]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \axi_awaddr_reg[28]_i_1_n_0\,
      CO(6) => \axi_awaddr_reg[28]_i_1_n_1\,
      CO(5) => \axi_awaddr_reg[28]_i_1_n_2\,
      CO(4) => \axi_awaddr_reg[28]_i_1_n_3\,
      CO(3) => \axi_awaddr_reg[28]_i_1_n_4\,
      CO(2) => \axi_awaddr_reg[28]_i_1_n_5\,
      CO(1) => \axi_awaddr_reg[28]_i_1_n_6\,
      CO(0) => \axi_awaddr_reg[28]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \axi_awaddr_reg[28]_i_1_n_8\,
      O(6) => \axi_awaddr_reg[28]_i_1_n_9\,
      O(5) => \axi_awaddr_reg[28]_i_1_n_10\,
      O(4) => \axi_awaddr_reg[28]_i_1_n_11\,
      O(3) => \axi_awaddr_reg[28]_i_1_n_12\,
      O(2) => \axi_awaddr_reg[28]_i_1_n_13\,
      O(1) => \axi_awaddr_reg[28]_i_1_n_14\,
      O(0) => \axi_awaddr_reg[28]_i_1_n_15\,
      S(7) => \axi_awaddr[28]_i_2_n_0\,
      S(6) => \axi_awaddr[28]_i_3_n_0\,
      S(5) => \axi_awaddr[28]_i_4_n_0\,
      S(4) => \axi_awaddr[28]_i_5_n_0\,
      S(3) => \axi_awaddr[28]_i_6_n_0\,
      S(2) => \axi_awaddr[28]_i_7_n_0\,
      S(1) => \axi_awaddr[28]_i_8_n_0\,
      S(0) => \axi_awaddr[28]_i_9_n_0\
    );
\axi_awaddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[31]_i_3_n_15\,
      Q => \^m00_axi_awaddr\(29),
      R => clear
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => \^m00_axi_awaddr\(2),
      R => clear
    );
\axi_awaddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[31]_i_3_n_14\,
      Q => \^m00_axi_awaddr\(30),
      R => clear
    );
\axi_awaddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[31]_i_3_n_13\,
      Q => \^m00_axi_awaddr\(31),
      R => clear
    );
\axi_awaddr_reg[31]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_awaddr_reg[28]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_axi_awaddr_reg[31]_i_3_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \axi_awaddr_reg[31]_i_3_n_6\,
      CO(0) => \axi_awaddr_reg[31]_i_3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 3) => \NLW_axi_awaddr_reg[31]_i_3_O_UNCONNECTED\(7 downto 3),
      O(2) => \axi_awaddr_reg[31]_i_3_n_13\,
      O(1) => \axi_awaddr_reg[31]_i_3_n_14\,
      O(0) => \axi_awaddr_reg[31]_i_3_n_15\,
      S(7 downto 3) => B"00000",
      S(2) => \axi_awaddr[31]_i_4_n_0\,
      S(1) => \axi_awaddr[31]_i_5_n_0\,
      S(0) => \axi_awaddr[31]_i_6_n_0\
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \^m00_axi_awaddr\(3),
      R => clear
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => \^m00_axi_awaddr\(4),
      R => clear
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[12]_i_1_n_15\,
      Q => \^m00_axi_awaddr\(5),
      R => clear
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[12]_i_1_n_14\,
      Q => \^m00_axi_awaddr\(6),
      R => clear
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[12]_i_1_n_13\,
      Q => \^m00_axi_awaddr\(7),
      R => clear
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[12]_i_1_n_12\,
      Q => \^m00_axi_awaddr\(8),
      R => clear
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => \axi_awaddr_reg[12]_i_1_n_11\,
      Q => \^m00_axi_awaddr\(9),
      R => clear
    );
axi_awvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77300000"
    )
        port map (
      I0 => m00_axi_awready,
      I1 => \^w_cycle_flag_reg_0\,
      I2 => w_fdma_locked,
      I3 => \^m00_axi_awvalid\,
      I4 => m00_axi_aresetn,
      O => axi_awvalid_i_1_n_0
    );
axi_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => axi_awvalid_i_1_n_0,
      Q => \^m00_axi_awvalid\,
      R => '0'
    );
axi_rready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF007F00FF00"
    )
        port map (
      I0 => read_data_flag,
      I1 => m00_axi_rlast,
      I2 => m00_axi_rvalid,
      I3 => \^axi_rready_reg_0\,
      I4 => m00_axi_aresetn,
      I5 => axi_arvalid04_out,
      O => axi_rready_i_1_n_0
    );
axi_rready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => r_cycle_flag,
      I1 => m00_axi_arready,
      I2 => \^axi_arvalid_reg_0\,
      O => axi_arvalid04_out
    );
axi_rready_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => axi_rready_i_1_n_0,
      Q => \^axi_rready_reg_0\,
      R => '0'
    );
axi_wlast_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => axi_wlast_i_2_n_0,
      I1 => w_word_cnt(1),
      I2 => w_word_cnt(2),
      I3 => w_word_cnt(3),
      I4 => w_word_cnt(0),
      O => axi_wlast
    );
axi_wlast_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => w_word_cnt(5),
      I1 => w_word_cnt(4),
      I2 => w_word_cnt(6),
      I3 => w_word_cnt(7),
      O => axi_wlast_i_2_n_0
    );
axi_wlast_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => axi_wlast,
      Q => \^m00_axi_wlast\,
      R => clear
    );
pkg_rd_en_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m00_axi_rvalid,
      I1 => \^axi_rready_reg_0\,
      O => \^m00_axi_rvalid_0\
    );
pkg_rd_last0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => pkg_rd_last0_carry_n_0,
      CO(6) => pkg_rd_last0_carry_n_1,
      CO(5) => pkg_rd_last0_carry_n_2,
      CO(4) => pkg_rd_last0_carry_n_3,
      CO(3) => pkg_rd_last0_carry_n_4,
      CO(2) => pkg_rd_last0_carry_n_5,
      CO(1) => pkg_rd_last0_carry_n_6,
      CO(0) => pkg_rd_last0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => NLW_pkg_rd_last0_carry_O_UNCONNECTED(7 downto 0),
      S(7) => pkg_rd_last0_carry_i_1_n_0,
      S(6) => pkg_rd_last0_carry_i_2_n_0,
      S(5) => pkg_rd_last0_carry_i_3_n_0,
      S(4) => pkg_rd_last0_carry_i_4_n_0,
      S(3) => pkg_rd_last0_carry_i_5_n_0,
      S(2) => pkg_rd_last0_carry_i_6_n_0,
      S(1) => pkg_rd_last0_carry_i_7_n_0,
      S(0) => pkg_rd_last0_carry_i_8_n_0
    );
\pkg_rd_last0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => pkg_rd_last0_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_pkg_rd_last0_carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => pkg_rd_last0,
      CO(1) => \pkg_rd_last0_carry__0_n_6\,
      CO(0) => \pkg_rd_last0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_pkg_rd_last0_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7 downto 3) => B"00000",
      S(2) => \pkg_rd_last0_carry__0_i_1_n_0\,
      S(1) => \pkg_rd_last0_carry__0_i_2_n_0\,
      S(0) => \pkg_rd_last0_carry__0_i_3_n_0\
    );
\pkg_rd_last0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pkg_rd_last1(31),
      I1 => rd_data_cnt_reg(31),
      I2 => pkg_rd_last1(30),
      I3 => rd_data_cnt_reg(30),
      O => \pkg_rd_last0_carry__0_i_1_n_0\
    );
\pkg_rd_last0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_data_cnt_reg(27),
      I1 => pkg_rd_last1(27),
      I2 => rd_data_cnt_reg(28),
      I3 => pkg_rd_last1(28),
      I4 => pkg_rd_last1(29),
      I5 => rd_data_cnt_reg(29),
      O => \pkg_rd_last0_carry__0_i_2_n_0\
    );
\pkg_rd_last0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_data_cnt_reg(24),
      I1 => pkg_rd_last1(24),
      I2 => rd_data_cnt_reg(25),
      I3 => pkg_rd_last1(25),
      I4 => pkg_rd_last1(26),
      I5 => rd_data_cnt_reg(26),
      O => \pkg_rd_last0_carry__0_i_3_n_0\
    );
pkg_rd_last0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_data_cnt_reg(23),
      I1 => pkg_rd_last1(23),
      I2 => rd_data_cnt_reg(21),
      I3 => pkg_rd_last1(21),
      I4 => pkg_rd_last1(22),
      I5 => rd_data_cnt_reg(22),
      O => pkg_rd_last0_carry_i_1_n_0
    );
pkg_rd_last0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_data_cnt_reg(18),
      I1 => pkg_rd_last1(18),
      I2 => rd_data_cnt_reg(19),
      I3 => pkg_rd_last1(19),
      I4 => pkg_rd_last1(20),
      I5 => rd_data_cnt_reg(20),
      O => pkg_rd_last0_carry_i_2_n_0
    );
pkg_rd_last0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_data_cnt_reg(15),
      I1 => pkg_rd_last1(15),
      I2 => rd_data_cnt_reg(16),
      I3 => pkg_rd_last1(16),
      I4 => pkg_rd_last1(17),
      I5 => rd_data_cnt_reg(17),
      O => pkg_rd_last0_carry_i_3_n_0
    );
pkg_rd_last0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_data_cnt_reg(12),
      I1 => pkg_rd_last1(12),
      I2 => rd_data_cnt_reg(13),
      I3 => pkg_rd_last1(13),
      I4 => pkg_rd_last1(14),
      I5 => rd_data_cnt_reg(14),
      O => pkg_rd_last0_carry_i_4_n_0
    );
pkg_rd_last0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_data_cnt_reg(9),
      I1 => pkg_rd_last1(9),
      I2 => rd_data_cnt_reg(10),
      I3 => pkg_rd_last1(10),
      I4 => pkg_rd_last1(11),
      I5 => rd_data_cnt_reg(11),
      O => pkg_rd_last0_carry_i_5_n_0
    );
pkg_rd_last0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_data_cnt_reg(8),
      I1 => pkg_rd_last1(8),
      I2 => rd_data_cnt_reg(6),
      I3 => pkg_rd_last1(6),
      I4 => pkg_rd_last1(7),
      I5 => rd_data_cnt_reg(7),
      O => pkg_rd_last0_carry_i_6_n_0
    );
pkg_rd_last0_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_data_cnt_reg(5),
      I1 => pkg_rd_last1(5),
      I2 => rd_data_cnt_reg(3),
      I3 => pkg_rd_last1(3),
      I4 => pkg_rd_last1(4),
      I5 => rd_data_cnt_reg(4),
      O => pkg_rd_last0_carry_i_7_n_0
    );
pkg_rd_last0_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => pkg_rd_size(0),
      I1 => rd_data_cnt_reg(0),
      I2 => rd_data_cnt_reg(2),
      I3 => pkg_rd_last1(2),
      I4 => rd_data_cnt_reg(1),
      I5 => pkg_rd_last1(1),
      O => pkg_rd_last0_carry_i_8_n_0
    );
pkg_rd_last1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => pkg_rd_size(0),
      CI_TOP => '0',
      CO(7) => pkg_rd_last1_carry_n_0,
      CO(6) => pkg_rd_last1_carry_n_1,
      CO(5) => pkg_rd_last1_carry_n_2,
      CO(4) => pkg_rd_last1_carry_n_3,
      CO(3) => pkg_rd_last1_carry_n_4,
      CO(2) => pkg_rd_last1_carry_n_5,
      CO(1) => pkg_rd_last1_carry_n_6,
      CO(0) => pkg_rd_last1_carry_n_7,
      DI(7 downto 0) => pkg_rd_size(8 downto 1),
      O(7 downto 0) => pkg_rd_last1(8 downto 1),
      S(7) => pkg_rd_last1_carry_i_1_n_0,
      S(6) => pkg_rd_last1_carry_i_2_n_0,
      S(5) => pkg_rd_last1_carry_i_3_n_0,
      S(4) => pkg_rd_last1_carry_i_4_n_0,
      S(3) => pkg_rd_last1_carry_i_5_n_0,
      S(2) => pkg_rd_last1_carry_i_6_n_0,
      S(1) => pkg_rd_last1_carry_i_7_n_0,
      S(0) => pkg_rd_last1_carry_i_8_n_0
    );
\pkg_rd_last1_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => pkg_rd_last1_carry_n_0,
      CI_TOP => '0',
      CO(7) => \pkg_rd_last1_carry__0_n_0\,
      CO(6) => \pkg_rd_last1_carry__0_n_1\,
      CO(5) => \pkg_rd_last1_carry__0_n_2\,
      CO(4) => \pkg_rd_last1_carry__0_n_3\,
      CO(3) => \pkg_rd_last1_carry__0_n_4\,
      CO(2) => \pkg_rd_last1_carry__0_n_5\,
      CO(1) => \pkg_rd_last1_carry__0_n_6\,
      CO(0) => \pkg_rd_last1_carry__0_n_7\,
      DI(7 downto 0) => pkg_rd_size(16 downto 9),
      O(7 downto 0) => pkg_rd_last1(16 downto 9),
      S(7) => \pkg_rd_last1_carry__0_i_1_n_0\,
      S(6) => \pkg_rd_last1_carry__0_i_2_n_0\,
      S(5) => \pkg_rd_last1_carry__0_i_3_n_0\,
      S(4) => \pkg_rd_last1_carry__0_i_4_n_0\,
      S(3) => \pkg_rd_last1_carry__0_i_5_n_0\,
      S(2) => \pkg_rd_last1_carry__0_i_6_n_0\,
      S(1) => \pkg_rd_last1_carry__0_i_7_n_0\,
      S(0) => \pkg_rd_last1_carry__0_i_8_n_0\
    );
\pkg_rd_last1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(16),
      O => \pkg_rd_last1_carry__0_i_1_n_0\
    );
\pkg_rd_last1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(15),
      O => \pkg_rd_last1_carry__0_i_2_n_0\
    );
\pkg_rd_last1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(14),
      O => \pkg_rd_last1_carry__0_i_3_n_0\
    );
\pkg_rd_last1_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(13),
      O => \pkg_rd_last1_carry__0_i_4_n_0\
    );
\pkg_rd_last1_carry__0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(12),
      O => \pkg_rd_last1_carry__0_i_5_n_0\
    );
\pkg_rd_last1_carry__0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(11),
      O => \pkg_rd_last1_carry__0_i_6_n_0\
    );
\pkg_rd_last1_carry__0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(10),
      O => \pkg_rd_last1_carry__0_i_7_n_0\
    );
\pkg_rd_last1_carry__0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(9),
      O => \pkg_rd_last1_carry__0_i_8_n_0\
    );
\pkg_rd_last1_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \pkg_rd_last1_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \pkg_rd_last1_carry__1_n_0\,
      CO(6) => \pkg_rd_last1_carry__1_n_1\,
      CO(5) => \pkg_rd_last1_carry__1_n_2\,
      CO(4) => \pkg_rd_last1_carry__1_n_3\,
      CO(3) => \pkg_rd_last1_carry__1_n_4\,
      CO(2) => \pkg_rd_last1_carry__1_n_5\,
      CO(1) => \pkg_rd_last1_carry__1_n_6\,
      CO(0) => \pkg_rd_last1_carry__1_n_7\,
      DI(7 downto 0) => pkg_rd_size(24 downto 17),
      O(7 downto 0) => pkg_rd_last1(24 downto 17),
      S(7) => \pkg_rd_last1_carry__1_i_1_n_0\,
      S(6) => \pkg_rd_last1_carry__1_i_2_n_0\,
      S(5) => \pkg_rd_last1_carry__1_i_3_n_0\,
      S(4) => \pkg_rd_last1_carry__1_i_4_n_0\,
      S(3) => \pkg_rd_last1_carry__1_i_5_n_0\,
      S(2) => \pkg_rd_last1_carry__1_i_6_n_0\,
      S(1) => \pkg_rd_last1_carry__1_i_7_n_0\,
      S(0) => \pkg_rd_last1_carry__1_i_8_n_0\
    );
\pkg_rd_last1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(24),
      O => \pkg_rd_last1_carry__1_i_1_n_0\
    );
\pkg_rd_last1_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(23),
      O => \pkg_rd_last1_carry__1_i_2_n_0\
    );
\pkg_rd_last1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(22),
      O => \pkg_rd_last1_carry__1_i_3_n_0\
    );
\pkg_rd_last1_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(21),
      O => \pkg_rd_last1_carry__1_i_4_n_0\
    );
\pkg_rd_last1_carry__1_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(20),
      O => \pkg_rd_last1_carry__1_i_5_n_0\
    );
\pkg_rd_last1_carry__1_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(19),
      O => \pkg_rd_last1_carry__1_i_6_n_0\
    );
\pkg_rd_last1_carry__1_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(18),
      O => \pkg_rd_last1_carry__1_i_7_n_0\
    );
\pkg_rd_last1_carry__1_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(17),
      O => \pkg_rd_last1_carry__1_i_8_n_0\
    );
\pkg_rd_last1_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \pkg_rd_last1_carry__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_pkg_rd_last1_carry__2_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \pkg_rd_last1_carry__2_n_2\,
      CO(4) => \pkg_rd_last1_carry__2_n_3\,
      CO(3) => \pkg_rd_last1_carry__2_n_4\,
      CO(2) => \pkg_rd_last1_carry__2_n_5\,
      CO(1) => \pkg_rd_last1_carry__2_n_6\,
      CO(0) => \pkg_rd_last1_carry__2_n_7\,
      DI(7 downto 6) => B"00",
      DI(5 downto 0) => pkg_rd_size(30 downto 25),
      O(7) => \NLW_pkg_rd_last1_carry__2_O_UNCONNECTED\(7),
      O(6 downto 0) => pkg_rd_last1(31 downto 25),
      S(7) => '0',
      S(6) => \pkg_rd_last1_carry__2_i_1_n_0\,
      S(5) => \pkg_rd_last1_carry__2_i_2_n_0\,
      S(4) => \pkg_rd_last1_carry__2_i_3_n_0\,
      S(3) => \pkg_rd_last1_carry__2_i_4_n_0\,
      S(2) => \pkg_rd_last1_carry__2_i_5_n_0\,
      S(1) => \pkg_rd_last1_carry__2_i_6_n_0\,
      S(0) => \pkg_rd_last1_carry__2_i_7_n_0\
    );
\pkg_rd_last1_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(31),
      O => \pkg_rd_last1_carry__2_i_1_n_0\
    );
\pkg_rd_last1_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(30),
      O => \pkg_rd_last1_carry__2_i_2_n_0\
    );
\pkg_rd_last1_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(29),
      O => \pkg_rd_last1_carry__2_i_3_n_0\
    );
\pkg_rd_last1_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(28),
      O => \pkg_rd_last1_carry__2_i_4_n_0\
    );
\pkg_rd_last1_carry__2_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(27),
      O => \pkg_rd_last1_carry__2_i_5_n_0\
    );
\pkg_rd_last1_carry__2_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(26),
      O => \pkg_rd_last1_carry__2_i_6_n_0\
    );
\pkg_rd_last1_carry__2_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(25),
      O => \pkg_rd_last1_carry__2_i_7_n_0\
    );
pkg_rd_last1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(8),
      O => pkg_rd_last1_carry_i_1_n_0
    );
pkg_rd_last1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(7),
      O => pkg_rd_last1_carry_i_2_n_0
    );
pkg_rd_last1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(6),
      O => pkg_rd_last1_carry_i_3_n_0
    );
pkg_rd_last1_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(5),
      O => pkg_rd_last1_carry_i_4_n_0
    );
pkg_rd_last1_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(4),
      O => pkg_rd_last1_carry_i_5_n_0
    );
pkg_rd_last1_carry_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(3),
      O => pkg_rd_last1_carry_i_6_n_0
    );
pkg_rd_last1_carry_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(2),
      O => pkg_rd_last1_carry_i_7_n_0
    );
pkg_rd_last1_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_rd_size(1),
      O => pkg_rd_last1_carry_i_8_n_0
    );
pkg_rd_last_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pkg_rd_last0,
      I1 => \^axi_rready_reg_0\,
      I2 => m00_axi_rvalid,
      O => pkg_rd_last
    );
pkg_wr_en_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m00_axi_wready,
      I1 => \^w_cycle_flag_reg_0\,
      O => \^m00_axi_wready_0\
    );
pkg_wr_last0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => pkg_wr_last0_carry_n_0,
      CO(6) => pkg_wr_last0_carry_n_1,
      CO(5) => pkg_wr_last0_carry_n_2,
      CO(4) => pkg_wr_last0_carry_n_3,
      CO(3) => pkg_wr_last0_carry_n_4,
      CO(2) => pkg_wr_last0_carry_n_5,
      CO(1) => pkg_wr_last0_carry_n_6,
      CO(0) => pkg_wr_last0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => NLW_pkg_wr_last0_carry_O_UNCONNECTED(7 downto 0),
      S(7) => pkg_wr_last0_carry_i_1_n_0,
      S(6) => pkg_wr_last0_carry_i_2_n_0,
      S(5) => pkg_wr_last0_carry_i_3_n_0,
      S(4) => pkg_wr_last0_carry_i_4_n_0,
      S(3) => pkg_wr_last0_carry_i_5_n_0,
      S(2) => pkg_wr_last0_carry_i_6_n_0,
      S(1) => pkg_wr_last0_carry_i_7_n_0,
      S(0) => pkg_wr_last0_carry_i_8_n_0
    );
\pkg_wr_last0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => pkg_wr_last0_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_pkg_wr_last0_carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => pkg_wr_last0,
      CO(1) => \pkg_wr_last0_carry__0_n_6\,
      CO(0) => \pkg_wr_last0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_pkg_wr_last0_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7 downto 3) => B"00000",
      S(2) => \pkg_wr_last0_carry__0_i_1_n_0\,
      S(1) => \pkg_wr_last0_carry__0_i_2_n_0\,
      S(0) => \pkg_wr_last0_carry__0_i_3_n_0\
    );
\pkg_wr_last0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pkg_wr_last1(31),
      I1 => wr_data_cnt_reg(31),
      I2 => pkg_wr_last1(30),
      I3 => wr_data_cnt_reg(30),
      O => \pkg_wr_last0_carry__0_i_1_n_0\
    );
\pkg_wr_last0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => wr_data_cnt_reg(27),
      I1 => pkg_wr_last1(27),
      I2 => wr_data_cnt_reg(28),
      I3 => pkg_wr_last1(28),
      I4 => pkg_wr_last1(29),
      I5 => wr_data_cnt_reg(29),
      O => \pkg_wr_last0_carry__0_i_2_n_0\
    );
\pkg_wr_last0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => wr_data_cnt_reg(25),
      I1 => pkg_wr_last1(25),
      I2 => wr_data_cnt_reg(24),
      I3 => pkg_wr_last1(24),
      I4 => pkg_wr_last1(26),
      I5 => wr_data_cnt_reg(26),
      O => \pkg_wr_last0_carry__0_i_3_n_0\
    );
pkg_wr_last0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => wr_data_cnt_reg(21),
      I1 => pkg_wr_last1(21),
      I2 => wr_data_cnt_reg(22),
      I3 => pkg_wr_last1(22),
      I4 => pkg_wr_last1(23),
      I5 => wr_data_cnt_reg(23),
      O => pkg_wr_last0_carry_i_1_n_0
    );
pkg_wr_last0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => wr_data_cnt_reg(18),
      I1 => pkg_wr_last1(18),
      I2 => wr_data_cnt_reg(19),
      I3 => pkg_wr_last1(19),
      I4 => pkg_wr_last1(20),
      I5 => wr_data_cnt_reg(20),
      O => pkg_wr_last0_carry_i_2_n_0
    );
pkg_wr_last0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => wr_data_cnt_reg(15),
      I1 => pkg_wr_last1(15),
      I2 => wr_data_cnt_reg(16),
      I3 => pkg_wr_last1(16),
      I4 => pkg_wr_last1(17),
      I5 => wr_data_cnt_reg(17),
      O => pkg_wr_last0_carry_i_3_n_0
    );
pkg_wr_last0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => wr_data_cnt_reg(13),
      I1 => pkg_wr_last1(13),
      I2 => wr_data_cnt_reg(12),
      I3 => pkg_wr_last1(12),
      I4 => pkg_wr_last1(14),
      I5 => wr_data_cnt_reg(14),
      O => pkg_wr_last0_carry_i_4_n_0
    );
pkg_wr_last0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => wr_data_cnt_reg(11),
      I1 => pkg_wr_last1(11),
      I2 => wr_data_cnt_reg(9),
      I3 => pkg_wr_last1(9),
      I4 => pkg_wr_last1(10),
      I5 => wr_data_cnt_reg(10),
      O => pkg_wr_last0_carry_i_5_n_0
    );
pkg_wr_last0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => wr_data_cnt_reg(8),
      I1 => pkg_wr_last1(8),
      I2 => wr_data_cnt_reg(6),
      I3 => pkg_wr_last1(6),
      I4 => pkg_wr_last1(7),
      I5 => wr_data_cnt_reg(7),
      O => pkg_wr_last0_carry_i_6_n_0
    );
pkg_wr_last0_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => wr_data_cnt_reg(3),
      I1 => pkg_wr_last1(3),
      I2 => wr_data_cnt_reg(4),
      I3 => pkg_wr_last1(4),
      I4 => pkg_wr_last1(5),
      I5 => wr_data_cnt_reg(5),
      O => pkg_wr_last0_carry_i_7_n_0
    );
pkg_wr_last0_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => pkg_wr_size(0),
      I1 => wr_data_cnt_reg(0),
      I2 => wr_data_cnt_reg(2),
      I3 => pkg_wr_last1(2),
      I4 => wr_data_cnt_reg(1),
      I5 => pkg_wr_last1(1),
      O => pkg_wr_last0_carry_i_8_n_0
    );
pkg_wr_last1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => pkg_wr_size(0),
      CI_TOP => '0',
      CO(7) => pkg_wr_last1_carry_n_0,
      CO(6) => pkg_wr_last1_carry_n_1,
      CO(5) => pkg_wr_last1_carry_n_2,
      CO(4) => pkg_wr_last1_carry_n_3,
      CO(3) => pkg_wr_last1_carry_n_4,
      CO(2) => pkg_wr_last1_carry_n_5,
      CO(1) => pkg_wr_last1_carry_n_6,
      CO(0) => pkg_wr_last1_carry_n_7,
      DI(7 downto 0) => pkg_wr_size(8 downto 1),
      O(7 downto 0) => pkg_wr_last1(8 downto 1),
      S(7) => pkg_wr_last1_carry_i_1_n_0,
      S(6) => pkg_wr_last1_carry_i_2_n_0,
      S(5) => pkg_wr_last1_carry_i_3_n_0,
      S(4) => pkg_wr_last1_carry_i_4_n_0,
      S(3) => pkg_wr_last1_carry_i_5_n_0,
      S(2) => pkg_wr_last1_carry_i_6_n_0,
      S(1) => pkg_wr_last1_carry_i_7_n_0,
      S(0) => pkg_wr_last1_carry_i_8_n_0
    );
\pkg_wr_last1_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => pkg_wr_last1_carry_n_0,
      CI_TOP => '0',
      CO(7) => \pkg_wr_last1_carry__0_n_0\,
      CO(6) => \pkg_wr_last1_carry__0_n_1\,
      CO(5) => \pkg_wr_last1_carry__0_n_2\,
      CO(4) => \pkg_wr_last1_carry__0_n_3\,
      CO(3) => \pkg_wr_last1_carry__0_n_4\,
      CO(2) => \pkg_wr_last1_carry__0_n_5\,
      CO(1) => \pkg_wr_last1_carry__0_n_6\,
      CO(0) => \pkg_wr_last1_carry__0_n_7\,
      DI(7 downto 0) => pkg_wr_size(16 downto 9),
      O(7 downto 0) => pkg_wr_last1(16 downto 9),
      S(7) => \pkg_wr_last1_carry__0_i_1_n_0\,
      S(6) => \pkg_wr_last1_carry__0_i_2_n_0\,
      S(5) => \pkg_wr_last1_carry__0_i_3_n_0\,
      S(4) => \pkg_wr_last1_carry__0_i_4_n_0\,
      S(3) => \pkg_wr_last1_carry__0_i_5_n_0\,
      S(2) => \pkg_wr_last1_carry__0_i_6_n_0\,
      S(1) => \pkg_wr_last1_carry__0_i_7_n_0\,
      S(0) => \pkg_wr_last1_carry__0_i_8_n_0\
    );
\pkg_wr_last1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(16),
      O => \pkg_wr_last1_carry__0_i_1_n_0\
    );
\pkg_wr_last1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(15),
      O => \pkg_wr_last1_carry__0_i_2_n_0\
    );
\pkg_wr_last1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(14),
      O => \pkg_wr_last1_carry__0_i_3_n_0\
    );
\pkg_wr_last1_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(13),
      O => \pkg_wr_last1_carry__0_i_4_n_0\
    );
\pkg_wr_last1_carry__0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(12),
      O => \pkg_wr_last1_carry__0_i_5_n_0\
    );
\pkg_wr_last1_carry__0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(11),
      O => \pkg_wr_last1_carry__0_i_6_n_0\
    );
\pkg_wr_last1_carry__0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(10),
      O => \pkg_wr_last1_carry__0_i_7_n_0\
    );
\pkg_wr_last1_carry__0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(9),
      O => \pkg_wr_last1_carry__0_i_8_n_0\
    );
\pkg_wr_last1_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \pkg_wr_last1_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \pkg_wr_last1_carry__1_n_0\,
      CO(6) => \pkg_wr_last1_carry__1_n_1\,
      CO(5) => \pkg_wr_last1_carry__1_n_2\,
      CO(4) => \pkg_wr_last1_carry__1_n_3\,
      CO(3) => \pkg_wr_last1_carry__1_n_4\,
      CO(2) => \pkg_wr_last1_carry__1_n_5\,
      CO(1) => \pkg_wr_last1_carry__1_n_6\,
      CO(0) => \pkg_wr_last1_carry__1_n_7\,
      DI(7 downto 0) => pkg_wr_size(24 downto 17),
      O(7 downto 0) => pkg_wr_last1(24 downto 17),
      S(7) => \pkg_wr_last1_carry__1_i_1_n_0\,
      S(6) => \pkg_wr_last1_carry__1_i_2_n_0\,
      S(5) => \pkg_wr_last1_carry__1_i_3_n_0\,
      S(4) => \pkg_wr_last1_carry__1_i_4_n_0\,
      S(3) => \pkg_wr_last1_carry__1_i_5_n_0\,
      S(2) => \pkg_wr_last1_carry__1_i_6_n_0\,
      S(1) => \pkg_wr_last1_carry__1_i_7_n_0\,
      S(0) => \pkg_wr_last1_carry__1_i_8_n_0\
    );
\pkg_wr_last1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(24),
      O => \pkg_wr_last1_carry__1_i_1_n_0\
    );
\pkg_wr_last1_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(23),
      O => \pkg_wr_last1_carry__1_i_2_n_0\
    );
\pkg_wr_last1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(22),
      O => \pkg_wr_last1_carry__1_i_3_n_0\
    );
\pkg_wr_last1_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(21),
      O => \pkg_wr_last1_carry__1_i_4_n_0\
    );
\pkg_wr_last1_carry__1_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(20),
      O => \pkg_wr_last1_carry__1_i_5_n_0\
    );
\pkg_wr_last1_carry__1_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(19),
      O => \pkg_wr_last1_carry__1_i_6_n_0\
    );
\pkg_wr_last1_carry__1_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(18),
      O => \pkg_wr_last1_carry__1_i_7_n_0\
    );
\pkg_wr_last1_carry__1_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(17),
      O => \pkg_wr_last1_carry__1_i_8_n_0\
    );
\pkg_wr_last1_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \pkg_wr_last1_carry__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_pkg_wr_last1_carry__2_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \pkg_wr_last1_carry__2_n_2\,
      CO(4) => \pkg_wr_last1_carry__2_n_3\,
      CO(3) => \pkg_wr_last1_carry__2_n_4\,
      CO(2) => \pkg_wr_last1_carry__2_n_5\,
      CO(1) => \pkg_wr_last1_carry__2_n_6\,
      CO(0) => \pkg_wr_last1_carry__2_n_7\,
      DI(7 downto 6) => B"00",
      DI(5 downto 0) => pkg_wr_size(30 downto 25),
      O(7) => \NLW_pkg_wr_last1_carry__2_O_UNCONNECTED\(7),
      O(6 downto 0) => pkg_wr_last1(31 downto 25),
      S(7) => '0',
      S(6) => \pkg_wr_last1_carry__2_i_1_n_0\,
      S(5) => \pkg_wr_last1_carry__2_i_2_n_0\,
      S(4) => \pkg_wr_last1_carry__2_i_3_n_0\,
      S(3) => \pkg_wr_last1_carry__2_i_4_n_0\,
      S(2) => \pkg_wr_last1_carry__2_i_5_n_0\,
      S(1) => \pkg_wr_last1_carry__2_i_6_n_0\,
      S(0) => \pkg_wr_last1_carry__2_i_7_n_0\
    );
\pkg_wr_last1_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(31),
      O => \pkg_wr_last1_carry__2_i_1_n_0\
    );
\pkg_wr_last1_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(30),
      O => \pkg_wr_last1_carry__2_i_2_n_0\
    );
\pkg_wr_last1_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(29),
      O => \pkg_wr_last1_carry__2_i_3_n_0\
    );
\pkg_wr_last1_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(28),
      O => \pkg_wr_last1_carry__2_i_4_n_0\
    );
\pkg_wr_last1_carry__2_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(27),
      O => \pkg_wr_last1_carry__2_i_5_n_0\
    );
\pkg_wr_last1_carry__2_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(26),
      O => \pkg_wr_last1_carry__2_i_6_n_0\
    );
\pkg_wr_last1_carry__2_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(25),
      O => \pkg_wr_last1_carry__2_i_7_n_0\
    );
pkg_wr_last1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(8),
      O => pkg_wr_last1_carry_i_1_n_0
    );
pkg_wr_last1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(7),
      O => pkg_wr_last1_carry_i_2_n_0
    );
pkg_wr_last1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(6),
      O => pkg_wr_last1_carry_i_3_n_0
    );
pkg_wr_last1_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(5),
      O => pkg_wr_last1_carry_i_4_n_0
    );
pkg_wr_last1_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(4),
      O => pkg_wr_last1_carry_i_5_n_0
    );
pkg_wr_last1_carry_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(3),
      O => pkg_wr_last1_carry_i_6_n_0
    );
pkg_wr_last1_carry_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(2),
      O => pkg_wr_last1_carry_i_7_n_0
    );
pkg_wr_last1_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkg_wr_size(1),
      O => pkg_wr_last1_carry_i_8_n_0
    );
pkg_wr_last_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pkg_wr_last0,
      I1 => m00_axi_wready,
      I2 => \^w_cycle_flag_reg_0\,
      O => pkg_wr_last
    );
r_cycle_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FF070000000000"
    )
        port map (
      I0 => \^axi_arvalid_reg_0\,
      I1 => m00_axi_arready,
      I2 => read_data_flag,
      I3 => r_fdma_locked,
      I4 => r_cycle_flag,
      I5 => m00_axi_aresetn,
      O => r_cycle_flag_i_1_n_0
    );
r_cycle_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => r_cycle_flag_i_1_n_0,
      Q => r_cycle_flag,
      R => '0'
    );
r_fdma_locked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4EEEEEEE"
    )
        port map (
      I0 => r_fdma_locked,
      I1 => pkg_rd_areq,
      I2 => m00_axi_rvalid,
      I3 => \^axi_rready_reg_0\,
      I4 => pkg_rd_last0,
      O => r_fdma_locked_i_1_n_0
    );
r_fdma_locked_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => r_fdma_locked_i_1_n_0,
      Q => r_fdma_locked,
      R => clear
    );
\rd_data_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => m00_axi_rvalid,
      I1 => \^axi_rready_reg_0\,
      I2 => pkg_rd_last0,
      I3 => m00_axi_aresetn,
      O => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_data_cnt_reg(0),
      O => \rd_data_cnt[0]_i_3_n_0\
    );
\rd_data_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[0]_i_2_n_15\,
      Q => rd_data_cnt_reg(0),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \rd_data_cnt_reg[0]_i_2_n_0\,
      CO(6) => \rd_data_cnt_reg[0]_i_2_n_1\,
      CO(5) => \rd_data_cnt_reg[0]_i_2_n_2\,
      CO(4) => \rd_data_cnt_reg[0]_i_2_n_3\,
      CO(3) => \rd_data_cnt_reg[0]_i_2_n_4\,
      CO(2) => \rd_data_cnt_reg[0]_i_2_n_5\,
      CO(1) => \rd_data_cnt_reg[0]_i_2_n_6\,
      CO(0) => \rd_data_cnt_reg[0]_i_2_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \rd_data_cnt_reg[0]_i_2_n_8\,
      O(6) => \rd_data_cnt_reg[0]_i_2_n_9\,
      O(5) => \rd_data_cnt_reg[0]_i_2_n_10\,
      O(4) => \rd_data_cnt_reg[0]_i_2_n_11\,
      O(3) => \rd_data_cnt_reg[0]_i_2_n_12\,
      O(2) => \rd_data_cnt_reg[0]_i_2_n_13\,
      O(1) => \rd_data_cnt_reg[0]_i_2_n_14\,
      O(0) => \rd_data_cnt_reg[0]_i_2_n_15\,
      S(7 downto 1) => rd_data_cnt_reg(7 downto 1),
      S(0) => \rd_data_cnt[0]_i_3_n_0\
    );
\rd_data_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[8]_i_1_n_13\,
      Q => rd_data_cnt_reg(10),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[8]_i_1_n_12\,
      Q => rd_data_cnt_reg(11),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[8]_i_1_n_11\,
      Q => rd_data_cnt_reg(12),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[8]_i_1_n_10\,
      Q => rd_data_cnt_reg(13),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[8]_i_1_n_9\,
      Q => rd_data_cnt_reg(14),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[8]_i_1_n_8\,
      Q => rd_data_cnt_reg(15),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[16]_i_1_n_15\,
      Q => rd_data_cnt_reg(16),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \rd_data_cnt_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \rd_data_cnt_reg[16]_i_1_n_0\,
      CO(6) => \rd_data_cnt_reg[16]_i_1_n_1\,
      CO(5) => \rd_data_cnt_reg[16]_i_1_n_2\,
      CO(4) => \rd_data_cnt_reg[16]_i_1_n_3\,
      CO(3) => \rd_data_cnt_reg[16]_i_1_n_4\,
      CO(2) => \rd_data_cnt_reg[16]_i_1_n_5\,
      CO(1) => \rd_data_cnt_reg[16]_i_1_n_6\,
      CO(0) => \rd_data_cnt_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \rd_data_cnt_reg[16]_i_1_n_8\,
      O(6) => \rd_data_cnt_reg[16]_i_1_n_9\,
      O(5) => \rd_data_cnt_reg[16]_i_1_n_10\,
      O(4) => \rd_data_cnt_reg[16]_i_1_n_11\,
      O(3) => \rd_data_cnt_reg[16]_i_1_n_12\,
      O(2) => \rd_data_cnt_reg[16]_i_1_n_13\,
      O(1) => \rd_data_cnt_reg[16]_i_1_n_14\,
      O(0) => \rd_data_cnt_reg[16]_i_1_n_15\,
      S(7 downto 0) => rd_data_cnt_reg(23 downto 16)
    );
\rd_data_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[16]_i_1_n_14\,
      Q => rd_data_cnt_reg(17),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[16]_i_1_n_13\,
      Q => rd_data_cnt_reg(18),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[16]_i_1_n_12\,
      Q => rd_data_cnt_reg(19),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[0]_i_2_n_14\,
      Q => rd_data_cnt_reg(1),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[16]_i_1_n_11\,
      Q => rd_data_cnt_reg(20),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[16]_i_1_n_10\,
      Q => rd_data_cnt_reg(21),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[16]_i_1_n_9\,
      Q => rd_data_cnt_reg(22),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[16]_i_1_n_8\,
      Q => rd_data_cnt_reg(23),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[24]_i_1_n_15\,
      Q => rd_data_cnt_reg(24),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \rd_data_cnt_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_rd_data_cnt_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \rd_data_cnt_reg[24]_i_1_n_1\,
      CO(5) => \rd_data_cnt_reg[24]_i_1_n_2\,
      CO(4) => \rd_data_cnt_reg[24]_i_1_n_3\,
      CO(3) => \rd_data_cnt_reg[24]_i_1_n_4\,
      CO(2) => \rd_data_cnt_reg[24]_i_1_n_5\,
      CO(1) => \rd_data_cnt_reg[24]_i_1_n_6\,
      CO(0) => \rd_data_cnt_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \rd_data_cnt_reg[24]_i_1_n_8\,
      O(6) => \rd_data_cnt_reg[24]_i_1_n_9\,
      O(5) => \rd_data_cnt_reg[24]_i_1_n_10\,
      O(4) => \rd_data_cnt_reg[24]_i_1_n_11\,
      O(3) => \rd_data_cnt_reg[24]_i_1_n_12\,
      O(2) => \rd_data_cnt_reg[24]_i_1_n_13\,
      O(1) => \rd_data_cnt_reg[24]_i_1_n_14\,
      O(0) => \rd_data_cnt_reg[24]_i_1_n_15\,
      S(7 downto 0) => rd_data_cnt_reg(31 downto 24)
    );
\rd_data_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[24]_i_1_n_14\,
      Q => rd_data_cnt_reg(25),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[24]_i_1_n_13\,
      Q => rd_data_cnt_reg(26),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[24]_i_1_n_12\,
      Q => rd_data_cnt_reg(27),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[24]_i_1_n_11\,
      Q => rd_data_cnt_reg(28),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[24]_i_1_n_10\,
      Q => rd_data_cnt_reg(29),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[0]_i_2_n_13\,
      Q => rd_data_cnt_reg(2),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[24]_i_1_n_9\,
      Q => rd_data_cnt_reg(30),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[24]_i_1_n_8\,
      Q => rd_data_cnt_reg(31),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[0]_i_2_n_12\,
      Q => rd_data_cnt_reg(3),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[0]_i_2_n_11\,
      Q => rd_data_cnt_reg(4),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[0]_i_2_n_10\,
      Q => rd_data_cnt_reg(5),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[0]_i_2_n_9\,
      Q => rd_data_cnt_reg(6),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[0]_i_2_n_8\,
      Q => rd_data_cnt_reg(7),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[8]_i_1_n_15\,
      Q => rd_data_cnt_reg(8),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
\rd_data_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \rd_data_cnt_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \rd_data_cnt_reg[8]_i_1_n_0\,
      CO(6) => \rd_data_cnt_reg[8]_i_1_n_1\,
      CO(5) => \rd_data_cnt_reg[8]_i_1_n_2\,
      CO(4) => \rd_data_cnt_reg[8]_i_1_n_3\,
      CO(3) => \rd_data_cnt_reg[8]_i_1_n_4\,
      CO(2) => \rd_data_cnt_reg[8]_i_1_n_5\,
      CO(1) => \rd_data_cnt_reg[8]_i_1_n_6\,
      CO(0) => \rd_data_cnt_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \rd_data_cnt_reg[8]_i_1_n_8\,
      O(6) => \rd_data_cnt_reg[8]_i_1_n_9\,
      O(5) => \rd_data_cnt_reg[8]_i_1_n_10\,
      O(4) => \rd_data_cnt_reg[8]_i_1_n_11\,
      O(3) => \rd_data_cnt_reg[8]_i_1_n_12\,
      O(2) => \rd_data_cnt_reg[8]_i_1_n_13\,
      O(1) => \rd_data_cnt_reg[8]_i_1_n_14\,
      O(0) => \rd_data_cnt_reg[8]_i_1_n_15\,
      S(7 downto 0) => rd_data_cnt_reg(15 downto 8)
    );
\rd_data_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_rvalid_0\,
      D => \rd_data_cnt_reg[8]_i_1_n_14\,
      Q => rd_data_cnt_reg(9),
      R => \rd_data_cnt[0]_i_1_n_0\
    );
read_data_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080FF80FF80FF80"
    )
        port map (
      I0 => \^axi_arvalid_reg_0\,
      I1 => m00_axi_arready,
      I2 => r_cycle_flag,
      I3 => read_data_flag,
      I4 => m00_axi_rlast,
      I5 => \^m00_axi_rvalid_0\,
      O => read_data_flag_i_1_n_0
    );
read_data_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => read_data_flag_i_1_n_0,
      Q => read_data_flag,
      R => clear
    );
w_cycle_flag_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \^m00_axi_wlast\,
      I1 => \^w_cycle_flag_reg_0\,
      I2 => w_fdma_locked,
      O => w_cycle_flag_i_1_n_0
    );
w_cycle_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => w_cycle_flag_i_1_n_0,
      Q => \^w_cycle_flag_reg_0\,
      R => clear
    );
w_fdma_locked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4EEEEEEE"
    )
        port map (
      I0 => w_fdma_locked,
      I1 => pkg_wr_areq,
      I2 => \^w_cycle_flag_reg_0\,
      I3 => m00_axi_wready,
      I4 => pkg_wr_last0,
      O => w_fdma_locked_i_1_n_0
    );
w_fdma_locked_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => w_fdma_locked_i_1_n_0,
      Q => w_fdma_locked,
      R => clear
    );
\w_word_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55455555"
    )
        port map (
      I0 => w_word_cnt(0),
      I1 => w_word_cnt(2),
      I2 => w_word_cnt(3),
      I3 => w_word_cnt(1),
      I4 => axi_wlast_i_2_n_0,
      O => \w_word_cnt[0]_i_1_n_0\
    );
\w_word_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w_word_cnt(1),
      I1 => w_word_cnt(0),
      O => \w_word_cnt[1]_i_1_n_0\
    );
\w_word_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => w_word_cnt(2),
      I1 => w_word_cnt(1),
      I2 => w_word_cnt(0),
      O => \w_word_cnt[2]_i_1_n_0\
    );
\w_word_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7E807F80"
    )
        port map (
      I0 => w_word_cnt(2),
      I1 => w_word_cnt(1),
      I2 => w_word_cnt(0),
      I3 => w_word_cnt(3),
      I4 => axi_wlast_i_2_n_0,
      O => \w_word_cnt[3]_i_1_n_0\
    );
\w_word_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => w_word_cnt(4),
      I1 => w_word_cnt(2),
      I2 => w_word_cnt(1),
      I3 => w_word_cnt(0),
      I4 => w_word_cnt(3),
      O => \w_word_cnt[4]_i_1_n_0\
    );
\w_word_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => w_word_cnt(5),
      I1 => w_word_cnt(2),
      I2 => w_word_cnt(1),
      I3 => w_word_cnt(0),
      I4 => w_word_cnt(3),
      I5 => w_word_cnt(4),
      O => \w_word_cnt[5]_i_1_n_0\
    );
\w_word_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => w_word_cnt(6),
      I1 => \w_word_cnt[7]_i_4_n_0\,
      I2 => w_word_cnt(5),
      O => \w_word_cnt[6]_i_1_n_0\
    );
\w_word_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \w_word_cnt[7]_i_3_n_0\,
      I1 => m00_axi_wready,
      I2 => \^w_cycle_flag_reg_0\,
      O => \w_word_cnt[7]_i_1_n_0\
    );
\w_word_cnt[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => w_word_cnt(7),
      I1 => w_word_cnt(5),
      I2 => \w_word_cnt[7]_i_4_n_0\,
      I3 => w_word_cnt(6),
      O => \w_word_cnt[7]_i_2_n_0\
    );
\w_word_cnt[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => axi_wlast_i_2_n_0,
      I1 => w_word_cnt(1),
      I2 => w_word_cnt(3),
      I3 => w_word_cnt(2),
      I4 => w_word_cnt(0),
      O => \w_word_cnt[7]_i_3_n_0\
    );
\w_word_cnt[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => w_word_cnt(4),
      I1 => w_word_cnt(3),
      I2 => w_word_cnt(0),
      I3 => w_word_cnt(1),
      I4 => w_word_cnt(2),
      O => \w_word_cnt[7]_i_4_n_0\
    );
\w_word_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \w_word_cnt[7]_i_1_n_0\,
      D => \w_word_cnt[0]_i_1_n_0\,
      Q => w_word_cnt(0),
      R => clear
    );
\w_word_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \w_word_cnt[7]_i_1_n_0\,
      D => \w_word_cnt[1]_i_1_n_0\,
      Q => w_word_cnt(1),
      R => clear
    );
\w_word_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \w_word_cnt[7]_i_1_n_0\,
      D => \w_word_cnt[2]_i_1_n_0\,
      Q => w_word_cnt(2),
      R => clear
    );
\w_word_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \w_word_cnt[7]_i_1_n_0\,
      D => \w_word_cnt[3]_i_1_n_0\,
      Q => w_word_cnt(3),
      R => clear
    );
\w_word_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \w_word_cnt[7]_i_1_n_0\,
      D => \w_word_cnt[4]_i_1_n_0\,
      Q => w_word_cnt(4),
      R => clear
    );
\w_word_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \w_word_cnt[7]_i_1_n_0\,
      D => \w_word_cnt[5]_i_1_n_0\,
      Q => w_word_cnt(5),
      R => clear
    );
\w_word_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \w_word_cnt[7]_i_1_n_0\,
      D => \w_word_cnt[6]_i_1_n_0\,
      Q => w_word_cnt(6),
      R => clear
    );
\w_word_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \w_word_cnt[7]_i_1_n_0\,
      D => \w_word_cnt[7]_i_2_n_0\,
      Q => w_word_cnt(7),
      R => clear
    );
\wr_data_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => \^w_cycle_flag_reg_0\,
      I1 => m00_axi_wready,
      I2 => pkg_wr_last0,
      I3 => m00_axi_aresetn,
      O => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_data_cnt_reg(0),
      O => \wr_data_cnt[0]_i_3_n_0\
    );
\wr_data_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[0]_i_2_n_15\,
      Q => wr_data_cnt_reg(0),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \wr_data_cnt_reg[0]_i_2_n_0\,
      CO(6) => \wr_data_cnt_reg[0]_i_2_n_1\,
      CO(5) => \wr_data_cnt_reg[0]_i_2_n_2\,
      CO(4) => \wr_data_cnt_reg[0]_i_2_n_3\,
      CO(3) => \wr_data_cnt_reg[0]_i_2_n_4\,
      CO(2) => \wr_data_cnt_reg[0]_i_2_n_5\,
      CO(1) => \wr_data_cnt_reg[0]_i_2_n_6\,
      CO(0) => \wr_data_cnt_reg[0]_i_2_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \wr_data_cnt_reg[0]_i_2_n_8\,
      O(6) => \wr_data_cnt_reg[0]_i_2_n_9\,
      O(5) => \wr_data_cnt_reg[0]_i_2_n_10\,
      O(4) => \wr_data_cnt_reg[0]_i_2_n_11\,
      O(3) => \wr_data_cnt_reg[0]_i_2_n_12\,
      O(2) => \wr_data_cnt_reg[0]_i_2_n_13\,
      O(1) => \wr_data_cnt_reg[0]_i_2_n_14\,
      O(0) => \wr_data_cnt_reg[0]_i_2_n_15\,
      S(7 downto 1) => wr_data_cnt_reg(7 downto 1),
      S(0) => \wr_data_cnt[0]_i_3_n_0\
    );
\wr_data_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[8]_i_1_n_13\,
      Q => wr_data_cnt_reg(10),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[8]_i_1_n_12\,
      Q => wr_data_cnt_reg(11),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[8]_i_1_n_11\,
      Q => wr_data_cnt_reg(12),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[8]_i_1_n_10\,
      Q => wr_data_cnt_reg(13),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[8]_i_1_n_9\,
      Q => wr_data_cnt_reg(14),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[8]_i_1_n_8\,
      Q => wr_data_cnt_reg(15),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[16]_i_1_n_15\,
      Q => wr_data_cnt_reg(16),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \wr_data_cnt_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \wr_data_cnt_reg[16]_i_1_n_0\,
      CO(6) => \wr_data_cnt_reg[16]_i_1_n_1\,
      CO(5) => \wr_data_cnt_reg[16]_i_1_n_2\,
      CO(4) => \wr_data_cnt_reg[16]_i_1_n_3\,
      CO(3) => \wr_data_cnt_reg[16]_i_1_n_4\,
      CO(2) => \wr_data_cnt_reg[16]_i_1_n_5\,
      CO(1) => \wr_data_cnt_reg[16]_i_1_n_6\,
      CO(0) => \wr_data_cnt_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \wr_data_cnt_reg[16]_i_1_n_8\,
      O(6) => \wr_data_cnt_reg[16]_i_1_n_9\,
      O(5) => \wr_data_cnt_reg[16]_i_1_n_10\,
      O(4) => \wr_data_cnt_reg[16]_i_1_n_11\,
      O(3) => \wr_data_cnt_reg[16]_i_1_n_12\,
      O(2) => \wr_data_cnt_reg[16]_i_1_n_13\,
      O(1) => \wr_data_cnt_reg[16]_i_1_n_14\,
      O(0) => \wr_data_cnt_reg[16]_i_1_n_15\,
      S(7 downto 0) => wr_data_cnt_reg(23 downto 16)
    );
\wr_data_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[16]_i_1_n_14\,
      Q => wr_data_cnt_reg(17),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[16]_i_1_n_13\,
      Q => wr_data_cnt_reg(18),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[16]_i_1_n_12\,
      Q => wr_data_cnt_reg(19),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[0]_i_2_n_14\,
      Q => wr_data_cnt_reg(1),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[16]_i_1_n_11\,
      Q => wr_data_cnt_reg(20),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[16]_i_1_n_10\,
      Q => wr_data_cnt_reg(21),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[16]_i_1_n_9\,
      Q => wr_data_cnt_reg(22),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[16]_i_1_n_8\,
      Q => wr_data_cnt_reg(23),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[24]_i_1_n_15\,
      Q => wr_data_cnt_reg(24),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \wr_data_cnt_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_wr_data_cnt_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \wr_data_cnt_reg[24]_i_1_n_1\,
      CO(5) => \wr_data_cnt_reg[24]_i_1_n_2\,
      CO(4) => \wr_data_cnt_reg[24]_i_1_n_3\,
      CO(3) => \wr_data_cnt_reg[24]_i_1_n_4\,
      CO(2) => \wr_data_cnt_reg[24]_i_1_n_5\,
      CO(1) => \wr_data_cnt_reg[24]_i_1_n_6\,
      CO(0) => \wr_data_cnt_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \wr_data_cnt_reg[24]_i_1_n_8\,
      O(6) => \wr_data_cnt_reg[24]_i_1_n_9\,
      O(5) => \wr_data_cnt_reg[24]_i_1_n_10\,
      O(4) => \wr_data_cnt_reg[24]_i_1_n_11\,
      O(3) => \wr_data_cnt_reg[24]_i_1_n_12\,
      O(2) => \wr_data_cnt_reg[24]_i_1_n_13\,
      O(1) => \wr_data_cnt_reg[24]_i_1_n_14\,
      O(0) => \wr_data_cnt_reg[24]_i_1_n_15\,
      S(7 downto 0) => wr_data_cnt_reg(31 downto 24)
    );
\wr_data_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[24]_i_1_n_14\,
      Q => wr_data_cnt_reg(25),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[24]_i_1_n_13\,
      Q => wr_data_cnt_reg(26),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[24]_i_1_n_12\,
      Q => wr_data_cnt_reg(27),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[24]_i_1_n_11\,
      Q => wr_data_cnt_reg(28),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[24]_i_1_n_10\,
      Q => wr_data_cnt_reg(29),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[0]_i_2_n_13\,
      Q => wr_data_cnt_reg(2),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[24]_i_1_n_9\,
      Q => wr_data_cnt_reg(30),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[24]_i_1_n_8\,
      Q => wr_data_cnt_reg(31),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[0]_i_2_n_12\,
      Q => wr_data_cnt_reg(3),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[0]_i_2_n_11\,
      Q => wr_data_cnt_reg(4),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[0]_i_2_n_10\,
      Q => wr_data_cnt_reg(5),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[0]_i_2_n_9\,
      Q => wr_data_cnt_reg(6),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[0]_i_2_n_8\,
      Q => wr_data_cnt_reg(7),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[8]_i_1_n_15\,
      Q => wr_data_cnt_reg(8),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
\wr_data_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \wr_data_cnt_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \wr_data_cnt_reg[8]_i_1_n_0\,
      CO(6) => \wr_data_cnt_reg[8]_i_1_n_1\,
      CO(5) => \wr_data_cnt_reg[8]_i_1_n_2\,
      CO(4) => \wr_data_cnt_reg[8]_i_1_n_3\,
      CO(3) => \wr_data_cnt_reg[8]_i_1_n_4\,
      CO(2) => \wr_data_cnt_reg[8]_i_1_n_5\,
      CO(1) => \wr_data_cnt_reg[8]_i_1_n_6\,
      CO(0) => \wr_data_cnt_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \wr_data_cnt_reg[8]_i_1_n_8\,
      O(6) => \wr_data_cnt_reg[8]_i_1_n_9\,
      O(5) => \wr_data_cnt_reg[8]_i_1_n_10\,
      O(4) => \wr_data_cnt_reg[8]_i_1_n_11\,
      O(3) => \wr_data_cnt_reg[8]_i_1_n_12\,
      O(2) => \wr_data_cnt_reg[8]_i_1_n_13\,
      O(1) => \wr_data_cnt_reg[8]_i_1_n_14\,
      O(0) => \wr_data_cnt_reg[8]_i_1_n_15\,
      S(7 downto 0) => wr_data_cnt_reg(15 downto 8)
    );
\wr_data_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^m00_axi_wready_0\,
      D => \wr_data_cnt_reg[8]_i_1_n_14\,
      Q => wr_data_cnt_reg(9),
      R => \wr_data_cnt[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSXBO_FDMA is
  port (
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    w_cycle_flag_reg : out STD_LOGIC;
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rready_reg : out STD_LOGIC;
    m00_axi_wlast : out STD_LOGIC;
    pkg_wr_en : out STD_LOGIC;
    pkg_rd_en : out STD_LOGIC;
    m00_axi_awvalid : out STD_LOGIC;
    pkg_wr_last : out STD_LOGIC;
    axi_arvalid_reg : out STD_LOGIC;
    pkg_rd_last : out STD_LOGIC;
    pkg_wr_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pkg_wr_areq : in STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    pkg_rd_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pkg_rd_areq : in STD_LOGIC;
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rlast : in STD_LOGIC;
    pkg_wr_size : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pkg_rd_size : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSXBO_FDMA;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSXBO_FDMA is
begin
MSXBO_FDMA_v1_0_M00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSXBO_FDMA_v1_0_M00_AXI
     port map (
      axi_arvalid_reg_0 => axi_arvalid_reg,
      axi_rready_reg_0 => axi_rready_reg,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_araddr(31 downto 0) => m00_axi_araddr(31 downto 0),
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_arready => m00_axi_arready,
      m00_axi_awaddr(31 downto 0) => m00_axi_awaddr(31 downto 0),
      m00_axi_awready => m00_axi_awready,
      m00_axi_awvalid => m00_axi_awvalid,
      m00_axi_rlast => m00_axi_rlast,
      m00_axi_rvalid => m00_axi_rvalid,
      m00_axi_rvalid_0 => pkg_rd_en,
      m00_axi_wlast => m00_axi_wlast,
      m00_axi_wready => m00_axi_wready,
      m00_axi_wready_0 => pkg_wr_en,
      pkg_rd_addr(31 downto 0) => pkg_rd_addr(31 downto 0),
      pkg_rd_areq => pkg_rd_areq,
      pkg_rd_last => pkg_rd_last,
      pkg_rd_size(31 downto 0) => pkg_rd_size(31 downto 0),
      pkg_wr_addr(31 downto 0) => pkg_wr_addr(31 downto 0),
      pkg_wr_areq => pkg_wr_areq,
      pkg_wr_last => pkg_wr_last,
      pkg_wr_size(31 downto 0) => pkg_wr_size(31 downto 0),
      w_cycle_flag_reg_0 => w_cycle_flag_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    pkg_wr_areq : in STD_LOGIC;
    pkg_wr_last : out STD_LOGIC;
    pkg_wr_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    pkg_wr_en : out STD_LOGIC;
    pkg_wr_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pkg_wr_size : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pkg_rd_areq : in STD_LOGIC;
    pkg_rd_last : out STD_LOGIC;
    pkg_rd_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    pkg_rd_en : out STD_LOGIC;
    pkg_rd_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pkg_rd_size : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_awlock : out STD_LOGIC;
    m00_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_wlast : out STD_LOGIC;
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_arlock : out STD_LOGIC;
    m00_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_rlast : in STD_LOGIC;
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_MSXBO_FDMA_0_0,MSXBO_FDMA,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "MSXBO_FDMA,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m00_axi_rdata\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^pkg_wr_data\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 m00_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m00_axi_aclk : signal is "XIL_INTERFACENAME m00_axi_aclk, ASSOCIATED_BUSIF m00_axi, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 m00_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of m00_axi_aresetn : signal is "XIL_INTERFACENAME m00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 m00_axi ARLOCK";
  attribute X_INTERFACE_INFO of m00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 m00_axi ARREADY";
  attribute X_INTERFACE_INFO of m00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 m00_axi ARVALID";
  attribute X_INTERFACE_INFO of m00_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 m00_axi AWLOCK";
  attribute X_INTERFACE_INFO of m00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 m00_axi AWREADY";
  attribute X_INTERFACE_INFO of m00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 m00_axi AWVALID";
  attribute X_INTERFACE_INFO of m00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 m00_axi BREADY";
  attribute X_INTERFACE_INFO of m00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 m00_axi BVALID";
  attribute X_INTERFACE_INFO of m00_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 m00_axi RLAST";
  attribute X_INTERFACE_INFO of m00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 m00_axi RREADY";
  attribute X_INTERFACE_PARAMETER of m00_axi_rready : signal is "XIL_INTERFACENAME m00_axi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN system_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 m00_axi RVALID";
  attribute X_INTERFACE_INFO of m00_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 m00_axi WLAST";
  attribute X_INTERFACE_INFO of m00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 m00_axi WREADY";
  attribute X_INTERFACE_INFO of m00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 m00_axi WVALID";
  attribute X_INTERFACE_INFO of m00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 m00_axi ARADDR";
  attribute X_INTERFACE_INFO of m00_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 m00_axi ARBURST";
  attribute X_INTERFACE_INFO of m00_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 m00_axi ARCACHE";
  attribute X_INTERFACE_INFO of m00_axi_arid : signal is "xilinx.com:interface:aximm:1.0 m00_axi ARID";
  attribute X_INTERFACE_INFO of m00_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 m00_axi ARLEN";
  attribute X_INTERFACE_INFO of m00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 m00_axi ARPROT";
  attribute X_INTERFACE_INFO of m00_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 m00_axi ARQOS";
  attribute X_INTERFACE_INFO of m00_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 m00_axi ARSIZE";
  attribute X_INTERFACE_INFO of m00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 m00_axi AWADDR";
  attribute X_INTERFACE_INFO of m00_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 m00_axi AWBURST";
  attribute X_INTERFACE_INFO of m00_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 m00_axi AWCACHE";
  attribute X_INTERFACE_INFO of m00_axi_awid : signal is "xilinx.com:interface:aximm:1.0 m00_axi AWID";
  attribute X_INTERFACE_INFO of m00_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 m00_axi AWLEN";
  attribute X_INTERFACE_INFO of m00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 m00_axi AWPROT";
  attribute X_INTERFACE_INFO of m00_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 m00_axi AWQOS";
  attribute X_INTERFACE_INFO of m00_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 m00_axi AWSIZE";
  attribute X_INTERFACE_INFO of m00_axi_bid : signal is "xilinx.com:interface:aximm:1.0 m00_axi BID";
  attribute X_INTERFACE_INFO of m00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 m00_axi BRESP";
  attribute X_INTERFACE_INFO of m00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 m00_axi RDATA";
  attribute X_INTERFACE_INFO of m00_axi_rid : signal is "xilinx.com:interface:aximm:1.0 m00_axi RID";
  attribute X_INTERFACE_INFO of m00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 m00_axi RRESP";
  attribute X_INTERFACE_INFO of m00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 m00_axi WDATA";
  attribute X_INTERFACE_INFO of m00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 m00_axi WSTRB";
begin
  \^m00_axi_rdata\(63 downto 0) <= m00_axi_rdata(63 downto 0);
  \^pkg_wr_data\(63 downto 0) <= pkg_wr_data(63 downto 0);
  m00_axi_arburst(1) <= \<const0>\;
  m00_axi_arburst(0) <= \<const1>\;
  m00_axi_arcache(3) <= \<const0>\;
  m00_axi_arcache(2) <= \<const0>\;
  m00_axi_arcache(1) <= \<const1>\;
  m00_axi_arcache(0) <= \<const0>\;
  m00_axi_arid(0) <= \<const1>\;
  m00_axi_arlen(7) <= \<const0>\;
  m00_axi_arlen(6) <= \<const0>\;
  m00_axi_arlen(5) <= \<const0>\;
  m00_axi_arlen(4) <= \<const0>\;
  m00_axi_arlen(3) <= \<const0>\;
  m00_axi_arlen(2) <= \<const1>\;
  m00_axi_arlen(1) <= \<const1>\;
  m00_axi_arlen(0) <= \<const1>\;
  m00_axi_arlock <= \<const0>\;
  m00_axi_arprot(2) <= \<const0>\;
  m00_axi_arprot(1) <= \<const0>\;
  m00_axi_arprot(0) <= \<const0>\;
  m00_axi_arqos(3) <= \<const0>\;
  m00_axi_arqos(2) <= \<const0>\;
  m00_axi_arqos(1) <= \<const0>\;
  m00_axi_arqos(0) <= \<const0>\;
  m00_axi_arsize(2) <= \<const0>\;
  m00_axi_arsize(1) <= \<const1>\;
  m00_axi_arsize(0) <= \<const1>\;
  m00_axi_awburst(1) <= \<const0>\;
  m00_axi_awburst(0) <= \<const1>\;
  m00_axi_awcache(3) <= \<const0>\;
  m00_axi_awcache(2) <= \<const0>\;
  m00_axi_awcache(1) <= \<const1>\;
  m00_axi_awcache(0) <= \<const0>\;
  m00_axi_awid(0) <= \<const1>\;
  m00_axi_awlen(7) <= \<const0>\;
  m00_axi_awlen(6) <= \<const0>\;
  m00_axi_awlen(5) <= \<const0>\;
  m00_axi_awlen(4) <= \<const0>\;
  m00_axi_awlen(3) <= \<const0>\;
  m00_axi_awlen(2) <= \<const1>\;
  m00_axi_awlen(1) <= \<const1>\;
  m00_axi_awlen(0) <= \<const1>\;
  m00_axi_awlock <= \<const0>\;
  m00_axi_awprot(2) <= \<const0>\;
  m00_axi_awprot(1) <= \<const0>\;
  m00_axi_awprot(0) <= \<const0>\;
  m00_axi_awqos(3) <= \<const0>\;
  m00_axi_awqos(2) <= \<const0>\;
  m00_axi_awqos(1) <= \<const0>\;
  m00_axi_awqos(0) <= \<const0>\;
  m00_axi_awsize(2) <= \<const0>\;
  m00_axi_awsize(1) <= \<const1>\;
  m00_axi_awsize(0) <= \<const1>\;
  m00_axi_bready <= \<const1>\;
  m00_axi_wdata(63 downto 0) <= \^pkg_wr_data\(63 downto 0);
  m00_axi_wstrb(7) <= \<const1>\;
  m00_axi_wstrb(6) <= \<const1>\;
  m00_axi_wstrb(5) <= \<const1>\;
  m00_axi_wstrb(4) <= \<const1>\;
  m00_axi_wstrb(3) <= \<const1>\;
  m00_axi_wstrb(2) <= \<const1>\;
  m00_axi_wstrb(1) <= \<const1>\;
  m00_axi_wstrb(0) <= \<const1>\;
  pkg_rd_data(63 downto 0) <= \^m00_axi_rdata\(63 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSXBO_FDMA
     port map (
      axi_arvalid_reg => m00_axi_arvalid,
      axi_rready_reg => m00_axi_rready,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_araddr(31 downto 0) => m00_axi_araddr(31 downto 0),
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_arready => m00_axi_arready,
      m00_axi_awaddr(31 downto 0) => m00_axi_awaddr(31 downto 0),
      m00_axi_awready => m00_axi_awready,
      m00_axi_awvalid => m00_axi_awvalid,
      m00_axi_rlast => m00_axi_rlast,
      m00_axi_rvalid => m00_axi_rvalid,
      m00_axi_wlast => m00_axi_wlast,
      m00_axi_wready => m00_axi_wready,
      pkg_rd_addr(31 downto 0) => pkg_rd_addr(31 downto 0),
      pkg_rd_areq => pkg_rd_areq,
      pkg_rd_en => pkg_rd_en,
      pkg_rd_last => pkg_rd_last,
      pkg_rd_size(31 downto 0) => pkg_rd_size(31 downto 0),
      pkg_wr_addr(31 downto 0) => pkg_wr_addr(31 downto 0),
      pkg_wr_areq => pkg_wr_areq,
      pkg_wr_en => pkg_wr_en,
      pkg_wr_last => pkg_wr_last,
      pkg_wr_size(31 downto 0) => pkg_wr_size(31 downto 0),
      w_cycle_flag_reg => m00_axi_wvalid
    );
end STRUCTURE;

-- (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:axi_usb2_device:5.0
-- IP Revision: 28

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY axi_usb2_device_v5_0_28;
USE axi_usb2_device_v5_0_28.axi_usb2_device;

ENTITY axi_usb2_device_0 IS
  PORT (
    m_axi_aclk : IN STD_LOGIC;
    m_axi_aresetn : IN STD_LOGIC;
    s_axi_aclk : IN STD_LOGIC;
    s_axi_aresetn : IN STD_LOGIC;
    m_axi_awid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awvalid : OUT STD_LOGIC;
    m_axi_awready : IN STD_LOGIC;
    m_axi_awlock : OUT STD_LOGIC;
    m_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wlast : OUT STD_LOGIC;
    m_axi_wvalid : OUT STD_LOGIC;
    m_axi_wready : IN STD_LOGIC;
    m_axi_bid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bvalid : IN STD_LOGIC;
    m_axi_bready : OUT STD_LOGIC;
    m_axi_arid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arvalid : OUT STD_LOGIC;
    m_axi_arready : IN STD_LOGIC;
    m_axi_arlock : OUT STD_LOGIC;
    m_axi_rid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_rlast : IN STD_LOGIC;
    m_axi_rvalid : IN STD_LOGIC;
    m_axi_rready : OUT STD_LOGIC;
    s_axi_awid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_awaddr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_awlock : IN STD_LOGIC;
    s_axi_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_awready : OUT STD_LOGIC;
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wlast : IN STD_LOGIC;
    s_axi_wvalid : IN STD_LOGIC;
    s_axi_wready : OUT STD_LOGIC;
    s_axi_bid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_bready : IN STD_LOGIC;
    s_axi_arid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_araddr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_arlock : IN STD_LOGIC;
    s_axi_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_arready : OUT STD_LOGIC;
    s_axi_rid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rlast : OUT STD_LOGIC;
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_rready : IN STD_LOGIC;
    usb_irpt : OUT STD_LOGIC;
    ulpi_clock : IN STD_LOGIC;
    ulpi_dir : IN STD_LOGIC;
    ulpi_next : IN STD_LOGIC;
    ulpi_stop : OUT STD_LOGIC;
    ulpi_reset : OUT STD_LOGIC;
    ulpi_data_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ulpi_data_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ulpi_data_t : OUT STD_LOGIC
  );
END axi_usb2_device_0;

ARCHITECTURE axi_usb2_device_0_arch OF axi_usb2_device_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF axi_usb2_device_0_arch: ARCHITECTURE IS "yes";
  COMPONENT axi_usb2_device IS
    GENERIC (
      C_M_AXI_THREAD_ID_WIDTH : INTEGER;
      C_USE_ASYNC_CLOCKS : INTEGER;
      C_ENABLE_HSIC : INTEGER;
      C_S_AXI_ID_WIDTH : INTEGER;
      C_INCLUDE_DMA : INTEGER;
      C_DMA_UA_TRANS_SUPPORT : INTEGER;
      C_INCLUDE_USBERR_LOGIC : INTEGER;
      C_SIMULATION : INTEGER;
      C_PHY_RESET_TYPE : INTEGER;
      C_INCLUDE_DEBUG : INTEGER;
      C_USE_BUFIO : INTEGER;
      C_OVERSAMPLING_MODE : INTEGER;
      C_IN_CLK_FREQ_24MHZ : INTEGER;
      C_CONNECT_WIDTH : INTEGER;
      C_M_AXI_ADDR_WIDTH : INTEGER;
      C_FAMILY : STRING;
      C_INSTANCE : STRING
    );
    PORT (
      m_axi_aclk : IN STD_LOGIC;
      m_axi_aresetn : IN STD_LOGIC;
      s_axi_aclk : IN STD_LOGIC;
      s_axi_aresetn : IN STD_LOGIC;
      m_axi_awid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awvalid : OUT STD_LOGIC;
      m_axi_awready : IN STD_LOGIC;
      m_axi_awlock : OUT STD_LOGIC;
      m_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_wlast : OUT STD_LOGIC;
      m_axi_wvalid : OUT STD_LOGIC;
      m_axi_wready : IN STD_LOGIC;
      m_axi_bid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bvalid : IN STD_LOGIC;
      m_axi_bready : OUT STD_LOGIC;
      m_axi_arid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arvalid : OUT STD_LOGIC;
      m_axi_arready : IN STD_LOGIC;
      m_axi_arlock : OUT STD_LOGIC;
      m_axi_rid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_rlast : IN STD_LOGIC;
      m_axi_rvalid : IN STD_LOGIC;
      m_axi_rready : OUT STD_LOGIC;
      s_axi_awid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_awaddr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_awlock : IN STD_LOGIC;
      s_axi_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_awvalid : IN STD_LOGIC;
      s_axi_awready : OUT STD_LOGIC;
      s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_wlast : IN STD_LOGIC;
      s_axi_wvalid : IN STD_LOGIC;
      s_axi_wready : OUT STD_LOGIC;
      s_axi_bid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_bvalid : OUT STD_LOGIC;
      s_axi_bready : IN STD_LOGIC;
      s_axi_arid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_araddr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_arlock : IN STD_LOGIC;
      s_axi_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_arvalid : IN STD_LOGIC;
      s_axi_arready : OUT STD_LOGIC;
      s_axi_rid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_rlast : OUT STD_LOGIC;
      s_axi_rvalid : OUT STD_LOGIC;
      s_axi_rready : IN STD_LOGIC;
      usb_irpt : OUT STD_LOGIC;
      ulpi_clock : IN STD_LOGIC;
      ulpi_dir : IN STD_LOGIC;
      ulpi_next : IN STD_LOGIC;
      ulpi_stop : OUT STD_LOGIC;
      ulpi_reset : OUT STD_LOGIC;
      ulpi_data_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      ulpi_data_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ulpi_data_t : OUT STD_LOGIC;
      vbus_detect : OUT STD_LOGIC;
      show_currentspeed : OUT STD_LOGIC;
      running : OUT STD_LOGIC;
      suspended : OUT STD_LOGIC;
      disconnected : OUT STD_LOGIC;
      configured : OUT STD_LOGIC;
      spare1 : OUT STD_LOGIC;
      spare2 : OUT STD_LOGIC;
      hsic_data_io : INOUT STD_LOGIC;
      hsic_strobe_io : INOUT STD_LOGIC;
      hsic_mmcm_locked : OUT STD_LOGIC;
      hsic_clk_200_up : OUT STD_LOGIC;
      reference_clk : IN STD_LOGIC;
      reference_reset : IN STD_LOGIC;
      idelay_control_clk : IN STD_LOGIC;
      idelay_control_reset : IN STD_LOGIC
    );
  END COMPONENT axi_usb2_device;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_aclk: SIGNAL IS "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET m_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME M_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 M_AXI_ARESETN RST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_awid: SIGNAL IS "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BIT" & 
"S_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_aclk: SIGNAL IS "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_awid: SIGNAL IS "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BIT" & 
"S_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF ulpi_clock: SIGNAL IS "xilinx.com:interface:ulpi:1.0 ULPI CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ulpi_data_i: SIGNAL IS "xilinx.com:interface:ulpi:1.0 ULPI DATA_I";
  ATTRIBUTE X_INTERFACE_INFO OF ulpi_data_o: SIGNAL IS "xilinx.com:interface:ulpi:1.0 ULPI DATA_O";
  ATTRIBUTE X_INTERFACE_INFO OF ulpi_data_t: SIGNAL IS "xilinx.com:interface:ulpi:1.0 ULPI DATA_T";
  ATTRIBUTE X_INTERFACE_INFO OF ulpi_dir: SIGNAL IS "xilinx.com:interface:ulpi:1.0 ULPI DIR";
  ATTRIBUTE X_INTERFACE_INFO OF ulpi_next: SIGNAL IS "xilinx.com:interface:ulpi:1.0 ULPI NEXT";
  ATTRIBUTE X_INTERFACE_INFO OF ulpi_reset: SIGNAL IS "xilinx.com:interface:ulpi:1.0 ULPI RST";
  ATTRIBUTE X_INTERFACE_INFO OF ulpi_stop: SIGNAL IS "xilinx.com:interface:ulpi:1.0 ULPI STOP";
  ATTRIBUTE X_INTERFACE_PARAMETER OF usb_irpt: SIGNAL IS "XIL_INTERFACENAME INTR, SENSITIVITY EDGE_RISING, PORTWIDTH 1";
  ATTRIBUTE X_INTERFACE_INFO OF usb_irpt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 INTR INTERRUPT";
BEGIN
  U0 : axi_usb2_device
    GENERIC MAP (
      C_M_AXI_THREAD_ID_WIDTH => 1,
      C_USE_ASYNC_CLOCKS => 0,
      C_ENABLE_HSIC => 0,
      C_S_AXI_ID_WIDTH => 4,
      C_INCLUDE_DMA => 1,
      C_DMA_UA_TRANS_SUPPORT => 0,
      C_INCLUDE_USBERR_LOGIC => 0,
      C_SIMULATION => 0,
      C_PHY_RESET_TYPE => 0,
      C_INCLUDE_DEBUG => 0,
      C_USE_BUFIO => 1,
      C_OVERSAMPLING_MODE => 0,
      C_IN_CLK_FREQ_24MHZ => 0,
      C_CONNECT_WIDTH => 0,
      C_M_AXI_ADDR_WIDTH => 32,
      C_FAMILY => "zynq",
      C_INSTANCE => "axi_usb2_device_inst"
    )
    PORT MAP (
      m_axi_aclk => m_axi_aclk,
      m_axi_aresetn => m_axi_aresetn,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      m_axi_awid => m_axi_awid,
      m_axi_awaddr => m_axi_awaddr,
      m_axi_awlen => m_axi_awlen,
      m_axi_awsize => m_axi_awsize,
      m_axi_awburst => m_axi_awburst,
      m_axi_awcache => m_axi_awcache,
      m_axi_awprot => m_axi_awprot,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_awready => m_axi_awready,
      m_axi_awlock => m_axi_awlock,
      m_axi_wdata => m_axi_wdata,
      m_axi_wstrb => m_axi_wstrb,
      m_axi_wlast => m_axi_wlast,
      m_axi_wvalid => m_axi_wvalid,
      m_axi_wready => m_axi_wready,
      m_axi_bid => m_axi_bid,
      m_axi_bresp => m_axi_bresp,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_bready => m_axi_bready,
      m_axi_arid => m_axi_arid,
      m_axi_araddr => m_axi_araddr,
      m_axi_arlen => m_axi_arlen,
      m_axi_arsize => m_axi_arsize,
      m_axi_arburst => m_axi_arburst,
      m_axi_arcache => m_axi_arcache,
      m_axi_arprot => m_axi_arprot,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_arready => m_axi_arready,
      m_axi_arlock => m_axi_arlock,
      m_axi_rid => m_axi_rid,
      m_axi_rdata => m_axi_rdata,
      m_axi_rresp => m_axi_rresp,
      m_axi_rlast => m_axi_rlast,
      m_axi_rvalid => m_axi_rvalid,
      m_axi_rready => m_axi_rready,
      s_axi_awid => s_axi_awid,
      s_axi_awaddr => s_axi_awaddr,
      s_axi_awlen => s_axi_awlen,
      s_axi_awsize => s_axi_awsize,
      s_axi_awburst => s_axi_awburst,
      s_axi_awlock => s_axi_awlock,
      s_axi_awcache => s_axi_awcache,
      s_axi_awprot => s_axi_awprot,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awready => s_axi_awready,
      s_axi_wdata => s_axi_wdata,
      s_axi_wstrb => s_axi_wstrb,
      s_axi_wlast => s_axi_wlast,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wready => s_axi_wready,
      s_axi_bid => s_axi_bid,
      s_axi_bresp => s_axi_bresp,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_bready => s_axi_bready,
      s_axi_arid => s_axi_arid,
      s_axi_araddr => s_axi_araddr,
      s_axi_arlen => s_axi_arlen,
      s_axi_arsize => s_axi_arsize,
      s_axi_arburst => s_axi_arburst,
      s_axi_arlock => s_axi_arlock,
      s_axi_arcache => s_axi_arcache,
      s_axi_arprot => s_axi_arprot,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arready => s_axi_arready,
      s_axi_rid => s_axi_rid,
      s_axi_rdata => s_axi_rdata,
      s_axi_rresp => s_axi_rresp,
      s_axi_rlast => s_axi_rlast,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_rready => s_axi_rready,
      usb_irpt => usb_irpt,
      ulpi_clock => ulpi_clock,
      ulpi_dir => ulpi_dir,
      ulpi_next => ulpi_next,
      ulpi_stop => ulpi_stop,
      ulpi_reset => ulpi_reset,
      ulpi_data_i => ulpi_data_i,
      ulpi_data_o => ulpi_data_o,
      ulpi_data_t => ulpi_data_t,
      reference_clk => '0',
      reference_reset => '0',
      idelay_control_clk => '0',
      idelay_control_reset => '0'
    );
END axi_usb2_device_0_arch;

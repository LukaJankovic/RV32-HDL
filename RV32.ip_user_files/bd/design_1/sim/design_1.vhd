--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Thu Jul 28 02:38:46 2022
--Host        : LLegion running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    clk : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_cpu_0_0 is
  port (
    clk : in STD_LOGIC;
    PC_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    POP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    PADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PRES : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WE : out STD_LOGIC;
    WADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_cpu_0_0;
  component design_1_pmem_0_0 is
  port (
    clk : in STD_LOGIC;
    PC : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    OP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RES : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WE : in STD_LOGIC;
    WADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_pmem_0_0;
  signal clk_1 : STD_LOGIC;
  signal cpu_0_PADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_PC : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_POP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_WADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_WE : STD_LOGIC;
  signal pmem_0_PCOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pmem_0_RES : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  clk_1 <= clk;
cpu_0: component design_1_cpu_0_0
     port map (
      PADDR(31 downto 0) => cpu_0_PADDR(31 downto 0),
      PC_OUT(31 downto 0) => cpu_0_PC(31 downto 0),
      PM(31 downto 0) => pmem_0_PCOUT(31 downto 0),
      POP(2 downto 0) => cpu_0_POP(2 downto 0),
      PRES(31 downto 0) => pmem_0_RES(31 downto 0),
      WADDR(31 downto 0) => cpu_0_WADDR(31 downto 0),
      WDATA(31 downto 0) => cpu_0_WDATA(31 downto 0),
      WE => cpu_0_WE,
      clk => clk_1
    );
pmem_0: component design_1_pmem_0_0
     port map (
      ADDR(31 downto 0) => cpu_0_PADDR(31 downto 0),
      OP(2 downto 0) => cpu_0_POP(2 downto 0),
      PC(31 downto 0) => cpu_0_PC(31 downto 0),
      PM(31 downto 0) => pmem_0_PCOUT(31 downto 0),
      RES(31 downto 0) => pmem_0_RES(31 downto 0),
      WADDR(31 downto 0) => cpu_0_WADDR(31 downto 0),
      WDATA(31 downto 0) => cpu_0_WDATA(31 downto 0),
      WE => cpu_0_WE,
      clk => clk_1
    );
end STRUCTURE;

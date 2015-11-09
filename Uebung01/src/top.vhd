library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.prol16_pack.all;

entity top is
  port (
    clk_i : in std_ulogic;
	res_i : in std_ulogic;
	in_i : in std_ulogic_vector(9 downto 0); -- 10 switches
	out_o : out std_ulogic_vector(27 downto 0) -- 4 * 7 segment
  );
end;

architecture rtl of top is
  signal mem_addr     : std_ulogic_vector(data_vec_length_c - 1 downto 0);
  signal mem_data_out : std_ulogic_vector(data_vec_length_c - 1 downto 0);
  signal mem_data_in  : std_ulogic_vector(data_vec_length_c - 1 downto 0);
  signal mem_data_io  : std_logic_vector(data_vec_length_c - 1 downto 0);
  signal mem_ce       : std_ulogic;
  signal mem_oe       : std_ulogic;
  signal mem_we       : std_ulogic;
  signal illegal_inst : std_ulogic;
  signal cpu_halt     : std_ulogic;
  
  signal sel          : std_ulogic;
  
  signal sev_segment1 : std_ulogic_vector(3 downto 0);
  signal sev_segment2 : std_ulogic_vector(3 downto 0);
  signal sev_segment3 : std_ulogic_vector(3 downto 0);
  signal sev_segment4 : std_ulogic_vector(3 downto 0);
  
  signal gpi_data     : std_ulogic_vector(9 downto 0);
  signal ram_data     : data_vec_t;
  signal sel_ram      : std_ulogic;
  signal sel_gpo      : std_ulogic;
    
begin

  CPU : entity work.cpu
    port map (
      clk_i          => clk_i,
      res_i          => res_i,
      mem_addr_o     => mem_addr,
      mem_data_o     => mem_data_out,
      mem_data_i     => mem_data_in,
      mem_ce_o      => mem_ce,
      mem_oe_o      => mem_oe,
      mem_we_o      => mem_we,
      illegal_inst_o => illegal_inst,
      cpu_halt_o     => cpu_halt
	);
	
  Arbiter : entity work.arbiter
    port map (
	  gpi_data_i => gpi_data,
	  ram_data_i => ram_data,
	  addr_i     => mem_addr,
	  cpu_data_o => mem_data_in,
	  sel_ram_o  => sel_ram,
	  sel_gpo_o  => sel_gpo
	);
  
  RAM : entity work.ram
    port map (
	  iClk  => clk_i,
	  iData => mem_data_out,
	  oData => ram_data,
	  iAddr => mem_addr,
	  iRd   => mem_oe,
	  iWr   => mem_we,
	  iSel  => sel_ram
	);
   
  GPO : entity work.gpo
    port map (
	  clk_i  => clk_i,
	  res_i  => res_i,
      data_i => mem_data_out,
	  sel_i  => sel,
	  wr_i   => mem_we,
	  
      sev_segment1_o => sev_segment1,
	  sev_segment2_o => sev_segment2,
	  sev_segment3_o => sev_segment3,
	  sev_segment4_o => sev_segment4
	);
	
  BCD2SEV1 : entity work.bcd2sevsegment  
    port map (
	  bcd_i => sev_segment1,
      sev_segment_o => out_o(6 downto 0)
	);
	
  BCD2SEV2 : entity work.bcd2sevsegment  
    port map (
	  bcd_i => sev_segment2,
      sev_segment_o => out_o(13 downto 7)
	);
  
  BCD2SEV3 : entity work.bcd2sevsegment  
    port map (
	  bcd_i => sev_segment3,
      sev_segment_o => out_o(20 downto 14)
	);
	
  BCD2SEV4 : entity work.bcd2sevsegment  
    port map (
	  bcd_i => sev_segment4,
      sev_segment_o => out_o(27 downto 21)
	);
	
  GPI : entity work.gpi
    port map (
	  clk_i => clk_i,
	  res_i => res_i,
	  in_i => in_i,
	  rd_i => mem_oe,
	  data_o => gpi_data
	);	
	
end architecture;
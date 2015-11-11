library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.prol16_pack.all;

entity top_tb is
end top_tb;

architecture bhv of top_tb is
  signal clk : std_ulogic := '0';
  signal res : std_ulogic;
  signal switches : std_ulogic_vector(9 downto 0) := (others => '0');
  signal sevseg : std_ulogic_vector(27 downto 0) := (others => '0');
begin

  -- clock and reset generation 
  clk <= not clk after clock_period_c/2;
  res <= reset_active_nc, not reset_active_nc after clock_period_c;
  
  -- our device under test
  dut : entity work.top
    port map (
	  clk_i => clk,
	  res_i => res,
	  in_i  => switches,
      out_o => sevseg	  
	);

  -- stimulation process
  stimuli : process is
  begin
	switches <= "0000000000" after clock_period_c,
	            "0010100010" after clock_period_c * 10,
	            "1111111111" after clock_period_c * 20;
	wait;
  end process;
	
end bhv;

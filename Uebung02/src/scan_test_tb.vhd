library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity scan_test_tb is
end scan_test_tb;

architecture bhv of scan_test_tb is
  signal clk : std_ulogic := '0';
  signal res : std_ulogic;
  signal scan_enable : std_ulogic;
  signal a : std_ulogic;
  signal b : std_ulogic;
  signal z : std_ulogic;
begin

  -- clock and reset generation
  clk <= not clk after 10 ns;
  res <= '0', '1' after 20 ns;
  
  -- our device under test
  dut : entity work.scan_test
    port map (
      clk_i => clk,
      res_i => res,
      scan_enable_i => scan_enable,
      a_i => a,
      b_i => b,
      z_o => z
    );

  -- stimulation process
  stimuli : process is
  begin
    scan_enable <= '1' after 0 ns,
                   '0' after 100 ns,
                   '1' after 120 ns;
    a <= '0' after 0 ns,
         '0' after 20 ns,
	 '0' after 40 ns,
         '0' after 60 ns,
         '1' after 80 ns,
         '0' after 100 ns;
    
    b <= '0';

    wait for 120 ns;
    assert z = '1' report "q wrong" severity error;
    wait for 20 ns;
    assert z = '0' report "p wrong" severity error;
    wait for 20 ns;
    assert z = '0' report "m wrong" severity error;
    wait for 20 ns;
    assert z = '0' report "n wrong" severity error;

    wait;
end process;


end bhv;

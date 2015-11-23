library ieee;
use ieee.std_logic_1164.all;

entity scan_test is

  port (
    clk_i         : in  std_ulogic; -- clock
    res_i         : in  std_ulogic; -- reset

    --test_mode_i : in  std_ulogic; -- bypass scan test design rule
                                    -- violations
    scan_enable_i : in  std_ulogic; -- shift mode

    a_i           : in  std_ulogic; -- primary input a
    b_i           : in  std_ulogic; -- primary input b
    z_o           : out std_ulogic  -- primary output
  );

end scan_test;

architecture rtl of scan_test is

  signal n, m, p, q : std_ulogic;

begin

  process (clk_i, res_i)
  begin
    if res_i = '0' then
      n <= '0'; m <= '0'; p <= '0'; q <= '0';
    elsif clk_i'event and clk_i = '1' then
      n <= a_i xor b_i;
      m <= n and b_i;
      p <= m or not n;
      q <= not p;
    end if;
  end process;

  z_o <= q;

end rtl;

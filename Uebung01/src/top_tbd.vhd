library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.prol16_pack.all;

entity top_tbd is
  port (
    clk_i : in std_ulogic;
	res_i : in std_ulogic;
	in_i : in std_ulogic_vector(9 downto 0); -- 10 switches
	out_o : out std_ulogic_vector(27 downto 0) -- 4 * 7 segment
  );
end;

architecture rtl of top_tbd is
  signal sevseg : std_ulogic_vector(27 downto 0);
begin
  
  -- our device under test
  dut : entity work.top
    port map (
	  clk_i => clk_i,
	  res_i => res_i,
	  in_i  => in_i,
     out_o => sevseg  
	);

  out_o <= not sevseg;	

end rtl;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.prol16_pack.all;

entity arbiter is
  port (
    gpi_data_i : in std_ulogic_vector(9 downto 0);
	ram_data_i : in data_vec_t;
	addr_i     : in data_vec_t;
	cpu_data_o : out data_vec_t;
	sel_ram_o  : out std_ulogic;
	sel_gpo_o  : out std_ulogic);
end;

architecture rtl of arbiter is
begin
  process (addr_i, gpi_data_i, ram_data_i)
  begin
    cpu_data_o <= (others => '0');
    sel_ram_o <= '0';
    sel_gpo_o <= '0';
    if (to_integer(unsigned(addr_i)) = 3000) then
      -- read switches
	  cpu_data_o(9 downto 0) <= gpi_data_i;
    elsif (to_integer(unsigned(addr_i)) = 3100) then
      -- write to 7 segment
	  sel_gpo_o <= '1';
    elsif (to_integer(unsigned(addr_i)) < 3000) then
      -- normal ram write/read
      sel_ram_o <= '1';
	  cpu_data_o <= ram_data_i;
    end if;
  end process; 
end;
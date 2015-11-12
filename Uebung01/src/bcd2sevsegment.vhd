library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.prol16_pack.all;

entity bcd2sevsegment is
  port (
    bcd_i	   		: in std_ulogic_vector(3 downto 0);
    sev_segment_o 	: out std_ulogic_vector(6 downto 0));
end bcd2sevsegment;

architecture rtl of bcd2sevsegment is
  
begin  -- rtl

  decode : process (bcd_i)   
  begin

    case bcd_i is
		when "0000"=> sev_segment_o <="0111111";  -- '0'
		when "0001"=> sev_segment_o <="0000110";  -- '1'
		when "0010"=> sev_segment_o <="1011011";  -- '2'
		when "0011"=> sev_segment_o <="1001111";  -- '3'
		when "0100"=> sev_segment_o <="1100110";  -- '4'
		when "0101"=> sev_segment_o <="1101101";  -- '5'
		when "0110"=> sev_segment_o <="1111101";  -- '6'
		when "0111"=> sev_segment_o <="0000111";  -- '7'
		when "1000"=> sev_segment_o <="1111111";  -- '8'
		when "1001"=> sev_segment_o <="1101111";  -- '9'
		when others=> sev_segment_o <="0000000";  -- off
	end case;

  end process decode;
  
  end rtl;

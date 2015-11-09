library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.prol16_pack.all;

entity gpo is
  port (
	clk_i   		: in std_ulogic;
	res_i   		: in std_ulogic;
    data_i	   		: in std_ulogic_vector(data_vec_length_c-1 downto 0);
	sel_i   		: in std_ulogic;
	wr_i            : in std_ulogic;
	
    sev_segment1_o 	: out std_ulogic_vector(3 downto 0);
	sev_segment2_o 	: out std_ulogic_vector(3 downto 0);
	sev_segment3_o 	: out std_ulogic_vector(3 downto 0);
	sev_segment4_o 	: out std_ulogic_vector(3 downto 0));
end gpo;

architecture rtl of gpo is
  
begin  -- rtl

  set_displays : process (clk_i, res_i, data_i, sel_i, wr_i)   
  begin
	
	if res_i = reset_active_nc then     -- asynchronous reset (active low)
		sev_segment1_o <= (others => '0');
		sev_segment2_o <= (others => '0');
		sev_segment3_o <= (others => '0');
		sev_segment4_o <= (others => '0');
		
    elsif clk_i'event and clk_i = '1' then  -- rising clock edge
		if sel_i = '1' and wr_i = '1' then
			sev_segment1_o <= data_i(3 downto 0);
			sev_segment2_o <= data_i(7 downto 4);
			sev_segment3_o <= data_i(11 downto 8);
			sev_segment4_o <= data_i(15 downto 12);			
		end if;	
    end if;   

  end process set_displays;
  
  end rtl;
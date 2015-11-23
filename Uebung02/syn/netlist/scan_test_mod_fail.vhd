
library ieee,C35_CORELIB,work;

use ieee.std_logic_1164.all;
use C35_CORELIB.Vcomponents.all;

entity scan_test is

   port( clk_i, res_i, scan_enable_i, a_i, b_i : in std_ulogic;  z_o : out 
         std_ulogic);

end scan_test;

architecture SYN_rtl of scan_test is

   component CLKIN0
      port( A : in std_ulogic;  Q : out std_ulogic);
   end component;
   
   component XNR20
      port( A, B : in std_ulogic;  Q : out std_ulogic);
   end component;
   
   component NAND20
      port( A, B : in std_ulogic;  Q : out std_ulogic);
   end component;
   
   component NOR20
      port( A, B : in std_ulogic;  Q : out std_ulogic);
   end component;
   
   component DFSC1
      port( D, C, RN, SD, SE : in std_ulogic;  Q, QN : out std_ulogic);
   end component;
   
   component DFSC3
      port( D, C, RN, SD, SE : in std_ulogic;  Q, QN : out std_ulogic);
   end component;
   
   signal N0, N2, n1, n2_port, n5, n6, n7, n9, n10, n11, n12 : std_ulogic;

begin
   
   n_reg : DFSC1 port map( D => N0, C => clk_i, RN => res_i, SD => a_i, SE => scan_enable_i, Q => n9, QN => n11)
                           ;
   m_reg : DFSC3 port map( D => n5, C => clk_i, RN => res_i, SD => n9, SE => scan_enable_i, Q => n10, QN => n6)
                           ;
   p_reg : DFSC3 port map( D => N2, C => clk_i, RN => res_i, SD => n10, SE => scan_enable_i, Q => n2_port, QN =>
                           n7);
   q_reg : DFSC1 port map( D => n7, C => clk_i, RN => res_i, SD => n2_port, SE => scan_enable_i, Q => z_o, QN => n1)
                           ;
   U7 : NOR20 port map( A => n11, B => n12, Q => n5);
   U8 : NAND20 port map( A => n6, B => n9, Q => open);
   U9 : XNR20 port map( A => n12, B => a_i, Q => N0);
   U10 : CLKIN0 port map( A => b_i, Q => n12);

   N2 <= '1';

end SYN_rtl;

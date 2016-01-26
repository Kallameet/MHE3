library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------------

entity Multipliers is
  
  generic (
    gBitWidth : integer := 32);

  port (
    iClk, inRst : in  std_ulogic;
    iXa, iXb    : in  std_ulogic_vector(gBitWidth-1 downto 0);  -- input data
    iYa, iYb    : in  std_ulogic_vector(gBitWidth-1 downto 0);  -- input data
    iEn         : in  std_ulogic;
    oX          : out std_ulogic_vector(2*gBitWidth-1 downto 0);  -- output data
    oY          : out std_ulogic_vector(2*gBitWidth-1 downto 0);  -- output data
    oReady      : out std_ulogic);

end Multipliers;


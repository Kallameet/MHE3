
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Ram is
  generic (
    gAddrWidth : integer := 14);
  port (
    iClk  : in  std_ulogic;
    iData : in  std_ulogic_vector(15 downto 0);
    oData : out std_ulogic_vector(15 downto 0);
    iAddr : in  std_ulogic_vector(15 downto 0);
    iRd   : in  std_ulogic;
    iWr   : in  std_ulogic;
    iSel  : in  std_ulogic);
end Ram;

architecture Rtl of Ram is
  subtype aDataVec is std_ulogic_vector(15 downto 0);
  type    aMem is array (2**gAddrWidth-1 downto 0) of aDataVec;

  signal mem : aMem := (
    0000 => X"7880",
    others => X"0000"
    );
begin  -- Rtl

  -----------------------------------------------------------------------------
  -- write
  wrt : process (iClk)
  begin  -- process write
    if iClk'event and iClk = '0' then   -- FALLING clock edge
      if iSel = '1' then
        if iWr = '1' then
          mem(to_integer(unsigned(iAddr))) <= iData;
        end if;
        oData <= mem(to_integer(unsigned(iAddr)));
      end if;
    end if;
  end process wrt;
end Rtl;

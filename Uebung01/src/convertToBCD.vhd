
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Ram is
  generic (
    gAddrWidth : integer := 12);
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
    0000 => X"0800",
    0001 => X"000a",
    0002 => X"0820",
    0003 => X"0000",
    0004 => X"0840",
    0005 => X"0000",
    0006 => X"0860",
    0007 => X"0000",
    0008 => X"0880",
    0009 => X"0000",
    0010 => X"08e0",
    0011 => X"0bb8",
    0012 => X"0ca7",
    0013 => X"70a0",
    0014 => X"70a0",
    0015 => X"70a0",
    0016 => X"70a0",
    0017 => X"70a0",
    0018 => X"70a0",
    0019 => X"08e0",
    0020 => X"0005",
    0021 => X"6027",
    0022 => X"08e0",
    0023 => X"001c",
    0024 => X"28e0",
    0025 => X"08e0",
    0026 => X"0003",
    0027 => X"5027",
    0028 => X"08e0",
    0029 => X"0005",
    0030 => X"6047",
    0031 => X"08e0",
    0032 => X"0025",
    0033 => X"28e0",
    0034 => X"08e0",
    0035 => X"0003",
    0036 => X"5047",
    0037 => X"08e0",
    0038 => X"0005",
    0039 => X"6067",
    0040 => X"08e0",
    0041 => X"002e",
    0042 => X"28e0",
    0043 => X"08e0",
    0044 => X"0003",
    0045 => X"5067",
    0046 => X"08e0",
    0047 => X"0005",
    0048 => X"6087",
    0049 => X"08e0",
    0050 => X"0037",
    0051 => X"28e0",
    0052 => X"08e0",
    0053 => X"0003",
    0054 => X"5087",
    0055 => X"70a0",
    0056 => X"7820",
    0057 => X"08e0",
    0058 => X"fff0",
    0059 => X"50e1",
    0060 => X"7840",
    0061 => X"08e0",
    0062 => X"fff0",
    0063 => X"50e2",
    0064 => X"7860",
    0065 => X"08e0",
    0066 => X"fff0",
    0067 => X"50e3",
    0068 => X"7880",
    0069 => X"08e0",
    0070 => X"fff0",
    0071 => X"50e4",
    0072 => X"08e0",
    0073 => X"000f",
    0074 => X"4027",
    0075 => X"4047",
    0076 => X"4067",
    0077 => X"4087",
    0078 => X"6c00",
    0079 => X"08e0",
    0080 => X"0055",
    0081 => X"2ce0",
    0082 => X"08e0",
    0083 => X"0013",
    0084 => X"20e0",
    0085 => X"7040",
    0086 => X"7040",
    0087 => X"7040",
    0088 => X"7040",
    0089 => X"7060",
    0090 => X"7060",
    0091 => X"7060",
    0092 => X"7060",
    0093 => X"7060",
    0094 => X"7060",
    0095 => X"7060",
    0096 => X"7060",
    0097 => X"7080",
    0098 => X"7080",
    0099 => X"7080",
    0100 => X"7080",
    0101 => X"7080",
    0102 => X"7080",
    0103 => X"7080",
    0104 => X"7080",
    0105 => X"7080",
    0106 => X"7080",
    0107 => X"7080",
    0108 => X"7080",
    0109 => X"5022",
    0110 => X"5023",
    0111 => X"5024",
    0112 => X"08e0",
    0113 => X"0c1c",
    0114 => X"1027",
    0115 => X"08e0",
    0116 => X"0000",
    0117 => X"20e0",
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

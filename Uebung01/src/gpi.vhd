library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gpi is
port (
  clk_i : in std_ulogic;
  res_i : in std_ulogic;
  in_i : in std_ulogic_vector(9 downto 0); -- 10 switches
  sel_i : in std_ulogic; -- needed?
  rd_i : in std_ulogic;
  data_o : out std_ulogic_vector(9 downto 0));
end entity;

architecture rtl of gpi is
  signal data : std_ulogic_vector(9 downto 0);
begin

  spikefilters: for i in 9 downto 0 generate
    spikefilter: entity work.spikefilter
    generic map (
      no_sync_ffs_g      => 3)
    port map (
      clk_i              => clk_i,
      res_i              => res_i,
      input_pin_i        => in_i(i),
      rise_edge_on_pin_o => open,
      fall_edge_on_pin_o => open,
      level_on_pin_o     => data(i));
  end generate;

  data_o <= data when (rd_i = '1');

end architecture;

library ieee;
use ieee.std_logic_1164.all;
 
entity or4 is
  port (
    i_bit0    : in  std_logic;
    i_bit1    : in  std_logic;
    i_sel    : in  std_logic;
    o_mux : out std_logic
    );
end or4;
 
architecture rtl of or4 is
signal o_out1, o_out2 : std_logic;
begin
	o_out1 <= not i_sel and i_bit1;
	o_out2 <= i_sel and i_bit0;
	o_mux <= o_out1 or o_out2;
end rtl;
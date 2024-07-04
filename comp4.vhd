library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity comp4 is port (
    in0: in  std_logic_vector(2 downto 0);
    S       : out std_logic);
end comp4;

architecture arqdtp of comp4 is
    begin

    S <= '1' when (in0 = "100") else '0';

end arqdtp;

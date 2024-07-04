library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity reg6b is port (
    D     : in  std_logic_vector(5 downto 0);
    Reset : in  std_Logic;
    Enable: in  std_logic;
    CLK   : in  std_logic;
    Q     : out std_logic_vector(5 downto 0));
end reg6b;

architecture arqdtp of reg6b is

    begin
    process(CLK,reset)
    begin
        if(enable = '1') then
            if(reset = '1') then
                q <= "000000";
            elsif (CLK'event AND CLK = '1') then
    				q <= d;		
            end if;
        end if;
    end process;
end arqdtp;
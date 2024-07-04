library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
use ieee.std_logic_arith.all;

entity counter_time is
    port (
        Set, Enable, Clock: in  std_logic;
        end_time         : out std_logic;
        t_out            : out std_logic_vector(3 downto 0)
    );
end counter_time;

architecture arqtime of counter_time is

    signal count: std_logic_vector(3 downto 0);

begin

    process(Clock, Set, Enable)

    begin

        if (Set = '1') then
            count <= "1001";
        elsif (Clock'event and Clock='1') then
            if (Enable='1') then
                if(count="0000") then
                    end_time <= '1';
                else
                    count <= count - "0001";
                    end_time <= '0';
                end if;
            end if;
        end if;
    end process;

    t_out <= count;

end arqtime;

library IEEE;
use IEEE.Std_Logic_1164.all;
entity soma_p is
port (A,B,C,D: in std_logic;
      S: out std_logic_vector(2 downto 0)
     );
end soma_p;
architecture somap of soma_p is
signal S0, S1, S2, S3: std_logic;
signal C0, C1, C2, C3: std_logic;
 component halfadder is
  port (A: in std_logic;
        B: in std_logic;
        S: out std_logic;
        Cout: out std_logic);
 end component; 
component fulladder is
  port (A: in std_logic;
        B: in std_logic;
        Cin: in std_logic;
        S: out std_logic;
        Cout: out std_logic);
 end component;

begin

    HA1: halfadder port map (A => A, B => B, S => S0, Cout => C0);

    HA2: halfadder port map (A => C, B => D, S => S1, Cout => C1);

    FA1: fulladder port map (A => S0, B => S1, Cin => '0', S => S2, Cout => C2);
    
    FA2: fulladder port map (A => C0, B => C1, Cin => C2, S => S3, Cout => C3);

    S(0) <= S2;
    S(1) <= S3;
    S(2) <= C3;

end somap;

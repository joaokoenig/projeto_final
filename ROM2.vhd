library ieee;
use ieee.std_logic_1164.all;

entity ROM2 is port (

    address : in  std_logic_vector(3 downto 0);
    data    : out std_logic_vector(15 downto 0));
    
end ROM2;

architecture Rom_Arch of ROM2 is

type memory is array (00 to 15) of std_logic_vector(15 downto 0);
constant my_Rom : memory := (

	00 => "0010010101110000",  --2570   
	01 => "0111000000110101",  --7035   
    02 => "0100001100010110",  --4316
	03 => "0001011001010010",  --1652
	04 => "0110010000010011",  --6413
	05 => "0011010100000110",  --3506
	06 => "0000011101000011",  --0743
	07 => "0101001001100001",  --5261
	08 => "0010011100000101",  --2705
	09 => "0100001101100001",  --4361
    10 => "0001011000100101",  --1625
	11 => "0110010100010010",  --6512
	12 => "0011000001010110",  --3056
	13 => "0000001001110101",  --0275
	14 => "0101001100010110",  --5316
	15 => "0110010000110000"  --6430
); 
	 
	
begin
   process (address)
   begin
       case address is
       when "0000" => data <= my_rom(00);
       when "0001" => data <= my_rom(01);
       when "0010" => data <= my_rom(02);
       when "0011" => data <= my_rom(03);
       when "0100" => data <= my_rom(04);
       when "0101" => data <= my_rom(05);
       when "0110" => data <= my_rom(06);
       when "0111" => data <= my_rom(07);
       when "1000" => data <= my_rom(08);
       when "1001" => data <= my_rom(09);
	    when "1010" => data <= my_rom(10);
	    when "1011" => data <= my_rom(11);
       when "1100" => data <= my_rom(12);
	    when "1101" => data <= my_rom(13);
	    when "1110" => data <= my_rom(14);
	    when others => data <= my_rom(15);
     end case;
  end process;
end architecture Rom_Arch;
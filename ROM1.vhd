library ieee;
use ieee.std_logic_1164.all;

entity ROM1 is port (

    address : in  std_logic_vector(3 downto 0);
    data    : out std_logic_vector(15 downto 0));
    
end ROM1;

architecture Rom_Arch of ROM1 is

type memory is array (00 to 15) of std_logic_vector(15 downto 0);
constant my_Rom : memory := (

	00 => "0100001100100101",  --4325    
	01 => "0000000100110101",  --0135 
    02 => "0101001101000001",  --5341
	03 => "0100000100110000",  --4130
	04 => "0011010000000101",  --3405
	05 => "0000001100100100",  --0324
	06 => "0001000000100101",  --1025
	07 => "0001000001000011",  --1043
	08 => "0001001000000100",  --1204
	09 => "0101001000110000",  --5230
    10 => "0001001101000101",  --1345
	11 => "0001001100100101",  --1325
	12 => "0010000001010100",  --2054
	13 => "0010000000110101",  --2035
	14 => "0010010100110001",  --2531
	15 => "0010000100110100"  --2134
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
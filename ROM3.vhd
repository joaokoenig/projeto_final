library ieee;
use ieee.std_logic_1164.all;

entity ROM3 is port (

    address : in  std_logic_vector(3 downto 0);
    data    : out std_logic_vector(15 downto 0));
    
end ROM3;

architecture Rom_Arch of ROM3 is

type memory is array (00 to 15) of std_logic_vector(15 downto 0);
constant my_Rom : memory := (

	00 => "0110010001011001",  --6419   
	01 => "0001101001110011",  --1673   
    02 => "1000110100000101",  --8305
	03 => "0010001001110101",  --2075
	04 => "0111010000010011",  --7403
	05 => "0100100011101001",  --4289
	06 => "0011011000100111",  --3627
	07 => "0001110100111001",  --0739
	08 => "0101000110010001",  --5310
	09 => "1001001101010110",  --9654
    10 => "0001010110101001",  --1569
	11 => "0110001011100100",  --6274
	12 => "0100111001100001",  --4761
	13 => "0010100111001000",  --2978
	14 => "0111100001000101",  --7805
	15 => "1000011001010010"  --8062
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
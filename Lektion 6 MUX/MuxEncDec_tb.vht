library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity muxencproj_tb is
end entity;

architecture tb of muxencproj_tb is

component muxencproj is
	port
	(
      input    : in  std_logic_vector(7 downto 0);
		sel      : in  std_logic_vector(2 downto 0);
		output   : out std_logic
	);
end component;

signal input_s  : std_logic_vector(7 downto 0)  := "00000000";
signal sel_s    : std_logic_vector(2 downto 0)  := "000";
signal output_s : std_logic                     := '0';
		
begin

--instantiate unit under test
uut : muxencproj
	port map(input_s, sel_s, output_s);
 
state_mach : process
begin
	
	for i in 0 to 7 loop
		sel_s <= std_logic_vector(to_unsigned(i,3));
      for k in 0 to (2**8)-1 loop
         input_s <= std_logic_vector(to_unsigned(k,8));
         wait for 100 ns;
      end loop;
	end loop;

	wait;
   
end process; 	 

end architecture;
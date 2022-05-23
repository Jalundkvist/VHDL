library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity my_ram is
   port
   (
      clk    : in  std_logic;
      rst    : in  std_logic;
      we     : in  std_logic;
      adress : in  std_logic_vector(2 downto 0);
      din    : in  std_logic_vector(7 downto 0);
      dout   : out std_logic_vector(7 downto 0)
   );
end entity;

architecture behaviour of my_ram is

type   ram_t is array (7 downto 0) of std_logic_vector(7 downto 0); -- skapar en typ av av array
signal my_ram : ram_t;

begin
   process (clk, rst) is
	begin
	   if rising_edge(clk) then
		   if rst = '1' then
			dout <= (others => '0')
		   elsif we = '1' then
			   my_ram(to_integer(unsigned(adress))) <= din;
			end if;
		
		   dout <= my_ram(conv_integer(adress));
		
		end if;
	end process;
         

end architecture;
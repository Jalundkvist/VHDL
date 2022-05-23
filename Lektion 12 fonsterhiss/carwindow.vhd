library IEEE;
use IEEE.std_logic_1164.all;

entity carwindow is
   port
	(
	   clk     : in std_logic;
		rst     : in std_logic;
		btn_n   : in std_logic;
		win_dir : out std_logic
	);
end entity;

architecture behaviour of carwindow is

signal win_dir_s : std_logic;
signal Q1, Q2    : std_logic;

begin
   process (clk, rst) is
	begin
	   if (rst = '1') then
		   win_dir_s <= '0';
			Q1 <= '0';
			Q2 <= '0';
		elsif rising_edge(clK) then
		   Q1 <= btn_n;
		   Q2 <= Q1;
			if (Q1 = '1' and Q2 = '0') then
			  win_dir_s <= not win_dir_s;
			end if;		
		end if;
		
	end process;
   win_dir <= win_dir_s;

end architecture;
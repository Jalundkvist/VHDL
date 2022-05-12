library IEEE;
use IEEE.std_logic_1164.all;

entity d_vipp is
	port
	(
		d, c : in  std_logic;
      rst  : in  std_logic;
		q    : out std_logic
	);
end entity;

architecture behaviour of d_vipp is
signal Q1_s, Q2_s std_logic;
begin

	process (c, rst) is
	begin

		if rst = '1' then
         q <= '0';
			Q1_s <= q;
			
      elsif rising_edge(c) then
			q <= d;
		end if;

	end process;
end architecture;

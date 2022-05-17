library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity counters is
	port
	(
		clk  : in std_logic;
      rst_n: in std_logic;
		ce   : in std_logic;
      cnt  : out std_logic_vector(3 downto 0);
		cnt2 : out std_logic_vector(5 downto 0)
	);
end entity;

architecture behaviour of counters is

signal cnt_s : std_logic_vector(3 downto 0);
signal cnt2_s : std_logic_vector(5 downto 0);

begin

	process (clk, rst_n) is
	begin
		if rst_n = '0' then
			cnt_s  <= (others => '0');
			cnt2_s <= (others => '0');
		--när ce är '1' inkrementera cnt från tidigare värde
		elsif rising_edge(clk) and ce = '1' then
			if  cnt_s = 10 then
				--0:a cnt_s om cnt_s = 10
				cnt_s <= (others => '0');
			else
				--inkrementera med 1 i annars
				cnt_s <= cnt_s + 1;
			end if;
			if  cnt2_s = 60 then
				--0:a cnt_s om cnt_s = 10
				cnt2_s <= (others => '0');
			else
				--inkrementera med 1 i annars
				cnt2_s <= cnt2_s + 1;
			end if;
		end if;
	end process;
	
	cnt <= cnt_s;
	cnt2 <= cnt2_s;
end architecture;

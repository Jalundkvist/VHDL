library IEEE;
use IEEE.std_logic_1164.all;

entity skiftreg is
	port
	(
		D, CLK, RST	: in std_logic;
		Q				: out std_logic
	);
end entity;

architecture behaviour of skiftreg is
signal q0_s, q1_s : std_logic;
signal q_s : std_logic_vector (3 downto 0);
begin
	process (CLK, RST) is
	begin
		if RST 	 = '1' then
			Q	 	<= '0';
			q_s 	<= "0000";
		elsif rising_edge(CLK) then
			q_s(0) 	<= D;
			q_s(1)   <= q_s(0);
			q_s(2)   <= q_s(1);
			q_s(3) 	<= q_s(2);
			Q		   <= q_s(3);
		end if;
	end process;
end architecture;
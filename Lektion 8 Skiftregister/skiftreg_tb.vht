library IEEE;
use IEEE.std_logic_1164.all;

entity skiftreg_tb is
end entity;

architecture tb of skiftreg_tb is

component skiftreg is
	port
	(
		D, CLK, RST	: in std_logic;
		Q				: out std_logic
	);
end component;

signal d_s, c_s, q_s : std_logic := '0';
signal rst_s         : std_logic := '0';

begin

uut : skiftreg
  port map
  (
    D => d_s,
	 CLK => c_s,
	 RST => rst_s,
	 Q => q_s
  );
 
 
clk_proc : process is
begin
  c_s <= not c_s;
  wait for 500 ns;
end process;

stimuli : process
begin
  wait for 1000 ns;
  d_s <= not d_s;
end process;  
	
end architecture;
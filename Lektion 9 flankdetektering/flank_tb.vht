library IEEE;
use IEEE.std_logic_1164.all;

entity flank_tb is
end entity;

architecture tb of flank_tb is

component flank is
	port
	(
     d          : in  std_logic;
	  clk, rst   : in  std_logic;
	  q, f       : out std_logic  
	);
end component;

constant CLK_PERIOD : time := 1 us;
constant SIM_LENGTH : natural := 100;

signal d_s, c_s, q_s : std_logic := '0';
signal f_s           : std_logic := '0';
signal rst_s         : std_logic := '0';

begin

uut : flank
  port map
  (
    d => d_s,
	 clk => c_s,
	 rst => rst_s,
	 q => q_s,
	 f => f_s
  );
 
 
clk_proc : process
begin
    for i in 0 to SIM_LENGTH-1 loop
    clk_s <= not clk_s;
    wait for CLK_PERIOD/2;
    end loop;
    wait;
end process;

stimuli : process
begin
   wait for CLK_PERIOD;
    rst_s <= '1';
    wait for 300 ns;
    rst_s <= '0';
    wait for 2CLK_PERIOD;

    Din_s <= '1';

    --wait for 10CLK_PERIOD;

    wait;
end process;  
	
end architecture;
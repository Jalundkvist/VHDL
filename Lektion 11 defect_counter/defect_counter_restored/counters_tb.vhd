library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counters_tb is
end entity;

architecture tb of counters_tb is

component counters is
	port
	(
      clk  : in std_logic;
      rst_n: in std_logic;
      ce   : in std_logic;
      cnt  : out std_logic_vector(3 downto 0);
		cnt2 : out std_logic_vector(5 downto 0)
	);
end component;

signal clk_s   : std_logic := '0';
signal rst_s   : std_logic := '0';
signal ce_s    : std_logic := '0';
signal cnt_s   : std_logic_vector(3 downto 0);
signal cnt2_s   : std_logic_vector(5 downto 0);

constant CLK_PERIOD : time := 20 ns;
constant SIM_TIME   : time := 10 us;

begin

--instantiate unit under test
uut : counters
	port map(clk_s, rst_s, ce_s, cnt_s, cnt2_s);

clk_proc : process
begin
   clk_s <= not clk_s;
   wait for CLK_PERIOD/2;

   --stanna här om tiden SIM_TIME har löpt ut (för att avsluta simuleringen)
   if now > SIM_TIME then
      wait;
   end if;
end process;

ce_proc : process
begin
   ce_s <= '1';
   wait for CLK_PERIOD;
   ce_s <= '0';
   wait for 10*CLK_PERIOD;

   --stanna här om tiden SIM_TIME har löpt ut (för att avsluta simuleringen)
   if now > SIM_TIME then
      wait;
   end if;

end process;


state_mach : process
begin
   wait for 10 ns;
   rst_s <= '1';

   --stanna här (för att avsluta simuleringen)
   wait;
   
end process; 	 

end architecture;
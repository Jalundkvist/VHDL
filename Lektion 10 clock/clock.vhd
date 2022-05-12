library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity counters is
    port
    (
      clk  : in std_logic;
      rst  : in std_logic;
      ce   : in std_logic;
      cnt  : out std_logic_vector(3 downto 0)
    );
end entity;

architecture behaviour of counters is

signal cnt_s : std_logic_vector(3 downto 0);
begin

    process (clk, rst) is
    begin
	    if rising_edge(clk) then
			if ce = '1' then
			   cnt_s <= cnt_s + 1;
			end if;
		 end if;
    end process;
	 cnt <= cnt_s;
end architecture;
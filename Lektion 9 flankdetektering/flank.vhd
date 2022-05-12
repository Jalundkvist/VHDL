library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity flank is
  port
  (
    d          : in  std_logic;
	 clk, rst   : in  std_logic;
	 q          : out std_logic;
    cnt        : out std_logic_vector(3 downto 0)
  );
end entity;

architecture behaviour of flank is

signal q0, f_s : std_logic;
signal cnt_s   : std_logic_vector(3 downto 0);

begin
  
  process (clk, rst, cnt_s) is
  begin
  
    if rst  = '1' then
	    q0  <= '0';
		 q   <= '0';
	 elsif rising_edge(clk) then
	    q0  <= d;
		 q   <= q0;
		 f_s <= d and (not q0);
		 
		 if f_s = '1' then
          cnt_s <= cnt_s + 1;
	    end if;
	 end if;
	 
	 cnt <= cnt_s;	 
	 
  end process;
end architecture;
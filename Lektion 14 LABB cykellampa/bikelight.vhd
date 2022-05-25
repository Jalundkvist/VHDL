library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
library work;
use work.bikelight_pkg.all;

entity bikelight is
   port
   (
      clk         : in std_logic;
      input       : in std_logic;
      output      : out std_logic_vector (1 downto 0);
      light_state : out bikelight_state_t
   );
end entity;

architecture rtl of bikelight is

signal light_state_s : bikelight_state_t := is_off;
signal input_s       : std_logic;
signal output_s      : std_logic_vector (1 downto 0);
signal counter_s, counter_max_s : counter_t;
signal slow_clock_s  : std_logic;
signal burst_blink   : natural range 0 to 4; 

begin
   process(clk, light_state_s, output_s) is
   variable input_flank_v : std_logic := '0';
   begin
      if rising_edge(clk) then
         input_s <= input;
-------------------------------------------------------			
         if (input = '1' and input_s = '0') then
            input_flank_v := '1'; 
         else
            input_flank_v := '0';
         end if;
-------------------------------------------------------
         case light_state_s is
            when is_off =>
               if input_flank_v = '1' then
                  light_state_s <= is_on;
               end if;
            when is_on =>
               if input_flank_v = '1' then
                  light_state_s <= is_blinking;
						counter_max_s <= FREQUENCY_9HZ;
						counter_s <= 0;
               end if;
            when is_blinking =>
               if input_flank_v = '1' then
                  light_state_s <= is_burst;
						counter_max_s <= FREQUENCY_30HZ;
						counter_s <= 0;
               end if;
            when is_burst =>
               if input_flank_v = '1' then
                  light_state_s <= is_off;
               end if;
            when others =>
               light_state_s <= is_off;
         end case;
-------------------------------------------------------
			if    (light_state_s = is_off) then
			   output_s <= (others => '0');
			elsif (light_state_s = is_on) then
			   output_s <= (others => '1');
			elsif (light_state_s = is_blinking) then
			   if (slow_clock_s = '1') then
				   output_s <= not output_s;
				end if;
			elsif (light_state_s = is_burst) then
			   if (slow_clock_s = '1') then
				   output_s <= not output_s;
				end if;
			end if; 
		end if;      
	end process;
	
	process (clk) is -- Använd slow_clock_s, counter_s samt counter_max_s.
	begin
	   if (rising_edge(clk)) then
		   if (light_state_s = is_blinking) then or (ligh_state_s = is_burst) then
			
				counter_s <= counter_s +1;
				if (counter_s > counter_max_s) then
					slow_clock_s <= '1';
				else 
					slow_clock_s <= '0';
				end if;
		   -- Räkna antalet klockpulser (inkrementera räknaren).
			-- När räknaren har räknat upp till max, ettställ (ticka) den långsamma klock och nollställs räknaren.
			-- Övrig tid, håll den långsamma låg.
			end if;
		end if;
	end process;
	
	light_state <= light_state_s;
	output      <= output_s;
	
end architecture;
library IEEE;
use IEEE.std_logic_1164.all;

library work;
use work.car_state_pkg.all;

entity car_state is
    port
    (
        rst           : in std_logic;
        clk           : in std_logic;
        start         : in std_logic;
        foot_break    : in std_logic;
        transm_parked : in std_logic;
		  crank			 : out std_logic;
        the_state     : out car_state_t
    );
end entity;

architecture rtl of car_state is

signal the_state_s     : car_state_t;
signal start_s         : std_logic;


begin
    process (clk, rst, start, the_state_s) is
	 variable start_flank_v : std_logic := '0';
     begin
        if rst = '1' then
            the_state_s   <= parked;
				start_flank_v := '0';
				start_s       <= '0';
        elsif rising_edge(clk) then
		     start_s <= start;
		     if (start = '1' and start_s = '0') then
			     start_flank_v := '1'; 
			  else
			     start_flank_v := '0';
		     end if;
              case the_state_s is
                 when parked =>
                     if ((start_flank_v = '1') and (foot_break = '1')) then
                         the_state_s <= cranking;
                     elsif ((start_flank_v = '1') and (foot_break = '0')) then
                         the_state_s <= ignition_on;
                     end if;
							
                 when is_driving =>
                             if ((start_flank_v = '1') and (transm_parked = '1') and (foot_break = '0')) then
                                 the_state_s <= parked;
                             end if;
									  
                 when ignition_on =>
                    if (foot_break = '0' and start_flank_v = '1') then
                       the_state_s <= parked;
                    elsif (foot_break = '1' and start_flank_v = '1') then
                       the_state_s <= cranking;
                    end if;
						  
					  when cranking =>
					     if (start_flank_v = '0') then
						     the_state_s <= is_driving;
						  end if;
					  

            end case;
           end if;
          -- Kör startmotor om start-knapp är tryckt och state = is_driving.
	        if the_state_s = cranking then
			     crank <= '1';
			  else 
			     crank <= '0';
			  end if;
    end process;

    the_state <= the_state_s;

end architecture;
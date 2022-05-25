package bikelight_pkg is

type bikelight_state_t is (is_off, is_on, is_blinking, is_burst);

constant COUNTER_MAX : natural := 50000000;
subtype counter_t is natural range 0 to COUNTER_MAX;
subtype frequency_t is natural;
constant FREQUENCY_9HZ : frequency_t := 11111111; --  50M / 9 HZ
constant FREQUENCY_30HZ  : frequency_t := 1666666;

end package;
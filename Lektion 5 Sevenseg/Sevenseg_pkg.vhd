library IEEE;
use IEEE.std_logic_1164.all;

package Sevenseg_pkg is -- start av paket
	constant ZERO : std_logic_vector ( 6 downto 0) := "1000000";
	constant ONE : std_logic_vector ( 6 downto 0) := "1111001";
	constant TWO : std_logic_vector ( 6 downto 0) := "0100100";
	constant THREE : std_logic_vector ( 6 downto 0) := "0110000";
	constant FOUR : std_logic_vector ( 6 downto 0) := "0011001";
	constant FIVE : std_logic_vector ( 6 downto 0) := "0010010";
	constant SIX : std_logic_vector ( 6 downto 0) := "0000010";
	constant SEVEN : std_logic_vector ( 6 downto 0) := "1111000";
	constant EIGHT : std_logic_vector ( 6 downto 0) := "0000000";
	constant NINE : std_logic_vector ( 6 downto 0) := "0011000";
	constant A : std_logic_vector ( 6 downto 0) := "0001000";
	constant B : std_logic_vector (6 downto 0) := "0000011";
	constant C : std_logic_vector (6 downto 0) := "1000110";
	constant D : std_logic_vector (6 downto 0) := "0100001";
	constant E : std_logic_vector (6 downto 0) := "0000110";
	constant F : std_logic_vector (6 downto 0) := "0001110";
	constant NONE : std_logic_vector (6 downto 0) := "1111111";
	
	component Sevenseg is
	port
		(
			input	: in std_logic_vector(3 downto 0);
			output 	: out std_logic_vector(6 downto 0)
		);
	end component;
	
end package; -- end of package


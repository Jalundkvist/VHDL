-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/21/2022 10:54:28"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Sevenseg IS
    PORT (
	input : IN std_logic_vector(3 DOWNTO 0);
	output : OUT std_logic_vector(6 DOWNTO 0)
	);
END Sevenseg;

-- Design Ports Information
-- output[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Sevenseg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_input[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_input <= input;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_input[3]~input_o\ <= NOT \input[3]~input_o\;
\ALT_INV_input[2]~input_o\ <= NOT \input[2]~input_o\;
\ALT_INV_input[1]~input_o\ <= NOT \input[1]~input_o\;
\ALT_INV_input[0]~input_o\ <= NOT \input[0]~input_o\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X54_Y18_N79
\output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_output(0));

-- Location: IOOBUF_X54_Y20_N22
\output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_output(1));

-- Location: IOOBUF_X54_Y18_N45
\output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_output(2));

-- Location: IOOBUF_X54_Y19_N39
\output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_output(3));

-- Location: IOOBUF_X54_Y18_N62
\output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_output(4));

-- Location: IOOBUF_X54_Y19_N5
\output[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_output(5));

-- Location: IOOBUF_X54_Y19_N56
\output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_output(6));

-- Location: IOIBUF_X54_Y17_N55
\input[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X54_Y17_N21
\input[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: IOIBUF_X54_Y18_N95
\input[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: IOIBUF_X54_Y17_N38
\input[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: LABCELL_X53_Y18_N0
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \input[2]~input_o\ & ( \input[3]~input_o\ & ( (\input[0]~input_o\ & !\input[1]~input_o\) ) ) ) # ( !\input[2]~input_o\ & ( \input[3]~input_o\ & ( (\input[0]~input_o\ & \input[1]~input_o\) ) ) ) # ( \input[2]~input_o\ & ( 
-- !\input[3]~input_o\ & ( (!\input[0]~input_o\ & !\input[1]~input_o\) ) ) ) # ( !\input[2]~input_o\ & ( !\input[3]~input_o\ & ( (\input[0]~input_o\ & !\input[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101000001010000000000101000001010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[0]~input_o\,
	datac => \ALT_INV_input[1]~input_o\,
	datae => \ALT_INV_input[2]~input_o\,
	dataf => \ALT_INV_input[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X53_Y18_N9
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \input[2]~input_o\ & ( \input[3]~input_o\ & ( (!\input[0]~input_o\) # (\input[1]~input_o\) ) ) ) # ( !\input[2]~input_o\ & ( \input[3]~input_o\ & ( (\input[1]~input_o\ & \input[0]~input_o\) ) ) ) # ( \input[2]~input_o\ & ( 
-- !\input[3]~input_o\ & ( !\input[1]~input_o\ $ (!\input[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[1]~input_o\,
	datad => \ALT_INV_input[0]~input_o\,
	datae => \ALT_INV_input[2]~input_o\,
	dataf => \ALT_INV_input[3]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X53_Y18_N42
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \input[2]~input_o\ & ( \input[3]~input_o\ & ( (!\input[0]~input_o\) # (\input[1]~input_o\) ) ) ) # ( !\input[2]~input_o\ & ( !\input[3]~input_o\ & ( (!\input[0]~input_o\ & \input[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000000000000000000001010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[0]~input_o\,
	datac => \ALT_INV_input[1]~input_o\,
	datae => \ALT_INV_input[2]~input_o\,
	dataf => \ALT_INV_input[3]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X53_Y18_N21
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \input[2]~input_o\ & ( \input[3]~input_o\ & ( (\input[1]~input_o\ & \input[0]~input_o\) ) ) ) # ( !\input[2]~input_o\ & ( \input[3]~input_o\ & ( !\input[1]~input_o\ $ (!\input[0]~input_o\) ) ) ) # ( \input[2]~input_o\ & ( 
-- !\input[3]~input_o\ & ( !\input[1]~input_o\ $ (\input[0]~input_o\) ) ) ) # ( !\input[2]~input_o\ & ( !\input[3]~input_o\ & ( (!\input[1]~input_o\ & \input[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010101010100101010101010101101010100000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[1]~input_o\,
	datad => \ALT_INV_input[0]~input_o\,
	datae => \ALT_INV_input[2]~input_o\,
	dataf => \ALT_INV_input[3]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X53_Y18_N24
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !\input[2]~input_o\ & ( \input[3]~input_o\ & ( (\input[0]~input_o\ & !\input[1]~input_o\) ) ) ) # ( \input[2]~input_o\ & ( !\input[3]~input_o\ & ( (!\input[1]~input_o\) # (\input[0]~input_o\) ) ) ) # ( !\input[2]~input_o\ & ( 
-- !\input[3]~input_o\ & ( \input[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111101011111010101010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[0]~input_o\,
	datac => \ALT_INV_input[1]~input_o\,
	datae => \ALT_INV_input[2]~input_o\,
	dataf => \ALT_INV_input[3]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X53_Y18_N33
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \input[2]~input_o\ & ( \input[3]~input_o\ & ( (!\input[1]~input_o\ & \input[0]~input_o\) ) ) ) # ( \input[2]~input_o\ & ( !\input[3]~input_o\ & ( (\input[1]~input_o\ & \input[0]~input_o\) ) ) ) # ( !\input[2]~input_o\ & ( 
-- !\input[3]~input_o\ & ( (\input[0]~input_o\) # (\input[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111000000000101010100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[1]~input_o\,
	datad => \ALT_INV_input[0]~input_o\,
	datae => \ALT_INV_input[2]~input_o\,
	dataf => \ALT_INV_input[3]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X53_Y18_N36
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \input[2]~input_o\ & ( \input[3]~input_o\ & ( (\input[1]~input_o\) # (\input[0]~input_o\) ) ) ) # ( !\input[2]~input_o\ & ( \input[3]~input_o\ ) ) # ( \input[2]~input_o\ & ( !\input[3]~input_o\ & ( (!\input[0]~input_o\) # 
-- (!\input[1]~input_o\) ) ) ) # ( !\input[2]~input_o\ & ( !\input[3]~input_o\ & ( \input[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111110101111101011111111111111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[0]~input_o\,
	datac => \ALT_INV_input[1]~input_o\,
	datae => \ALT_INV_input[2]~input_o\,
	dataf => \ALT_INV_input[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X25_Y16_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;



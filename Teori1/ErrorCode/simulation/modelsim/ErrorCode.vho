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

-- DATE "05/20/2022 14:29:39"

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

ENTITY 	ErrorCode IS
    PORT (
	switch : IN std_logic_vector(3 DOWNTO 0);
	key_n : IN std_logic;
	led : OUT std_logic
	);
END ErrorCode;

-- Design Ports Information
-- led	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_n	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ErrorCode IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_switch : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_key_n : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \key_n~input_o\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_key_n~input_o\ : std_logic;
SIGNAL \ALT_INV_switch[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch[0]~input_o\ : std_logic;

BEGIN

ww_switch <= switch;
ww_key_n <= key_n;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_key_n~input_o\ <= NOT \key_n~input_o\;
\ALT_INV_switch[3]~input_o\ <= NOT \switch[3]~input_o\;
\ALT_INV_switch[2]~input_o\ <= NOT \switch[2]~input_o\;
\ALT_INV_switch[1]~input_o\ <= NOT \switch[1]~input_o\;
\ALT_INV_switch[0]~input_o\ <= NOT \switch[0]~input_o\;

-- Location: IOOBUF_X0_Y18_N79
\led~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~0_combout\,
	devoe => ww_devoe,
	o => ww_led);

-- Location: IOIBUF_X10_Y0_N92
\key_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_n,
	o => \key_n~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\switch[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\switch[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(2),
	o => \switch[2]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\switch[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\switch[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(3),
	o => \switch[3]~input_o\);

-- Location: LABCELL_X32_Y1_N30
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( \switch[0]~input_o\ & ( \switch[3]~input_o\ & ( (!\key_n~input_o\ & (!\switch[1]~input_o\ $ (!\switch[2]~input_o\))) ) ) ) # ( !\switch[0]~input_o\ & ( \switch[3]~input_o\ & ( (!\key_n~input_o\ & (!\switch[1]~input_o\ $ 
-- (\switch[2]~input_o\))) ) ) ) # ( \switch[0]~input_o\ & ( !\switch[3]~input_o\ & ( (!\key_n~input_o\ & (!\switch[1]~input_o\ $ (\switch[2]~input_o\))) ) ) ) # ( !\switch[0]~input_o\ & ( !\switch[3]~input_o\ & ( (!\key_n~input_o\ & (!\switch[1]~input_o\ $ 
-- (!\switch[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000110000000000110011000000000011000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key_n~input_o\,
	datac => \ALT_INV_switch[1]~input_o\,
	datad => \ALT_INV_switch[2]~input_o\,
	datae => \ALT_INV_switch[0]~input_o\,
	dataf => \ALT_INV_switch[3]~input_o\,
	combout => \process_0~0_combout\);

-- Location: LABCELL_X12_Y21_N3
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



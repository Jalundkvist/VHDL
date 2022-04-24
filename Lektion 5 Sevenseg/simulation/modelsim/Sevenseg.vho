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

-- DATE "04/22/2022 11:08:33"

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

ENTITY 	top IS
    PORT (
	switch0 : IN std_logic_vector(3 DOWNTO 0);
	switch1 : IN std_logic_vector(3 DOWNTO 0);
	led0 : BUFFER std_logic_vector(6 DOWNTO 0);
	led1 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- led0[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch0[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch0[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch0[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch0[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch1[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch1[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch1[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch1[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_switch0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_switch1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_led0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \switch0[0]~input_o\ : std_logic;
SIGNAL \switch0[1]~input_o\ : std_logic;
SIGNAL \switch0[2]~input_o\ : std_logic;
SIGNAL \switch0[3]~input_o\ : std_logic;
SIGNAL \display0|Mux6~0_combout\ : std_logic;
SIGNAL \display0|Mux5~0_combout\ : std_logic;
SIGNAL \display0|Mux4~0_combout\ : std_logic;
SIGNAL \display0|Mux3~0_combout\ : std_logic;
SIGNAL \display0|Mux2~0_combout\ : std_logic;
SIGNAL \display0|Mux1~0_combout\ : std_logic;
SIGNAL \display0|Mux0~0_combout\ : std_logic;
SIGNAL \switch1[2]~input_o\ : std_logic;
SIGNAL \switch1[0]~input_o\ : std_logic;
SIGNAL \switch1[3]~input_o\ : std_logic;
SIGNAL \switch1[1]~input_o\ : std_logic;
SIGNAL \display1|Mux6~0_combout\ : std_logic;
SIGNAL \display1|Mux5~0_combout\ : std_logic;
SIGNAL \display1|Mux4~0_combout\ : std_logic;
SIGNAL \display1|Mux3~0_combout\ : std_logic;
SIGNAL \display1|Mux2~0_combout\ : std_logic;
SIGNAL \display1|Mux1~0_combout\ : std_logic;
SIGNAL \display1|Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_switch1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch0[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch0[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch0[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch0[0]~input_o\ : std_logic;
SIGNAL \display1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \display0|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_switch0 <= switch0;
ww_switch1 <= switch1;
led0 <= ww_led0;
led1 <= ww_led1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_switch1[3]~input_o\ <= NOT \switch1[3]~input_o\;
\ALT_INV_switch1[2]~input_o\ <= NOT \switch1[2]~input_o\;
\ALT_INV_switch1[1]~input_o\ <= NOT \switch1[1]~input_o\;
\ALT_INV_switch1[0]~input_o\ <= NOT \switch1[0]~input_o\;
\ALT_INV_switch0[3]~input_o\ <= NOT \switch0[3]~input_o\;
\ALT_INV_switch0[2]~input_o\ <= NOT \switch0[2]~input_o\;
\ALT_INV_switch0[1]~input_o\ <= NOT \switch0[1]~input_o\;
\ALT_INV_switch0[0]~input_o\ <= NOT \switch0[0]~input_o\;
\display1|ALT_INV_Mux0~0_combout\ <= NOT \display1|Mux0~0_combout\;
\display0|ALT_INV_Mux0~0_combout\ <= NOT \display0|Mux0~0_combout\;

-- Location: IOOBUF_X52_Y0_N53
\led0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_led0(0));

-- Location: IOOBUF_X51_Y0_N36
\led0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_led0(1));

-- Location: IOOBUF_X48_Y0_N76
\led0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_led0(2));

-- Location: IOOBUF_X50_Y0_N36
\led0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_led0(3));

-- Location: IOOBUF_X48_Y0_N93
\led0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_led0(4));

-- Location: IOOBUF_X50_Y0_N53
\led0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_led0(5));

-- Location: IOOBUF_X46_Y0_N36
\led0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_led0(6));

-- Location: IOOBUF_X44_Y0_N36
\led1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_led1(0));

-- Location: IOOBUF_X40_Y0_N93
\led1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_led1(1));

-- Location: IOOBUF_X44_Y0_N53
\led1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_led1(2));

-- Location: IOOBUF_X43_Y0_N36
\led1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_led1(3));

-- Location: IOOBUF_X38_Y0_N36
\led1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_led1(4));

-- Location: IOOBUF_X43_Y0_N53
\led1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_led1(5));

-- Location: IOOBUF_X51_Y0_N53
\led1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_led1(6));

-- Location: IOIBUF_X33_Y0_N41
\switch0[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch0(0),
	o => \switch0[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\switch0[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch0(1),
	o => \switch0[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\switch0[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch0(2),
	o => \switch0[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\switch0[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch0(3),
	o => \switch0[3]~input_o\);

-- Location: MLABCELL_X42_Y2_N0
\display0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|Mux6~0_combout\ = ( \switch0[2]~input_o\ & ( \switch0[3]~input_o\ & ( (\switch0[0]~input_o\ & !\switch0[1]~input_o\) ) ) ) # ( !\switch0[2]~input_o\ & ( \switch0[3]~input_o\ & ( (\switch0[0]~input_o\ & \switch0[1]~input_o\) ) ) ) # ( 
-- \switch0[2]~input_o\ & ( !\switch0[3]~input_o\ & ( (!\switch0[0]~input_o\ & !\switch0[1]~input_o\) ) ) ) # ( !\switch0[2]~input_o\ & ( !\switch0[3]~input_o\ & ( (\switch0[0]~input_o\ & !\switch0[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000110000001100000000000011000000110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switch0[0]~input_o\,
	datac => \ALT_INV_switch0[1]~input_o\,
	datae => \ALT_INV_switch0[2]~input_o\,
	dataf => \ALT_INV_switch0[3]~input_o\,
	combout => \display0|Mux6~0_combout\);

-- Location: MLABCELL_X42_Y2_N9
\display0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|Mux5~0_combout\ = ( \switch0[2]~input_o\ & ( \switch0[3]~input_o\ & ( (!\switch0[0]~input_o\) # (\switch0[1]~input_o\) ) ) ) # ( !\switch0[2]~input_o\ & ( \switch0[3]~input_o\ & ( (\switch0[1]~input_o\ & \switch0[0]~input_o\) ) ) ) # ( 
-- \switch0[2]~input_o\ & ( !\switch0[3]~input_o\ & ( !\switch0[1]~input_o\ $ (!\switch0[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch0[1]~input_o\,
	datac => \ALT_INV_switch0[0]~input_o\,
	datae => \ALT_INV_switch0[2]~input_o\,
	dataf => \ALT_INV_switch0[3]~input_o\,
	combout => \display0|Mux5~0_combout\);

-- Location: MLABCELL_X42_Y2_N42
\display0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|Mux4~0_combout\ = ( \switch0[2]~input_o\ & ( \switch0[3]~input_o\ & ( (!\switch0[0]~input_o\) # (\switch0[1]~input_o\) ) ) ) # ( !\switch0[2]~input_o\ & ( !\switch0[3]~input_o\ & ( (!\switch0[0]~input_o\ & \switch0[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switch0[0]~input_o\,
	datac => \ALT_INV_switch0[1]~input_o\,
	datae => \ALT_INV_switch0[2]~input_o\,
	dataf => \ALT_INV_switch0[3]~input_o\,
	combout => \display0|Mux4~0_combout\);

-- Location: MLABCELL_X42_Y2_N21
\display0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|Mux3~0_combout\ = ( \switch0[2]~input_o\ & ( \switch0[3]~input_o\ & ( (\switch0[1]~input_o\ & \switch0[0]~input_o\) ) ) ) # ( !\switch0[2]~input_o\ & ( \switch0[3]~input_o\ & ( !\switch0[1]~input_o\ $ (!\switch0[0]~input_o\) ) ) ) # ( 
-- \switch0[2]~input_o\ & ( !\switch0[3]~input_o\ & ( !\switch0[1]~input_o\ $ (\switch0[0]~input_o\) ) ) ) # ( !\switch0[2]~input_o\ & ( !\switch0[3]~input_o\ & ( (!\switch0[1]~input_o\ & \switch0[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101001011010010101011010010110100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch0[1]~input_o\,
	datac => \ALT_INV_switch0[0]~input_o\,
	datae => \ALT_INV_switch0[2]~input_o\,
	dataf => \ALT_INV_switch0[3]~input_o\,
	combout => \display0|Mux3~0_combout\);

-- Location: MLABCELL_X42_Y2_N24
\display0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|Mux2~0_combout\ = ( !\switch0[2]~input_o\ & ( \switch0[3]~input_o\ & ( (\switch0[0]~input_o\ & !\switch0[1]~input_o\) ) ) ) # ( \switch0[2]~input_o\ & ( !\switch0[3]~input_o\ & ( (!\switch0[1]~input_o\) # (\switch0[0]~input_o\) ) ) ) # ( 
-- !\switch0[2]~input_o\ & ( !\switch0[3]~input_o\ & ( \switch0[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111100111111001100110000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switch0[0]~input_o\,
	datac => \ALT_INV_switch0[1]~input_o\,
	datae => \ALT_INV_switch0[2]~input_o\,
	dataf => \ALT_INV_switch0[3]~input_o\,
	combout => \display0|Mux2~0_combout\);

-- Location: MLABCELL_X42_Y2_N33
\display0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|Mux1~0_combout\ = ( \switch0[2]~input_o\ & ( \switch0[3]~input_o\ & ( (!\switch0[1]~input_o\ & \switch0[0]~input_o\) ) ) ) # ( \switch0[2]~input_o\ & ( !\switch0[3]~input_o\ & ( (\switch0[1]~input_o\ & \switch0[0]~input_o\) ) ) ) # ( 
-- !\switch0[2]~input_o\ & ( !\switch0[3]~input_o\ & ( (\switch0[0]~input_o\) # (\switch0[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000001010000010100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch0[1]~input_o\,
	datac => \ALT_INV_switch0[0]~input_o\,
	datae => \ALT_INV_switch0[2]~input_o\,
	dataf => \ALT_INV_switch0[3]~input_o\,
	combout => \display0|Mux1~0_combout\);

-- Location: MLABCELL_X42_Y2_N36
\display0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|Mux0~0_combout\ = ( \switch0[3]~input_o\ & ( ((!\switch0[2]~input_o\) # (\switch0[1]~input_o\)) # (\switch0[0]~input_o\) ) ) # ( !\switch0[3]~input_o\ & ( (!\switch0[1]~input_o\ & ((\switch0[2]~input_o\))) # (\switch0[1]~input_o\ & 
-- ((!\switch0[0]~input_o\) # (!\switch0[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111100000011111111110011111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switch0[0]~input_o\,
	datac => \ALT_INV_switch0[1]~input_o\,
	datad => \ALT_INV_switch0[2]~input_o\,
	dataf => \ALT_INV_switch0[3]~input_o\,
	combout => \display0|Mux0~0_combout\);

-- Location: IOIBUF_X34_Y0_N52
\switch1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch1(2),
	o => \switch1[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\switch1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch1(0),
	o => \switch1[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\switch1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch1(3),
	o => \switch1[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\switch1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch1(1),
	o => \switch1[1]~input_o\);

-- Location: MLABCELL_X42_Y2_N15
\display1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux6~0_combout\ = ( \switch1[1]~input_o\ & ( (!\switch1[2]~input_o\ & (\switch1[0]~input_o\ & \switch1[3]~input_o\)) ) ) # ( !\switch1[1]~input_o\ & ( (!\switch1[2]~input_o\ & (\switch1[0]~input_o\ & !\switch1[3]~input_o\)) # 
-- (\switch1[2]~input_o\ & (!\switch1[0]~input_o\ $ (\switch1[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch1[2]~input_o\,
	datac => \ALT_INV_switch1[0]~input_o\,
	datad => \ALT_INV_switch1[3]~input_o\,
	dataf => \ALT_INV_switch1[1]~input_o\,
	combout => \display1|Mux6~0_combout\);

-- Location: MLABCELL_X42_Y2_N48
\display1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux5~0_combout\ = ( \switch1[1]~input_o\ & ( (!\switch1[0]~input_o\ & (\switch1[2]~input_o\)) # (\switch1[0]~input_o\ & ((\switch1[3]~input_o\))) ) ) # ( !\switch1[1]~input_o\ & ( (\switch1[2]~input_o\ & (!\switch1[0]~input_o\ $ 
-- (!\switch1[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch1[2]~input_o\,
	datab => \ALT_INV_switch1[0]~input_o\,
	datad => \ALT_INV_switch1[3]~input_o\,
	dataf => \ALT_INV_switch1[1]~input_o\,
	combout => \display1|Mux5~0_combout\);

-- Location: MLABCELL_X42_Y2_N51
\display1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux4~0_combout\ = ( \switch1[1]~input_o\ & ( (!\switch1[2]~input_o\ & (!\switch1[0]~input_o\ & !\switch1[3]~input_o\)) # (\switch1[2]~input_o\ & ((\switch1[3]~input_o\))) ) ) # ( !\switch1[1]~input_o\ & ( (\switch1[2]~input_o\ & 
-- (!\switch1[0]~input_o\ & \switch1[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch1[2]~input_o\,
	datac => \ALT_INV_switch1[0]~input_o\,
	datad => \ALT_INV_switch1[3]~input_o\,
	dataf => \ALT_INV_switch1[1]~input_o\,
	combout => \display1|Mux4~0_combout\);

-- Location: MLABCELL_X42_Y2_N12
\display1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux3~0_combout\ = ( \switch1[1]~input_o\ & ( (!\switch1[2]~input_o\ & (!\switch1[0]~input_o\ & \switch1[3]~input_o\)) # (\switch1[2]~input_o\ & (\switch1[0]~input_o\)) ) ) # ( !\switch1[1]~input_o\ & ( (!\switch1[2]~input_o\ & 
-- (\switch1[0]~input_o\)) # (\switch1[2]~input_o\ & (!\switch1[0]~input_o\ & !\switch1[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000100010011001100010001000010001100110010001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch1[2]~input_o\,
	datab => \ALT_INV_switch1[0]~input_o\,
	datad => \ALT_INV_switch1[3]~input_o\,
	dataf => \ALT_INV_switch1[1]~input_o\,
	combout => \display1|Mux3~0_combout\);

-- Location: MLABCELL_X42_Y2_N39
\display1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux2~0_combout\ = ( \switch1[1]~input_o\ & ( (!\switch1[3]~input_o\ & \switch1[0]~input_o\) ) ) # ( !\switch1[1]~input_o\ & ( (!\switch1[2]~input_o\ & ((\switch1[0]~input_o\))) # (\switch1[2]~input_o\ & (!\switch1[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111010010100001111101000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch1[2]~input_o\,
	datac => \ALT_INV_switch1[3]~input_o\,
	datad => \ALT_INV_switch1[0]~input_o\,
	dataf => \ALT_INV_switch1[1]~input_o\,
	combout => \display1|Mux2~0_combout\);

-- Location: MLABCELL_X42_Y2_N54
\display1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux1~0_combout\ = ( \switch1[1]~input_o\ & ( (!\switch1[3]~input_o\ & ((!\switch1[2]~input_o\) # (\switch1[0]~input_o\))) ) ) # ( !\switch1[1]~input_o\ & ( (\switch1[0]~input_o\ & (!\switch1[2]~input_o\ $ (\switch1[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000010001001000100001000110111011000000001011101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch1[2]~input_o\,
	datab => \ALT_INV_switch1[0]~input_o\,
	datad => \ALT_INV_switch1[3]~input_o\,
	dataf => \ALT_INV_switch1[1]~input_o\,
	combout => \display1|Mux1~0_combout\);

-- Location: MLABCELL_X42_Y2_N57
\display1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux0~0_combout\ = ( \switch1[1]~input_o\ & ( (!\switch1[2]~input_o\) # ((!\switch1[0]~input_o\) # (\switch1[3]~input_o\)) ) ) # ( !\switch1[1]~input_o\ & ( (!\switch1[2]~input_o\ & ((\switch1[3]~input_o\))) # (\switch1[2]~input_o\ & 
-- ((!\switch1[3]~input_o\) # (\switch1[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101101011011010110110101101111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch1[2]~input_o\,
	datab => \ALT_INV_switch1[0]~input_o\,
	datac => \ALT_INV_switch1[3]~input_o\,
	dataf => \ALT_INV_switch1[1]~input_o\,
	combout => \display1|Mux0~0_combout\);

-- Location: LABCELL_X7_Y1_N0
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



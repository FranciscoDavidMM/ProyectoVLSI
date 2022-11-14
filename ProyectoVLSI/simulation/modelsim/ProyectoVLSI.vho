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

-- DATE "11/13/2022 23:26:49"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	uart_rx IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	rx : IN std_logic;
	s_tick : IN std_logic;
	rx_done_tick : BUFFER std_logic;
	dout : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END uart_rx;

-- Design Ports Information
-- rx_done_tick	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[2]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[7]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_tick	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uart_rx IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_rx : std_logic;
SIGNAL ww_s_tick : std_logic;
SIGNAL ww_rx_done_tick : std_logic;
SIGNAL ww_dout : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \rx_done_tick~output_o\ : std_logic;
SIGNAL \dout[0]~output_o\ : std_logic;
SIGNAL \dout[1]~output_o\ : std_logic;
SIGNAL \dout[2]~output_o\ : std_logic;
SIGNAL \dout[3]~output_o\ : std_logic;
SIGNAL \dout[4]~output_o\ : std_logic;
SIGNAL \dout[5]~output_o\ : std_logic;
SIGNAL \dout[6]~output_o\ : std_logic;
SIGNAL \dout[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \s_tick~input_o\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \s_reg[3]~0_combout\ : std_logic;
SIGNAL \s_reg[3]~1_combout\ : std_logic;
SIGNAL \s_reg[3]~2_combout\ : std_logic;
SIGNAL \s_reg[0]~4_combout\ : std_logic;
SIGNAL \s_reg[1]~7_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \s_reg[3]~5_combout\ : std_logic;
SIGNAL \s_reg[0]~3_combout\ : std_logic;
SIGNAL \s_reg[0]~8_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \s_reg[2]~6_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \state_reg.idle~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \state_reg.start~q\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state_reg.data~q\ : std_logic;
SIGNAL \b_reg[0]~0_combout\ : std_logic;
SIGNAL \n_reg[2]~0_combout\ : std_logic;
SIGNAL \n_reg[0]~3_combout\ : std_logic;
SIGNAL \n_reg[1]~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \n_reg[2]~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state_reg.stop~q\ : std_logic;
SIGNAL \rx_done_tick~0_combout\ : std_logic;
SIGNAL \b_reg[4]~feeder_combout\ : std_logic;
SIGNAL \b_reg[3]~feeder_combout\ : std_logic;
SIGNAL \b_reg[2]~feeder_combout\ : std_logic;
SIGNAL s_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL b_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL n_reg : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_rx <= rx;
ww_s_tick <= s_tick;
rx_done_tick <= ww_rx_done_tick;
dout <= ww_dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X56_Y54_N30
\rx_done_tick~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_done_tick~0_combout\,
	devoe => ww_devoe,
	o => \rx_done_tick~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\dout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => b_reg(0),
	devoe => ww_devoe,
	o => \dout[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\dout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => b_reg(1),
	devoe => ww_devoe,
	o => \dout[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\dout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => b_reg(2),
	devoe => ww_devoe,
	o => \dout[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\dout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => b_reg(3),
	devoe => ww_devoe,
	o => \dout[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\dout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => b_reg(4),
	devoe => ww_devoe,
	o => \dout[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\dout[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => b_reg(5),
	devoe => ww_devoe,
	o => \dout[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\dout[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => b_reg(6),
	devoe => ww_devoe,
	o => \dout[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\dout[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => b_reg(7),
	devoe => ww_devoe,
	o => \dout[7]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X58_Y54_N22
\s_tick~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_tick,
	o => \s_tick~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\rx~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

-- Location: LCCOMB_X57_Y50_N6
\s_reg[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_reg[3]~0_combout\ = (\rx~input_o\ & !\state_reg.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx~input_o\,
	datad => \state_reg.idle~q\,
	combout => \s_reg[3]~0_combout\);

-- Location: LCCOMB_X57_Y50_N28
\s_reg[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_reg[3]~1_combout\ = (!\s_tick~input_o\ & ((\state_reg.data~q\) # ((\state_reg.start~q\) # (\state_reg.stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tick~input_o\,
	datab => \state_reg.data~q\,
	datac => \state_reg.start~q\,
	datad => \state_reg.stop~q\,
	combout => \s_reg[3]~1_combout\);

-- Location: LCCOMB_X58_Y50_N20
\s_reg[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_reg[3]~2_combout\ = (\s_reg[3]~0_combout\) # ((\s_reg[3]~1_combout\) # ((\state_reg.stop~q\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.stop~q\,
	datab => \Equal2~0_combout\,
	datac => \s_reg[3]~0_combout\,
	datad => \s_reg[3]~1_combout\,
	combout => \s_reg[3]~2_combout\);

-- Location: LCCOMB_X58_Y50_N4
\s_reg[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_reg[0]~4_combout\ = (\s_reg[0]~3_combout\ & (\state_reg.idle~q\ & !\s_reg[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_reg[0]~3_combout\,
	datab => \state_reg.idle~q\,
	datad => \s_reg[3]~2_combout\,
	combout => \s_reg[0]~4_combout\);

-- Location: LCCOMB_X58_Y50_N10
\s_reg[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_reg[1]~7_combout\ = (s_reg(1) & ((\s_reg[3]~2_combout\) # ((!s_reg(0) & \s_reg[0]~4_combout\)))) # (!s_reg(1) & (s_reg(0) & ((\s_reg[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_reg(0),
	datab => \s_reg[3]~2_combout\,
	datac => s_reg(1),
	datad => \s_reg[0]~4_combout\,
	combout => \s_reg[1]~7_combout\);

-- Location: IOIBUF_X0_Y18_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X58_Y50_N11
\s_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg[1]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg(1));

-- Location: LCCOMB_X58_Y50_N26
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (s_reg(2) & (s_reg(0) & s_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_reg(2),
	datab => s_reg(0),
	datad => s_reg(1),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X58_Y50_N8
\s_reg[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_reg[3]~5_combout\ = (s_reg(3) & ((\s_reg[3]~2_combout\) # ((!\Equal2~1_combout\ & \s_reg[0]~4_combout\)))) # (!s_reg(3) & (\Equal2~1_combout\ & ((\s_reg[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \s_reg[3]~2_combout\,
	datac => s_reg(3),
	datad => \s_reg[0]~4_combout\,
	combout => \s_reg[3]~5_combout\);

-- Location: FF_X58_Y50_N9
\s_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg[3]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg(3));

-- Location: LCCOMB_X58_Y50_N12
\s_reg[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_reg[0]~3_combout\ = ((\state_reg.data~q\ & ((!s_reg(3)))) # (!\state_reg.data~q\ & ((s_reg(3)) # (!\state_reg.start~q\)))) # (!\Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.data~q\,
	datab => \state_reg.start~q\,
	datac => \Equal2~1_combout\,
	datad => s_reg(3),
	combout => \s_reg[0]~3_combout\);

-- Location: LCCOMB_X58_Y50_N18
\s_reg[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_reg[0]~8_combout\ = (s_reg(0) & (((\s_reg[3]~2_combout\)))) # (!s_reg(0) & (\s_reg[0]~3_combout\ & (\state_reg.idle~q\ & !\s_reg[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_reg[0]~3_combout\,
	datab => \state_reg.idle~q\,
	datac => s_reg(0),
	datad => \s_reg[3]~2_combout\,
	combout => \s_reg[0]~8_combout\);

-- Location: FF_X58_Y50_N19
\s_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg[0]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg(0));

-- Location: LCCOMB_X57_Y50_N30
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = s_reg(2) $ (((s_reg(0) & s_reg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_reg(2),
	datab => s_reg(0),
	datad => s_reg(1),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X58_Y50_N6
\s_reg[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_reg[2]~6_combout\ = (\Add0~0_combout\ & ((\s_reg[0]~4_combout\) # ((\s_reg[3]~2_combout\ & s_reg(2))))) # (!\Add0~0_combout\ & (\s_reg[3]~2_combout\ & (s_reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \s_reg[3]~2_combout\,
	datac => s_reg(2),
	datad => \s_reg[0]~4_combout\,
	combout => \s_reg[2]~6_combout\);

-- Location: FF_X58_Y50_N7
\s_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg[2]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg(2));

-- Location: LCCOMB_X58_Y50_N16
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (s_reg(2) & (s_reg(0) & (s_reg(3) & s_reg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_reg(2),
	datab => s_reg(0),
	datac => s_reg(3),
	datad => s_reg(1),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X57_Y50_N12
\Selector0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (!\s_reg[3]~0_combout\ & (((!\Equal2~0_combout\) # (!\s_tick~input_o\)) # (!\state_reg.stop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_reg[3]~0_combout\,
	datab => \state_reg.stop~q\,
	datac => \s_tick~input_o\,
	datad => \Equal2~0_combout\,
	combout => \Selector0~4_combout\);

-- Location: FF_X57_Y50_N13
\state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.idle~q\);

-- Location: LCCOMB_X57_Y50_N22
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state_reg.start~q\) # ((!\rx~input_o\ & !\state_reg.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx~input_o\,
	datac => \state_reg.idle~q\,
	datad => \state_reg.start~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X57_Y50_N26
\Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\ & (!\Selector0~2_combout\ & (!\rx_done_tick~0_combout\ & !\Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Selector0~2_combout\,
	datac => \rx_done_tick~0_combout\,
	datad => \Selector0~1_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X57_Y50_N27
\state_reg.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.start~q\);

-- Location: LCCOMB_X58_Y50_N0
\Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\state_reg.start~q\ & (!s_reg(3) & (\Equal2~1_combout\ & \s_tick~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.start~q\,
	datab => s_reg(3),
	datac => \Equal2~1_combout\,
	datad => \s_tick~input_o\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X57_Y50_N20
\Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (!\Selector0~2_combout\ & (!\Selector0~1_combout\ & ((\rx~input_o\) # (\state_reg.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \state_reg.idle~q\,
	datac => \Selector0~2_combout\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X57_Y50_N16
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\rx_done_tick~0_combout\ & ((\Selector0~3_combout\ & ((\state_reg.data~q\))) # (!\Selector0~3_combout\ & (\Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~2_combout\,
	datab => \rx_done_tick~0_combout\,
	datac => \state_reg.data~q\,
	datad => \Selector0~3_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X57_Y50_N17
\state_reg.data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.data~q\);

-- Location: LCCOMB_X58_Y50_N24
\b_reg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b_reg[0]~0_combout\ = (\state_reg.data~q\ & (\s_tick~input_o\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.data~q\,
	datab => \s_tick~input_o\,
	datad => \Equal2~0_combout\,
	combout => \b_reg[0]~0_combout\);

-- Location: LCCOMB_X58_Y50_N14
\n_reg[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_reg[2]~0_combout\ = (!\Selector0~2_combout\ & ((\Selector0~0_combout\) # (!\b_reg[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector0~2_combout\,
	datad => \b_reg[0]~0_combout\,
	combout => \n_reg[2]~0_combout\);

-- Location: LCCOMB_X58_Y50_N2
\n_reg[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_reg[0]~3_combout\ = (n_reg(0) & ((\n_reg[2]~0_combout\))) # (!n_reg(0) & (\state_reg.data~q\ & !\n_reg[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.data~q\,
	datac => n_reg(0),
	datad => \n_reg[2]~0_combout\,
	combout => \n_reg[0]~3_combout\);

-- Location: FF_X58_Y50_N3
\n_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \n_reg[0]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(0));

-- Location: LCCOMB_X58_Y50_N30
\n_reg[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_reg[1]~2_combout\ = (\n_reg[2]~0_combout\ & (((n_reg(1))))) # (!\n_reg[2]~0_combout\ & (\state_reg.data~q\ & (n_reg(0) $ (n_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.data~q\,
	datab => n_reg(0),
	datac => n_reg(1),
	datad => \n_reg[2]~0_combout\,
	combout => \n_reg[1]~2_combout\);

-- Location: FF_X58_Y50_N31
\n_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \n_reg[1]~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(1));

-- Location: LCCOMB_X57_Y50_N8
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = n_reg(2) $ (((n_reg(1) & n_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => n_reg(2),
	datac => n_reg(1),
	datad => n_reg(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X58_Y50_N28
\n_reg[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_reg[2]~1_combout\ = (\n_reg[2]~0_combout\ & (((n_reg(2))))) # (!\n_reg[2]~0_combout\ & (\Add1~0_combout\ & (\state_reg.data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \state_reg.data~q\,
	datac => n_reg(2),
	datad => \n_reg[2]~0_combout\,
	combout => \n_reg[2]~1_combout\);

-- Location: FF_X58_Y50_N29
\n_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \n_reg[2]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(2));

-- Location: LCCOMB_X58_Y50_N22
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (n_reg(1) & (n_reg(2) & n_reg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_reg(1),
	datab => n_reg(2),
	datad => n_reg(0),
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X57_Y50_N18
\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\s_tick~input_o\ & (\Selector0~0_combout\ & (\state_reg.data~q\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tick~input_o\,
	datab => \Selector0~0_combout\,
	datac => \state_reg.data~q\,
	datad => \Equal2~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X57_Y50_N24
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\rx_done_tick~0_combout\ & ((\Selector0~3_combout\ & ((\state_reg.stop~q\))) # (!\Selector0~3_combout\ & (\Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~1_combout\,
	datab => \rx_done_tick~0_combout\,
	datac => \state_reg.stop~q\,
	datad => \Selector0~3_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X57_Y50_N25
\state_reg.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.stop~q\);

-- Location: LCCOMB_X57_Y50_N2
\rx_done_tick~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_done_tick~0_combout\ = (\state_reg.stop~q\ & (\s_tick~input_o\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.stop~q\,
	datac => \s_tick~input_o\,
	datad => \Equal2~0_combout\,
	combout => \rx_done_tick~0_combout\);

-- Location: FF_X58_Y50_N27
\b_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rx~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_reg(7));

-- Location: FF_X58_Y50_N5
\b_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => b_reg(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_reg(6));

-- Location: FF_X58_Y50_N15
\b_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => b_reg(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_reg(5));

-- Location: LCCOMB_X59_Y50_N16
\b_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b_reg[4]~feeder_combout\ = b_reg(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => b_reg(5),
	combout => \b_reg[4]~feeder_combout\);

-- Location: FF_X59_Y50_N17
\b_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_reg[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \b_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_reg(4));

-- Location: LCCOMB_X59_Y50_N10
\b_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b_reg[3]~feeder_combout\ = b_reg(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => b_reg(4),
	combout => \b_reg[3]~feeder_combout\);

-- Location: FF_X59_Y50_N11
\b_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_reg[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \b_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_reg(3));

-- Location: LCCOMB_X59_Y50_N8
\b_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b_reg[2]~feeder_combout\ = b_reg(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => b_reg(3),
	combout => \b_reg[2]~feeder_combout\);

-- Location: FF_X59_Y50_N9
\b_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_reg[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \b_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_reg(2));

-- Location: FF_X58_Y50_N23
\b_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => b_reg(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_reg(1));

-- Location: FF_X58_Y50_N25
\b_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => b_reg(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_reg(0));

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_rx_done_tick <= \rx_done_tick~output_o\;

ww_dout(0) <= \dout[0]~output_o\;

ww_dout(1) <= \dout[1]~output_o\;

ww_dout(2) <= \dout[2]~output_o\;

ww_dout(3) <= \dout[3]~output_o\;

ww_dout(4) <= \dout[4]~output_o\;

ww_dout(5) <= \dout[5]~output_o\;

ww_dout(6) <= \dout[6]~output_o\;

ww_dout(7) <= \dout[7]~output_o\;
END structure;



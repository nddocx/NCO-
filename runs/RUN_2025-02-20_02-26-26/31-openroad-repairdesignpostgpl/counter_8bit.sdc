###############################################################################
# Created by write_sdc
###############################################################################
current_design counter_8bit
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rst}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sine_out[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sine_out[10]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sine_out[11]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sine_out[12]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sine_out[13]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sine_out[14]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sine_out[15]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sine_out[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sine_out[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sine_out[3]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sine_out[4]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sine_out[5]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sine_out[6]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sine_out[7]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sine_out[8]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sine_out[9]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {sine_out[15]}]
set_load -pin_load 0.0334 [get_ports {sine_out[14]}]
set_load -pin_load 0.0334 [get_ports {sine_out[13]}]
set_load -pin_load 0.0334 [get_ports {sine_out[12]}]
set_load -pin_load 0.0334 [get_ports {sine_out[11]}]
set_load -pin_load 0.0334 [get_ports {sine_out[10]}]
set_load -pin_load 0.0334 [get_ports {sine_out[9]}]
set_load -pin_load 0.0334 [get_ports {sine_out[8]}]
set_load -pin_load 0.0334 [get_ports {sine_out[7]}]
set_load -pin_load 0.0334 [get_ports {sine_out[6]}]
set_load -pin_load 0.0334 [get_ports {sine_out[5]}]
set_load -pin_load 0.0334 [get_ports {sine_out[4]}]
set_load -pin_load 0.0334 [get_ports {sine_out[3]}]
set_load -pin_load 0.0334 [get_ports {sine_out[2]}]
set_load -pin_load 0.0334 [get_ports {sine_out[1]}]
set_load -pin_load 0.0334 [get_ports {sine_out[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {rst}]
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_capacitance 0.2000 [current_design]
set_max_fanout 10.0000 [current_design]

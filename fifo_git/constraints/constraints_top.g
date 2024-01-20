create_clock -name clk -period 10 -waveform {0 5} [get_ports "clk"]
set_clock_transition -rise 0.01 [get_clocks "clk"]
set_clock_transition -fall 0.01 [get_clocks "clk"]
set_clock_uncertainty 0.001 [get_ports "clk"]

set_input_delay -max 1.0 [get_ports "reset"] -clock [get_clocks "clk"]
set_input_delay -max 1.0 [get_ports "data_in"] -clock [get_clocks "clk"]
set_input_delay -max 1.0 [get_ports "write_en"] -clock [get_clocks "clk"]
set_input_delay -max 1.0 [get_ports "read_en"] -clock [get_clocks "clk"]

set_output_delay -max 1.0 [get_ports "data_out"] -clock [get_clocks "clk"]
set_output_delay -max 1.0 [get_ports "full"] -clock [get_clocks "clk"]
set_output_delay -max 1.0 [get_ports "empty"] -clock [get_clocks "clk"]




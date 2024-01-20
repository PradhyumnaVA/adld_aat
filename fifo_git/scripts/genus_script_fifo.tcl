set_attribute init_hdl_search_path /home/student/cadWorkDir/myProjects/Digital/1BM21EC095/syn/rtl/
set_attribute init_lib_search_path /home/student/cadWorkDir/myProjects/Digital/1BM21EC095/syn/lib/
set_attr library /home/student/cadWorkDir/Digital/1BM21EC095/syn/lib/fast.lib
read_hdl {fifo_clean.v}
elaborate
read_sdc /home/student/cadWorkDir/myProjects/Digital/1BM21EC095/syn/constraints/constraints_top.g
synthesize -to_mapped -effort high
report power > fifo_fast_power.rpt
report area > fifo_fast_area.rpt
report timing > fifo_fast_timing.rpt
write_hdl > fifo_fast_netlist.v



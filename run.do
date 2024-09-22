vlib work
vlog list.svh
vsim -novopt -suppress 12110 top
add wave -position insertpoint sim:/top/pif/*
#do wave.do
run -all

#vlog list.svh
#vopt work.top +cover=fcbest -o write_read
#vsim -coverage write_read +testcase=write_read
#coverage save -onexit write_read.ucdb
#add wave -position insertpoint sim:/top/intf/*
#run -all

# Functional coverage
#vlib work
#vlog list.svh
#vsim -novopt -suppress 12110 top
#add wave -position insertpoint sim:/top/pif/*
#run -all

# Includes code coverage too
vlog list.svh
vopt work.top +cover=fcbest -o count_30
vsim -coverage count_30
coverage save -onexit count_30.ucdb
#add wave -position insertpoint sim:/top/pif/*
do wave.do
run -all

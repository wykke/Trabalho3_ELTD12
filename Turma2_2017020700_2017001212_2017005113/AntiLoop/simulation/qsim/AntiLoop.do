onerror {quit -f}
vlib work
vlog -work work AntiLoop.vo
vlog -work work AntiLoop.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.AntiLoop_vlg_vec_tst
vcd file -direction AntiLoop.msim.vcd
vcd add -internal AntiLoop_vlg_vec_tst/*
vcd add -internal AntiLoop_vlg_vec_tst/i1/*
add wave /*
run -all

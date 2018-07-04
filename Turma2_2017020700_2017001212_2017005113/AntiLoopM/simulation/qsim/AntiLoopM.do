onerror {quit -f}
vlib work
vlog -work work AntiLoopM.vo
vlog -work work AntiLoopM.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.AntiLoopM_vlg_vec_tst
vcd file -direction AntiLoopM.msim.vcd
vcd add -internal AntiLoopM_vlg_vec_tst/*
vcd add -internal AntiLoopM_vlg_vec_tst/i1/*
add wave /*
run -all

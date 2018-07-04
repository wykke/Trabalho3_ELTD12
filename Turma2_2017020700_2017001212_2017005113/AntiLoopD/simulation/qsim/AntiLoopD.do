onerror {quit -f}
vlib work
vlog -work work AntiLoopD.vo
vlog -work work AntiLoopD.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.AntiLoopD_vlg_vec_tst
vcd file -direction AntiLoopD.msim.vcd
vcd add -internal AntiLoopD_vlg_vec_tst/*
vcd add -internal AntiLoopD_vlg_vec_tst/i1/*
add wave /*
run -all

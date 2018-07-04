onerror {quit -f}
vlib work
vlog -work work RegResto.vo
vlog -work work RegResto.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.RegResto_vlg_vec_tst
vcd file -direction RegResto.msim.vcd
vcd add -internal RegResto_vlg_vec_tst/*
vcd add -internal RegResto_vlg_vec_tst/i1/*
add wave /*
run -all

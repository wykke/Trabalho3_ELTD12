onerror {quit -f}
vlib work
vlog -work work regA.vo
vlog -work work regA.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.regA_vlg_vec_tst
vcd file -direction regA.msim.vcd
vcd add -internal regA_vlg_vec_tst/*
vcd add -internal regA_vlg_vec_tst/i1/*
add wave /*
run -all

onerror {quit -f}
vlib work
vlog -work work SISTEMA_FINAL.vo
vlog -work work SISTEMA_FINAL.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.SISTEMA_FINAL_vlg_vec_tst
vcd file -direction SISTEMA_FINAL.msim.vcd
vcd add -internal SISTEMA_FINAL_vlg_vec_tst/*
vcd add -internal SISTEMA_FINAL_vlg_vec_tst/i1/*
add wave /*
run -all

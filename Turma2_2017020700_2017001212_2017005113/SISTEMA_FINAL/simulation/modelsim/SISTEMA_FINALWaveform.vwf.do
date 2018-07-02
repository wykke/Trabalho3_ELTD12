vlog -work work C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletrônica Digital II/Trabalhos/Trabalho 3/Turma2_2017020700_2017001212_2017005113/SISTEMA_FINAL/simulation/modelsim/SISTEMA_FINALWaveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.SISTEMA_FINAL_vlg_vec_tst
onerror {resume}
add wave {SISTEMA_FINAL_vlg_vec_tst/i1/clk}
add wave {SISTEMA_FINAL_vlg_vec_tst/i1/saida}
add wave {SISTEMA_FINAL_vlg_vec_tst/i1/saida[15]}
add wave {SISTEMA_FINAL_vlg_vec_tst/i1/saida[14]}
add wave {SISTEMA_FINAL_vlg_vec_tst/i1/saida[13]}
add wave {SISTEMA_FINAL_vlg_vec_tst/i1/saida[12]}
add wave {SISTEMA_FINAL_vlg_vec_tst/i1/saida[11]}
add wave {SISTEMA_FINAL_vlg_vec_tst/i1/saida[10]}
add wave {SISTEMA_FINAL_vlg_vec_tst/i1/saida[9]}
add wave {SISTEMA_FINAL_vlg_vec_tst/i1/saida[8]}
add wave {SISTEMA_FINAL_vlg_vec_tst/i1/saida[7]}
add wave {SISTEMA_FINAL_vlg_vec_tst/i1/saida[6]}
add wave {SISTEMA_FINAL_vlg_vec_tst/i1/saida[5]}
add wave {SISTEMA_FINAL_vlg_vec_tst/i1/saida[4]}
add wave {SISTEMA_FINAL_vlg_vec_tst/i1/saida[3]}
add wave {SISTEMA_FINAL_vlg_vec_tst/i1/saida[2]}
add wave {SISTEMA_FINAL_vlg_vec_tst/i1/saida[1]}
add wave {SISTEMA_FINAL_vlg_vec_tst/i1/saida[0]}
run -all

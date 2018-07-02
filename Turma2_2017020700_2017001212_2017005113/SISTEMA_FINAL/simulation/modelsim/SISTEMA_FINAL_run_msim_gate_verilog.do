transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {SISTEMA_FINAL.vo}

vlog -vlog01compat -work work +incdir+C:/Users/WyKKe/Documentos/Unifei/2018.1/EletrÃ´nica\ Digital\ II/Trabalhos/Trabalho\ 3/Turma2_2017020700_2017001212_2017005113/SISTEMA_FINAL {C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletrônica Digital II/Trabalhos/Trabalho 3/Turma2_2017020700_2017001212_2017005113/SISTEMA_FINAL/Sistema_TB.v}

vsim -t 1ps -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  Sistema_TB

add wave *
view structure
view signals
run 10 us

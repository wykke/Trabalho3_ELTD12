transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletr么nica\ Digital\ II/Trabalhos/Trabalho\ 3/Turma2_2017020700_2017001212_2017005113/RegResto {C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletr鬾ica Digital II/Trabalhos/Trabalho 3/Turma2_2017020700_2017001212_2017005113/RegResto/RegResto.v}
vlog -vlog01compat -work work +incdir+C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletr么nica\ Digital\ II/Trabalhos/Trabalho\ 3/Turma2_2017020700_2017001212_2017005113/AntiLoopD {C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletr鬾ica Digital II/Trabalhos/Trabalho 3/Turma2_2017020700_2017001212_2017005113/AntiLoopD/AntiLoopD.v}
vlog -vlog01compat -work work +incdir+C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletr么nica\ Digital\ II/Trabalhos/Trabalho\ 3/Turma2_2017020700_2017001212_2017005113/ROM {C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletr鬾ica Digital II/Trabalhos/Trabalho 3/Turma2_2017020700_2017001212_2017005113/ROM/ROM.v}
vlog -vlog01compat -work work +incdir+C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletr么nica\ Digital\ II/Trabalhos/Trabalho\ 3/Turma2_2017020700_2017001212_2017005113/regC {C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletr鬾ica Digital II/Trabalhos/Trabalho 3/Turma2_2017020700_2017001212_2017005113/regC/regC.v}
vlog -vlog01compat -work work +incdir+C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletr么nica\ Digital\ II/Trabalhos/Trabalho\ 3/Turma2_2017020700_2017001212_2017005113/regA {C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletr鬾ica Digital II/Trabalhos/Trabalho 3/Turma2_2017020700_2017001212_2017005113/regA/regA.v}
vlog -vlog01compat -work work +incdir+C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletr么nica\ Digital\ II/Trabalhos/Trabalho\ 3/Turma2_2017020700_2017001212_2017005113/Controle {C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletr鬾ica Digital II/Trabalhos/Trabalho 3/Turma2_2017020700_2017001212_2017005113/Controle/Controle.v}
vlog -vlog01compat -work work +incdir+C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletr么nica\ Digital\ II/Trabalhos/Trabalho\ 3/Turma2_2017020700_2017001212_2017005113/AntiLoop {C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletr鬾ica Digital II/Trabalhos/Trabalho 3/Turma2_2017020700_2017001212_2017005113/AntiLoop/AntiLoop.v}
vlog -vlog01compat -work work +incdir+C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletr么nica\ Digital\ II/Trabalhos/Trabalho\ 3/Turma2_2017020700_2017001212_2017005113/ALU {C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletr鬾ica Digital II/Trabalhos/Trabalho 3/Turma2_2017020700_2017001212_2017005113/ALU/ALU.v}
vlog -vlog01compat -work work +incdir+C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletr么nica\ Digital\ II/Trabalhos/Trabalho\ 3/Turma2_2017020700_2017001212_2017005113/SISTEMA_FINAL {C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletr鬾ica Digital II/Trabalhos/Trabalho 3/Turma2_2017020700_2017001212_2017005113/SISTEMA_FINAL/SISTEMA_FINAL.v}

vlog -vlog01compat -work work +incdir+C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletr么nica\ Digital\ II/Trabalhos/Trabalho\ 3/Turma2_2017020700_2017001212_2017005113/SISTEMA_FINAL {C:/Users/WyKKe/Documentos/Unifei/2018.1/Eletr鬾ica Digital II/Trabalhos/Trabalho 3/Turma2_2017020700_2017001212_2017005113/SISTEMA_FINAL/Sistema_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  Sistema_TB

add wave *
view structure
view signals
run 10 us

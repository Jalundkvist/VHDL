transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/46704/git/quartus-prime/Lektion 2/AND_gate.vhd}

vcom -93 -work work {C:/Users/46704/git/quartus-prime/Lektion 2/output_files/AND_gate_TB.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  AND_gate_TB

add wave *
view structure
view signals
run -all

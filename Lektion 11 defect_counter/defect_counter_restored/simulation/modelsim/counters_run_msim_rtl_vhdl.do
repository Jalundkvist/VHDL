transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/46704/git/Digital konstruktion GIT repo/quartus-prime/Lektion 11 defect_counter/defect_counter_restored/counters.vhd}

vcom -93 -work work {C:/Users/46704/git/Digital konstruktion GIT repo/quartus-prime/Lektion 11 defect_counter/defect_counter_restored/counters_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  counters_tb

add wave *
view structure
view signals
run -all

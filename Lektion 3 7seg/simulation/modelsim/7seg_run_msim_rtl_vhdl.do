transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/46704/git/Digital konstruktion GIT repo/quartus-prime/Lektion 3 7seg/segment.vhd}

vcom -93 -work work {C:/Users/46704/git/Digital konstruktion GIT repo/quartus-prime/Lektion 3 7seg/segment_tb.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  segment_tb

add wave *
view structure
view signals
run -all

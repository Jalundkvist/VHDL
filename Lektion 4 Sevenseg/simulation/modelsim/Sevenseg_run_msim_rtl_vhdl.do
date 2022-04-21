transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/46704/git/Digital konstruktion GIT repo/quartus-prime/Lektion 4 Sevenseg/Sevenseg.vhd}

vcom -93 -work work {C:/Users/46704/git/Digital konstruktion GIT repo/quartus-prime/Lektion 4 Sevenseg/Sevenseg_tb.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  sevenseg_tb

add wave *
view structure
view signals
run -all
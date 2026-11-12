transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/marti/JU/Digitalteknik/Labbar/Lab2/Lab2_3/top_level.vhd}


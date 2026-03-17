vlib work

vcom adder.vhd tb.vhdl

vsim -t ns -voptargs="+acc" work.tb

view wave

add wave -radix dec /dataa_tb
add wave -radix dec /datab_tb
add wave -radix dec /sum_tb

run 1 ms 

wave zoomfull

# write wave wave.ps
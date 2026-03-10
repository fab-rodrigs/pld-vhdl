#Cria biblioteca do projeto
vlib work

#compila projeto: todos os aquivo. Ordem é importante
vcom adder.vhd tb.vhdl

#Simula (work é o diretorio, testbench é o nome da entity)
vsim -t ns -voptargs="+acc" work.tb

#Mostra forma de onda
view wave

#Adiciona ondas específicas
# -radix: binary, hex, dec
# -label: nome da forma de onda

#Simula até um 500ns
run 1 ms

wave zoomfull
write wave wave.ps
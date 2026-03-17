# Cria a biblioteca de trabalho
vlib work

# Compila o multiplicador e o testbench
# Certifique-se de que o arquivo se chama mult.vhd
vcom mult.vhd testbench.vhd

# Inicia a simulação na entity tb
vsim -t ns -voptargs="+acc" work.tb

# Abre a janela de ondas
view wave

# Adiciona os sinais no formato Unsigned Decimal
add wave -radix unsigned /dataa_tb
add wave -radix unsigned /datab_tb
add wave -radix unsigned /product_tb

# Roda a simulação
run 1 ms

# Ajusta o zoom
wave zoomfull
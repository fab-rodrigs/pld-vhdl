# Cria a biblioteca 'work', que é onde o ModelSim guarda os arquivos compilados
vlib work

# Compila os arquivos VHDL. 
# IMPORTANTE: O 'adder.vhd' vem primeiro porque o 'tb.vhdl' depende dele
vcom adder.vhd tb.vhdl

# Inicia a simulação
# -t ns: escala de tempo em nanosegundos
# -voptargs="+acc": permite que você veja todos os sinais na onda (evita otimizações que "escondem" fios)
# work.tb: diz para simular a entity 'tb' que está na biblioteca 'work'
vsim -t ns -voptargs="+acc" work.tb

# Abre a janela de formas de onda (Wave)
view wave

# Adiciona todos os sinais do testbench à janela de ondas
add wave -radix dec /dataa_tb
add wave -radix dec /datab_tb
add wave -radix dec /sum_tb

# Executa a simulação por 1 milissegundo (tempo suficiente para ver os loops rodando)
run 1 ms 

# Ajusta o zoom para mostrar todo o período simulado na tela
wave zoomfull

# A linha abaixo é opcional. Se não for usar o arquivo, pode apagar.
# write wave wave.ps
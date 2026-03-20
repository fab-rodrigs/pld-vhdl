# Cria biblioteca do projeto
vlib work

# Compila projeto: todos os arquivos. Ordem é SEMPRE IMPORTANTE!
vcom mux_sel.vhd mux_when.vhd testbench.vhd

# Simula (work é o diretório, tb_mux_sel é o nome da entity)
vsim -voptargs="+acc" -t ns work.tb_mux_sel

# Mostra forma de onda
view wave

# Adiciona ondas específicas
# -radix: binary, hex, dec
# -label: nome da forma de onda
# Com labels
add wave -label DATA_A -radix unsigned /mux_in_a_tb
add wave -label DATA_A_WHEN -radix unsigned /multiplexador_when/mux_in_a
add wave -label DATA_B -radix unsigned /mux_in_b_tb
add wave -label DATA_B_WHEN -radix unsigned /multiplexador_when/mux_in_b
add wave -label SELECT -radix unsigned /mux_sel_tb
add wave -label DATA_SEL_WHEN -radix unsigned /multiplexador_when/mux_sel
add wave -label OUT -radix unsigned /mux_out_tb
add wave -label OUT_WHEN -radix unsigned /multiplexador_when/mux_out


# Simula até 100ns
run 100ns

# Ajusta a visualização
wave zoomfull

# Salva a forma de onda em um arquivo
#write wave wave.ps

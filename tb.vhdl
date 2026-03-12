library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb is
end entity tb;

architecture RTL of tb is
    -- Sinais de 4 bits para o teste
    signal dataa_tb : unsigned(3 downto 0) := (others => '0');
    signal datab_tb : unsigned(3 downto 0) := (others => '0');
    signal sum_tb   : unsigned(3 downto 0);
begin
    
    adder_inst : entity work.adder
        generic map (
            N => 4 -- Passando o tamanho para o componente
        )
        port map(
            dataa => dataa_tb,
            datab => datab_tb,
            sum   => sum_tb
        );

    -- Processo que altera o valor de 'A'
    process is
    begin
        for i in 0 to 15 loop -- 4 bits vai de 0 a 15
            dataa_tb <= to_unsigned(i, dataa_tb'length);
            wait for 5 ns;
        end loop;
        wait; -- Para a simulação não ficar em loop infinito aqui
    end process;

    -- Processo que altera o valor de 'B'
    process is
    begin
        datab_tb <= datab_tb + 1;
        wait for 3 ns;
    end process;       

end architecture RTL;
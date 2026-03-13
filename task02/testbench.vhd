library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb is
end entity tb;

architecture RTL of tb is
    -- Entradas de 4 bits
    signal dataa_tb : unsigned(3 downto 0) := (others => '0');
    signal datab_tb : unsigned(3 downto 0) := (others => '0');
    -- Saída de 8 bits (o dobro da entrada) conforme o PDF
    signal product_tb : unsigned(7 downto 0);
begin
    
    -- Instanciação do multiplicador
    mult_inst : entity work.mult
        generic map (
            N => 4
        )
        port map(
            dataa   => dataa_tb,
            datab   => datab_tb,
            product => product_tb
        );

    -- Processo para variar o sinal A
    process is
    begin
        for i in 0 to 15 loop
            dataa_tb <= to_unsigned(i, dataa_tb'length);
            wait for 10 ns;
        end loop;
        wait;
    end process;

    -- Processo para variar o sinal B
    process is
    begin
        datab_tb <= datab_tb + 1;
        wait for 5 ns;
    end process;       

end architecture RTL;
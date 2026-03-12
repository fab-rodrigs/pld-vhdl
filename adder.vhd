library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Necessário para somar tipos 'unsigned' [cite: 13]

entity adder is
    generic (
        N : integer := 4 -- Adicionado Generic conforme o PDF 
    );
    port (
        -- Mudado para 'unsigned' conforme exigência do roteiro 
        dataa : in  unsigned(N-1 downto 0); 
        datab : in  unsigned(N-1 downto 0);
        sum   : out unsigned(N-1 downto 0)
    );
end entity adder;

architecture rtl of adder is
begin
    -- Agora a soma funciona pois ambos são 'unsigned'
    sum <= dataa + datab;
end architecture rtl;
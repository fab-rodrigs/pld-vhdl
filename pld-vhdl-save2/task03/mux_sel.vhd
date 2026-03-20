library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity mux_sel is
    generic(
        constant N : integer := 4
       );
    port (
        mux_in_a : in unsigned (N-1 downto 0); -- entrada A
        mux_in_b : in unsigned (N-1 downto 0); -- entrada B
        mux_sel  : in std_logic;               -- seleção do multiplexador
        mux_out  : out unsigned (N-1 downto 0) -- saída do multiplexador
    );
end entity mux_sel;

-- with select
architecture rtl of mux_sel is
begin
    with mux_sel select                        -- seleção de mux_in_a' e 'mux_in_b' de acordo com o 'mux_sel'
        mux_out <= 
            mux_in_a when '0',                 -- caso mux_sel for '0', mux_out recebe mux_in_a
            mux_in_b when others;              --  mux_out é definido como mux_in_b, para qualquer outro valor
end architecture rtl;
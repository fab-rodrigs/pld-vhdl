library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_when is
    generic(
        constant N : integer := 4
       );
    port (
        mux_in_a : in unsigned (N-1 downto 0); -- entrada A
        mux_in_b : in unsigned (N-1 downto 0); -- entrada B
        mux_sel  : in std_logic;               -- seleção do multiplexador
        mux_out  : out unsigned (N-1 downto 0) -- saída do multiplexador
    );
end entity mux_when;

architecture rtl of mux_when is
begin                                          -- seleção das entradas 'mux_in_a' e 'mux_in_b' de acordo com 'mux_sel'
    mux_out <= mux_in_a when mux_sel = '0'
            else  mux_in_b;                      --  caso mux_sel for '0', mux_out recebe mux_in_a             
                                                --  mux_out é definido como mux_in_b, para qualquer outro valor
end architecture rtl;

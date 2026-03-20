library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity tb_mux_sel is
end entity tb_mux_sel;

architecture behavior of tb_mux_sel is

    constant N : integer := 4;

    signal mux_in_a_tb : unsigned(N - 1 downto 0); -- entrada A
    signal mux_in_b_tb : unsigned(N - 1 downto 0); -- entrada B
    signal mux_sel_tb  : std_logic;                -- seletor (0 ou 1)
    signal mux_out_tb  : unsigned(N - 1 downto 0); -- saída final

begin                                  
    multiplexador_sel : entity work.mux_sel
        generic map( N => 4 )
        port map(
            mux_in_a => mux_in_a_tb,
            mux_in_b => mux_in_b_tb,
            mux_sel  => mux_sel_tb,
            mux_out  => mux_out_tb
        );

    multiplexador_when : entity work.mux_when
        generic map( N => 4 )
        port map(
            mux_in_a => mux_in_a_tb,
            mux_in_b => mux_in_b_tb,
            mux_sel  => mux_sel_tb,
            mux_out  => mux_out_tb
        );

    -- PROCESSO 1: entrada A
    process
    begin
        mux_in_a_tb <= to_unsigned(5, N);
        wait for 13 ns;                 
        mux_in_a_tb <= to_unsigned(9, N);
        wait for 27 ns;                 
        mux_in_a_tb <= to_unsigned(2, N); 
        wait;                           
    end process;

    -- PROCESSO 2: entrada B
    process
    begin
        mux_in_b_tb <= to_unsigned(9, N); 
        wait for 12 ns;                 
        mux_in_b_tb <= to_unsigned(13, N); 
        wait for 22 ns;                 
        mux_in_b_tb <= to_unsigned(15, N); 
        wait;
    end process;

    -- PROCESSO 3: chave seletora
    process
    begin
        mux_sel_tb <= '0';  -- entrada A
        wait for 15 ns;                 
        mux_sel_tb <= '1';  -- entrada B
        wait for 32 ns;                 
        mux_sel_tb <= '0';  -- entrada A
        wait for 7 ns;                 
        wait;               -- encerra
    end process;

end architecture behavior;
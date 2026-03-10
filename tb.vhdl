entity tb is
end entity tb;

architecture RTL of tb is
    signal dataa_tb : unsigned(3 downto 0);
    signal datab_tb : unsigned(3 downto 0);
    signal sum_tb : unsigned(3 downto 0);
begin
    
    adder_inst : entity work.adder
        port map(
            dataa   => dataa_tb,
            datab   => datab_tb,
            sum => sum_tb
        );
    process is
    begin
        for i in 0 to 234 loop
            dataa_tb <= to_unsigned(i, dataa_tb'length);
            wait for 5 ns;
        end loop;
        --data_tb <= x"0004";
        --wait for 10 ns;
        --dataa_tb <= x"0005";
        --wait for 10 ns;
    end process;

    process is
    begin
        
    end process       
    

end architecture RTL;

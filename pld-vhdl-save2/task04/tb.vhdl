library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb is
    port(
        clk : in std_logic;
        rst : in std_logic
    );
end entity tb;

architecture RTL of tb is
    
begin

    clockDriver : process
        constant period : time := 10 ns;
    begin
        clk <= '0';
        wait for period / 2;
        clk <= '1';
        wait for period / 2;
    end process clockDriver;
    

end architecture RTL;

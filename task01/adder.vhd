library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder is
    generic (
        N : integer := 4
    );
    port (
        dataa : in  unsigned(N-1 downto 0); 
        datab : in  unsigned(N-1 downto 0);
        sum   : out unsigned(N-1 downto 0)
    );
end entity adder;

architecture rtl of adder is
begin
    sum <= dataa + datab;
end architecture rtl;
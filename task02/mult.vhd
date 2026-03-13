library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity mult is
    generic (   
        N : integer := 4 
    );
    port (
        dataa   : in  unsigned(N-1 downto 0);
        datab   : in  unsigned(N-1 downto 0);
        product : out unsigned((2*N)-1 downto 0) 
    );
end entity mult;

architecture rtl of mult is
begin
    product <= dataa * datab;
end architecture rtl;
library ieee;
use ieee.std_logic_1164.all;

entity dflip is
    port 
    (
        clk: in std_ulogic;
        d: in std_ulogic;
        q: out std_ulogic
    );
end dflip;

architecture behave of dflip is
begin
    process (clk) begin
        if rising_edge(clk) then
            q <= d;
        end if;
    end process;
end behave;
library ieee;
use ieee.std_logic_1164.all;

entity dflip_tb is
end dflip_tb;

architecture test of dflip_tb is
    component dflip
        port 
        (
            clk: in std_ulogic;
            d: in std_ulogic;
            q: out std_ulogic
        );
    end component;

    signal clk, d, q : std_ulogic;
begin
    d_flip_flop: dflip port map (clk => clk, d => d, q => q); 

    process begin
        wait for 1 ns;

        clk <= '1';
        d <= '1';
        wait for 1 ns;

        clk <= '0';
        d <= '1';
        wait for 1 ns;

        clk <= '1';
        d <= '0';
        wait for 1 ns;

        clk <= '0';
        d <= '0';
        wait for 1 ns;

        assert false report "Reached end of test";
        wait;

    end process;
end test;
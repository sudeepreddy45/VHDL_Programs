library ieee;
use ieee.STD_LOGIC_1164.all;

entity mux_tb is
end mux_tb;

architecture behavior of mux_tb is
    component mux
        port(
            A : in STD_LOGIC_VECTOR(7 downto 0);
            sel : in STD_LOGIC_VECTOR(2 downto 0);
            Y : out std_logic);
    end component;
    
    signal A : STD_LOGIC_VECTOR(7 downto 0);
    signal sel :STD_LOGIC_VECTOR(2 downto 0);
    signal Y : STD_LOGIC;
    
begin
    dut : mux
        port map(A => A, sel => sel, Y=> Y);
    stimuli : process 
                begin
                    wait for 5ns;
                    A <= "00101010";
                    sel <= "000";
                    wait for 10ns;
                    sel <= "001";
                    A <= "00101010";
                    wait for 10ns;
                    sel <= "010";
                    A <= "00101010";
                    wait for 10ns;
                    sel <= "011";
                    A <= "00101010";
                    wait for 10ns;
                    sel <= "100";
                    A <= "00101010";
                    wait for 10ns;
                    sel <= "101";
                    A <= "00101010";               
                    wait for 10ns;
                    sel <= "110";
                    A <= "00101010";
                    wait for 10ns;
                    sel <= "111";
                    A <= "00101010";
                    wait for 10ns;
                    
                    wait;       
              end process;
end behavior;

library ieee;
use ieee.std_logic_1164.all;

entity mux is
    port(
        A : in STD_LOGIC_VECTOR(7 downto 0);
        sel : in STD_LOGIC_VECTOR(2 downto 0);
        Y : out STD_LOGIC);
end mux;

architecture behavior of mux is
begin
    process (A,sel) is
    begin
        Case sel is
            when "000" =>
                Y <= A(0);
            when "001" =>
                Y <= A(1);
            when "010" =>
                Y <= A(2);
            when "011" =>
                Y <= A(3);
            when "100" =>
                Y <= A(4);
            when "101" =>
                Y <= A(5);
            when "110" =>
                Y <= A(6);
            when "111" =>
                Y <= A(7);
            when others =>
                Y <= '0';       
        end case;
    end process;
end behavior;

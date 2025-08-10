dataflow-->
library ieee;
use ieee.std_logic_1164.all;
entity encoder is
	port(
		a: in std_logic_vector(3 downto 0);
		y: out std_logic_vector(1 downto 0));
end entity;
architecture dataflow of encoder is
begin
	y(0) <= a(1) or a(3);
	y(1) <= a(2) or a(3);
end architecture;

behavioral-->
library ieee;
use ieee.std_logic_1164.all;
entity encoder is
	port(
		a: in std_logic_vetor(3 downto 0);
		b: out std_logic_vector(1 downto 0));
end entity;
architecture behavioral of encoder is
begin
	process(a)
	begin
		case a is 
			when "0001" => y <= "00";
			when "0010" => y <= "01";
			when "0100" => y <= "10";
			when "1000" => y <= "11";
			when others => y <= "00";
		endcase;	
	end process;
end architecture;

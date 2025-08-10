dataflow-->
library ieee;
use ieee.std_logic_1164.all;
entity decoder is
	port(
		a: in std_logic_vector(1 downto 0);
		y: out std_logic_vector(3 downto 0));
end entity;
architecture dataflow of decoder is
begin
	y(0) <= (not a(1)) and (not a(0));
	y(1) <= (not a(1)) and (a(0));
	y(2) <= (a(1)) and (not a(0));
	y(3) <= (a(1)) and (a(0));
end architecture;

behavioral-->
library ieee;
use ieee.std_logic_1164.all;
entity decoder is
	port(
		a: in std_logic_vector(1 downto 0);
		y: out std_logic_vector(3 downto 0));
end entity;
architecture behavioral of decoder is
begin
	process(a)
	begin
		if a = "00" then
			y<= "0001";
		elseif a = "01" then
			y<= "0010";
		elseif a = "10" then
			y<= "0100";
		else
			y<= "1000";
		end if;		
	end process;
end architecture;

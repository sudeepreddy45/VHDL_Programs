library ieee;
use ieee.std_logic_1164.all;
entity name is
	port(
		a: in std_logic;
		b: in std_logic;
		c: out std logic_vector(7 downto 0));
end entity;
architecture beh of name is
begin
	c(0) <= a and b;
	c(1) <= a or b;
	c(2) <= a nand b;
	c(3) <= a nor b;
	c(4) <= not a;
	c(5) <= a xor b;
	c(6) <= a xnor b;
	c(7) <= a ;
end architecture;

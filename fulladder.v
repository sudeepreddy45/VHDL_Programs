dataflow-->
library ieee;
use ieee.std_logic_1164.all;
entity fulladder is
	port(
		a: in std_logic;
		b: in std_logic;
		c: in std_logic;
		s: out std_logic;
		carry: out std_logic);
end entity;
architecture dataflow of fulladder is
begin
	s <= a xor b xor c;
	carry <= (a and b) or (c and (a xor b));
end architecture

behaviral-->
library ieee;
use ieee.std_logic_1164.all;
entity fulladder is
	port(
		a: in std_logic;
		b: in std_logic;
		c: in std_logic;
		s: out std_logic;
		carry: out std_logic);
end entity;
architecture behavioral of fulladder is
begin
	process(a,b,c)
	begin
		s <= a xor b xor c;
		carry <= (a and b) or (c and (a xor b));
	end process;
end architecture

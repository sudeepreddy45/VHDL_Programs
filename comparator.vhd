dataflow-->
library ieee;
use ieee.std_logic_1164.all;
entity comparator is
	port(
		a: in std_logic;
		b: in std_logic;
		eq: out std_logic;
		lt: out std_logic;
		gt: out std_logic);
end entity;
architecture dataflow of comparator is
begin
	eq <= a xnor b;
	lt <= (not a) and b;
	gt <= a and (not b);
end architecture;

behavioral-->
library ieee;
use ieee.std_logic_1164.all;
entity comparator is
	port(
		a: in std_logic;
		b: in std_logic;
		eq: out std_logic;
		lt: out std_logic;
		gt: out std_logic);
end entity;
architecture beh of comparator is
begin
	process(a,b)
	begin
		if a=b then 
			eq <= '1'; lt <= '0'; gt <= '0';
		elseif a>b then  
			eq <= '0'; lt <= '0'; gt <= '1';
		else
			eq <= '0'; lt <= '1'; gt <= '0';
		end if;
	end process;
end architecture;

synchronous-->
library ieee;
use ieee.std_logic_1164.all;
entity d_flipflop is
	port(
		clk: in std_logic;
		rst: in std_logic;
		d: in std_logic;
		q: out std_logic);
end entity;
architecture beh of d_flipflop is
begin
	process(clk) 
	begin
		if rising_edge(clk) then
			if rst = '1' then 
				q <= '0';
			else
				q <= d;
			end if;
		end if; 
	end process;
end architecture;

asynchronous-->
library ieee;
use ieee.std_logic_1164.all;
entity d_flipflop is
	port(
		clk: in std_logic;
		rst: in std_logic;
		d: in std_logic;
		q: out std_logic);
end entity;
architecture beh of d_flipflop is
begin
	process(clk,rst) 
	begin
		if rst = '1' then
			q <= '0';
		elseif rising_edge(clk) then 
			q <= d;
		end if;
	end process;
end architecture;	

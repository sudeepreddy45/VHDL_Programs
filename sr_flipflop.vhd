library ieee;
use ieee.std_logic_1164.all;
entity sr_flipflop is
	port(
		clk: in std_logic;
		rst: in std_logic;
		s: in std_logic;
		r: in std_logic;
		q_out: out std_logic);
end entity;
architecture beh of sr_flipflop is
	signal q : std_logic:= '0';
begin
	process(clk,rst)
	begin	
		if rst = '1' then	
			q <= '0';
		elseif rising_edge(clk) then
			if (s = '0' and r = '0') then
				q <= q;
			elseif (s = '0' and r = '1') then
				q <= '0';
			elseif (s = '1' and r = '0') then
				q <= '1';
			else 
				q <= 'X';
			end if;
		end if;
	end process;
	q_out <= q;
end architecture;

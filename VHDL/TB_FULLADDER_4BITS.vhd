-- FULL-ADDER

library ieee;
use ieee.std_logic_1164.all;

entity TB_FAD4 is
end TB_FAD4;

architecture TB_ARQUITETURA_FAD4 of TB_FAD4 is
signal a: std_logic_vector(3 downto 0);
signal b: std_logic_vector(3 downto 0);
signal ci: std_logic;
signal s: std_logic_vector(3 downto 0);
signal co: std_logic;
signal total : std_logic_vector (4 downto 0);

begin

	fad8: entity work.FULLADDER4 PORT MAP (
		A=>a,
		B=>b,
		Ci=>ci,
		S=>s,
		Co=>co);

	ger_sinais: PROCESS
	begin
		a<= "0000"; b<= "0000"; ci<= '0';	wait for 10 ns;
		a<= "0001"; b<= "0001"; ci<= '0';	wait for 10 ns;
		a<= "0010"; b<= "0010"; ci<= '0';	wait for 10 ns;
		a<= "0011"; b<= "0011"; ci<= '0';	wait for 10 ns;
		a<= "0100"; b<= "0100"; ci<= '0';	wait for 10 ns;
		a<= "0101"; b<= "0101"; ci<= '0';	wait for 10 ns;
		a<= "0110"; b<= "0110"; ci<= '0';	wait for 10 ns;
		a<= "0111"; b<= "0111"; ci<= '0';	wait for 10 ns;
		a<= "1000"; b<= "1000"; ci<= '0';	wait for 10 ns;
		a<= "1001"; b<= "1001"; ci<= '0';	wait for 10 ns;
		a<= "1010"; b<= "1010"; ci<= '0';	wait for 10 ns;
		a<= "1011"; b<= "1011"; ci<= '0';	wait for 10 ns;
		a<= "1100"; b<= "1100"; ci<= '0';	wait for 10 ns;
		a<= "1101"; b<= "1101"; ci<= '0';	wait for 10 ns;
		a<= "1110"; b<= "1110"; ci<= '0';	wait for 10 ns;
		a<= "1111"; b<= "1111"; ci<= '0';	wait for 10 ns;
		a<= "0000"; b<= "0000"; ci<= '0';	wait for 50 ns;

	end PROCESS ger_sinais;
	
	total<=co&s;

end TB_ARQUITETURA_FAD4;

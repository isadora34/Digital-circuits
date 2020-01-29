-- HALF-ADDER

library ieee;
use ieee.std_logic_1164.all;

entity TB_HAD is
end TB_HAD;

architecture TB_ARQUITETURA_HAD of TB_HAD is
signal a: std_logic;
signal b: std_logic;
signal s: std_logic;
signal c: std_logic;

begin

	had1: entity work.HALFADDER PORT MAP (
		A=>a,
		B=>b,
		S=>s,
		C=>c);

	ger_sinais: PROCESS
	begin
		a<= '0'; b<= '0';	wait for 10 ns;
		a<= '0'; b<= '1';	wait for 10 ns;
		a<= '1'; b<= '0';	wait for 10 ns;
		a<= '1'; b<= '1';	wait for 10 ns;
		a<= '0'; b<= '0';	wait for 50 ns;
	end PROCESS ger_sinais;

end TB_ARQUITETURA_HAD;

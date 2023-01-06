LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Subtractor IS
PORT (A,B: IN STD_LOGIC;
	DIFF, BRW: OUT STD_LOGIC
	);
	
	END Subtractor;
	
	ARCHITECTURE Behavior OF Subtractor IS
	BEGIN
	
	DIFF <= A XOR B;
	BRW <= B AND (NOT A);
	END Behavior;
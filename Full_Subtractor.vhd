LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY  Full_Subtractor IS
PORT(A,B,C : IN STD_LOGIC;
		DIFF, BRW: OUT STD_LOGIC
		);
		END Full_Subtractor;
		
		ARCHITECTURE Behavior OF Full_Subtractor IS
		
		BEGIN
		
		DIFF <= ((A XOR B) XOR C);
		BRW <= ((NOT A) AND (B OR C)) OR (B AND C);
		
		END Behavior;
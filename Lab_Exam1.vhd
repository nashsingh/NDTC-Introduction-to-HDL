LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Lab_Exam1 is

PORT(

	SW:IN STD_LOGIC_VECTOR (7 DOWNTO 0);
	LEDR: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
	LEDG: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	
	);
	
	END Lab_Exam1;
	
	ARCHITECTURE Behavior OF Lab_Exam1 IS
	
	BEGIN 
	
	LEDR<= SW;
	LEDG<= SW;
	
	END Behavior;
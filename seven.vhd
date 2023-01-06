LIBRARY ieee;

USE ieee.std_logic_1164.all;

ENTITY seven IS
	PORT (SW: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		D: 	OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
		
		END seven;
		
		ARCHITECTURE Behavior OF seven IS
		BEGIN 
		
		D <= "0100001" WHEN SW = "00" ELSE
			  "0000110" WHEN SW = "01" ELSE
			  "1111001" WHEN SW = "10" ELSE
			  "1111111";
			  
			  END Behavior;
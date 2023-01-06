LIBRARY ieee;
	USE ieee.std_logic_1164.all;
	
	ENTITY mux3bit IS 
		PORT (s0: IN STD_LOGIC;
				s1: IN STD_LOGIC;
				u: IN STD_LOGIC;
				v: IN STD_LOGIC;
				w: IN STD_LOGIC;
				m: OUT STD_LOGIC
			);
			
			END mux3bit;
		ARCHITECTURE Behavior OF mux3bit IS
	
		SIGNAL A: STD_LOGIC;
		SIGNAL B: STD_LOGIC;
		SIGNAL C: STD_LOGIC;
		SIGNAL D: STD_LOGIC;
		
		
		
		BEGIN
		
			A <= (NOT(s0) AND s1 AND u);
			B <= (s0 AND (NOT (s1)) AND v);
			C <= (NOT (s0)) AND s1 AND w;
			D <= s0 AND s1 AND w;
			
			m <= A OR B OR C OR D ;
			
			END Behavior;
			
			
			
		
		
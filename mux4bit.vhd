LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux4bit IS


PORT ( 	
			s 				: IN STD_LOGIC;
			x0,x1,x2,x3 : IN STD_LOGIC;
			y0,y1,y2,y3 : IN STD_LOGIC;
			m0,m1,m2,m3	: OUT STD_LOGIC; 
			r0,r1,r2,r3,r4,r5,r6,r7,r8: OUT STD_LOGIC
			);
			

		END mux4bit;

		ARCHITECTURE Behavior OF mux4bit IS
		BEGIN

		m0 <= (NOT (s) AND x0) OR (x0 AND y0);
		m1 <= (NOT (s) AND x1) OR (x1 AND y1);
		m2 <= (NOT (s) AND x2) OR (x2 AND y2);
		m3 <= (NOT (s) AND x3) OR (x3 AND y3);
			r0 <= x0;
			r1 <= x1;
			r2 <= x2;
			r3 <= x3;
			r4 <= y0;
			r5 <= y1;
			r6 <= y2;
			r7 <= y3;
			r8 <= s;
		
		END Behavior;
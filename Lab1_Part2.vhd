LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Part2 IS 
	PORT ( 	
			s 				: IN STD_LOGIC;
			x0,x1,x2,x3 : IN STD_LOGIC;
			y0,y1,y2,y3 : IN STD_LOGIC;
			m0,m1,m2,m3	: OUT STD_LOGIC); -- red LEDs

		END Part2;

		ARCHITECTURE Behavior OF Part2 IS

	component Part3 IS


			PORT ( s,x,y : IN STD_LOGIC;
			
		 m		 : OUT STD_LOGIC); -- red LEDs

			END component;

	BEGIN

		com1 : Part3 port map (s,x0,y0,m0);
		com2 : Part2 port map (s,x1,y1,m1);
		com3 : Part2 port map (s,x2,y2,m2);
		com4 : Part2 port map (s,x3,y3,m3);


		END Behavior;
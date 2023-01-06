LIBRARY ieee;

USE ieee.std_logic_1164.all;

ENTITY seven_3 IS 
PORT (SW: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		D:	OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		D2: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		D3: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		D4: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
		
		END seven_3;
		
		ARCHITECTURE Behavior OF seven_3 IS 
		BEGIN 
		

		D<= "1111001" WHEN SW = "00" ELSE
			  "1111111" WHEN SW = "01" ELSE
			  "0100001" WHEN SW = "10" ELSE
			  "0000110";
			  
		D2<= "0000110" WHEN SW = "00" ELSE
			  "1111001" WHEN SW = "01" ELSE
			  "1111111" WHEN SW = "10" ELSE
			  "0100001";
			  
		D3 <= "0100001" WHEN SW = "00" ELSE
			  "0000110" WHEN SW = "01" ELSE
			  "1111001" WHEN SW = "10" ELSE
			  "1111111";
			  

		D4 <="1111111" WHEN SW = "00" ELSE
			  "0100001" WHEN SW = "01" ELSE
			  "0000110" WHEN SW = "10" ELSE
			  "1111001";
			  
			  
	END Behavior;
		
			  

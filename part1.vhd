-- Author/ Editor - Kavinda Rathnayake
-- M.Eng (Hons) in Electrical and Electronic Engineering,Sheffield Hallam University,United Kingdom.
-- Faculty of Graduate studies and Research in Electrical and Electronics Engineering
-- Sri Lanka Institute of Information Technology,Sri Lanka.
-- under supervisation of Dr. Rohana Thilakumara.(SLIIT).

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part1 IS

	PORT (
			SW :IN STD_LOGIC_VECTOR(9 DOWNTO 0);
			LEDR :OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
		  );
		  
END part1;


ARCHITECTURE behavior OF part1 IS
BEGIN

	LEDR <=SW;
	
END behavior;
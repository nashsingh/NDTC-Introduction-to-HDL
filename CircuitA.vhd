-- ABCD	abc
-- -----------
--0 0000	XXX
--1 0001	XXX
--2 0010	XXX
--3 0011	XXX
--4 0100	XXX
--5 0101	XXX
--6 0110	XXX
--7 0111	XXX
--8 1000	XXX
--9 1001	XXX
--A 10 1010	000
--B 11 1011	001
--C 12 1100	010
--D 13 1101	011
--E 14 1110	100
--F 15 1111	101
--
-- a = BC
-- XX0X
-- XX0X
-- XX10
-- XX10
--
-- b = !C
-- XX1X
-- XX1X
-- XX00
-- XX00
--
-- c = D
-- XX0X
-- XX1X
-- XX11
-- XX00

library ieee;
use ieee.std_logic_1164.all;

entity CircuitA is
	port
	(
		v		: in std_logic_vector(2 downto 0);
		z		: out std_logic_vector(2 downto 0)
	);
end CircuitA;

architecture Behavioral of CircuitA is
begin
	z(2) <= v(2) and v(1);
	z(1) <= not v(1);
	z(0) <= v(0);
end Behavioral;
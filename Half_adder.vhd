LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Half_adder IS
PORT (A: IN STD_LOGIC;
		b: IN STD_LOGIC;
		S: OUT STD_LOGIC;
		C: OUT STD_LOGIC
);

END Half_adder;

ARCHITECTURE Behavior OF Half_adder IS
 BEGIN
 
 S <= A XOR B;
 C <= A AND B;
 END Behavior;

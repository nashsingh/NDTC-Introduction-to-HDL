LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Full_adder IS
PORT (A: IN STD_LOGIC;
		b: IN STD_LOGIC;
		Cin: IN STD_LOGIC;
		S: OUT STD_LOGIC;
		Cout: OUT STD_LOGIC
);

END Full_adder;

ARCHITECTURE Behavior OF Full_adder IS
SIGNAL X: STD_LOGIC;
SIGNAL Y: STD_LOGIC;
SIGNAL Z: STD_LOGIC;
 BEGIN
 
 X <= A XOR B;
 Y <= A AND B;
 Z <= X AND Cin;
 S <= X XOR Cin;
 Cout <= Y OR Z;
 END Behavior;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Digits7seg is
port (
     
        SW : in std_logic_vector(3 downto 0);  --BCD input
        Display : out std_logic_vector(0 to 6)  -- 7 bit decoded output.
    );
end Digits7seg;
--'a' corresponds to MSB of segment7 and g corresponds to LSB of segment7.
architecture Behavior of Digits7seg is

begin
process (SW)
BEGIN

case  SW is
when "0000"=> Display  <="0000001";  -- 'd'
when "0001"=> Display  <="1001111";  -- 'E'
when "0010"=> Display  <="0010010";  -- '2'
when "0011"=> Display  <="0000110";  -- 'blank'
when "0100"=> Display  <="1001100";  -- 'blank'
when "0101"=> Display  <="0100100";  -- 'blank'
when "0110"=> Display  <="1100000";  -- 'blank'
when "0111"=> Display  <="0001111";  -- 'blank'
when "1000"=> Display  <="0000000";  -- 'blank'
when "1001"=> Display  <="0001100";  -- 'blank'
WHEN OTHERS => Display <= "1111111";

--WHEN "0000" => display <= "0000001";
--WHEN "0001" => display <= "1001111";
--WHEN "0010" => display <= "0010010";
--WHEN "0011" => display <= "0000110";
--WHEN "0100" => display <= "1001100";
--WHEN "0101" => display <= "0100100";
--WHEN "0110" => display <= "1100000";
--WHEN "0111" => display <= "0001111";
--WHEN "1000" => display <= "0000000";
--WHEN "1001" => display <= "0001100";
--WHEN OTHERS => display <= "1111111";
END CASE;
END PROCESS;
END Behavior;





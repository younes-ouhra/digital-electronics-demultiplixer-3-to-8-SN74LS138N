library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demultiplexer3to8 is
Port (
        notE1 : in STD_LOGIC;
        notE2 : in STD_LOGIC;
        E3 : in STD_LOGIC;
        A : in STD_LOGIC_VECTOR(2 downto 0);
        notO : out STD_LOGIC_VECTOR(7 downto 0));
end demultiplexer3to8;

architecture Behavioral of demultiplexer3to8 is
    signal SIGNALnotO : STD_LOGIC_VECTOR(7 downto 0) := "11111111";
   
begin
    notO <= SIGNALnotO;
    
    SIGNALnotO <="11111110" when (A = "000" and notE1 = '0' and notE2 = '0' and E3 = '1') else
    "11111101" when (A = "001" and notE1 = '0' and notE2 = '0' and E3 = '1') else
    "11111011" when (A = "010" and notE1 = '0' and notE2 = '0' and E3 = '1') else
    "11110111" when (A = "011" and notE1 = '0' and notE2 = '0' and E3 = '1') else
    "11101111" when (A = "100" and notE1 = '0' and notE2 = '0' and E3 = '1') else
    "11011111" when (A = "101" and notE1 = '0' and notE2 = '0' and E3 = '1') else
    "10111111" when (A = "110" and notE1 = '0' and notE2 = '0' and E3 = '1') else
    "01111111" when (A = "111" and notE1 = '0' and notE2 = '0' and E3 = '1') else
    "11111111";
 
end Behavioral;
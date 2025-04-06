library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demultiplexer3to8_TB is
end demultiplexer3to8_TB;

architecture Behavioral of demultiplexer3to8_TB is
	component demultiplexer3to8 is
	Port(
		notE1 : in STD_LOGIC;
		notE2 : in STD_LOGIC;
		E3 : in STD_LOGIC;
		A : in STD_LOGIC_VECTOR(2 downto 0);
		notO : out STD_LOGIC_VECTOR(7 downto 0));
	end component;

signal notE1_Signal : STD_LOGIC;
signal notE2_Signal : STD_LOGIC;
signal E3_Signal : STD_LOGIC;
signal A_Signal : STD_LOGIC_VECTOR(2 downto 0);
signal notO_Signal : STD_LOGIC_VECTOR(7 downto 0);

begin
	uut: demultiplexer3to8
	port map( notE1 => notE1_Signal,
				notE2 => notE2_Signal,
				E3 => E3_Signal,
				A => A_Signal,
				notO => notO_Signal);

	stimulation: process
	begin
		notE1_Signal <= '1';
        notE2_Signal <= 'Z';
        E3_Signal <= 'Z';
        A_Signal(0) <= '0';
        A_Signal(1) <= '0';
        A_Signal(2) <= '0';
        wait for 20 ns;
		
		notE1_Signal <= 'Z';
        notE2_Signal <= '1';
        wait for 20 ns;
		
        notE2_Signal <= 'Z';
        E3_Signal <= '0';
        wait for 20 ns;
		
		notE1_Signal <= '0';
        notE2_Signal <= '0';
        E3_Signal <= '1';
        A_Signal(0) <= '0';
        A_Signal(1) <= '0';
        A_Signal(2) <= '0';
        wait for 20 ns;
		
        A_Signal(0) <= '1';
        wait for 20 ns;
		
		A_Signal(0) <= '0';
        A_Signal(1) <= '1';
        wait for 20 ns;
		
		A_Signal(0) <= '1';
        wait for 20 ns;
		
		A_Signal(0) <= '0';
        A_Signal(1) <= '0';
		A_Signal(2) <= '1';
        wait for 20 ns;
		
		A_Signal(0) <= '1';
        wait for 20 ns;
		
		A_Signal(0) <= '0';
        A_Signal(1) <= '1';
        wait for 20 ns;
		
		A_Signal(0) <= '1';
        wait for 20 ns;
		
		
	end process;
	end Behavioral;
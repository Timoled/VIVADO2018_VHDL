----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2022 09:33:02 AM
-- Design Name: 
-- Module Name: MUX4_1_LED7doan - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX2TO1 is
  Port (A,B : in std_logic_vector ( 3 downto 0 );
        S : in std_logic ;
        Y : out std_logic_vector ( 3 downto 0 )
        );
end MUX2TO1;

architecture Behavioral of MUX2TO1 is
begin
    Y <= A when ( S='1') else B ;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity LED7 is
  Port (HEX : in std_logic_vector ( 3 downto 0 );
        LED : out std_logic_vector ( 6 downto 0 );
        an  : out std_logic_vector( 3 downto 0)
        );
end LED7 ;
architecture Behavioral of LED7 is
begin
    with HEX Select
 LED <= "1111001" when "0001" ,
        "0100100" when "0010" ,
        "0110000" when "0011" ,
        "0011001" when "0100" ,
        "0010010" when "0101" ,
        "0000010" when "0110" ,
        "1111000" when "0111" ,
        "0000000" when "1000" ,
        "0010000" when "1001" ,
        "0001000" when "1010" ,
        "0000011" when "1011" ,
        "1000110" when "1100" ,
        "0100001" when "1101" ,
        "0000110" when "1110" ,
        "0001110" when "1111" ,
        "1000000" when others ;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX4_1_LED7doan is
--  Port ( );
port(W0,W1,W2,W3 : in std_logic_vector(3 downto 0);
     S0 : in std_logic;
     S1 : in std_logic;
     LED    : out std_logic_vector(6 downto 0);
     an    : out std_logic_vector(3 downto 0)
);
end MUX4_1_LED7doan;


architecture Behavioral of MUX4_1_LED7doan is
 signal U,V,T : std_logic_vector(3 downto 0);
 component MUX2TO1 
--  Port ( );
 port(A,B : in std_logic_vector  (3 downto 0 ) ;
        S : in std_logic;
        Y : out std_logic_vector (3 downto 0)
 );
 end component;
 component LED7 is
      Port (HEX : in std_logic_vector ( 3 downto 0 );
            LED : out std_logic_vector ( 6 downto 0 );
            an  : out std_logic_vector(3 downto 0)
            );
 end component ;
 

begin
 Gate1 : MUX2TO1 port map(A => W0, B => W1, S =>S0, Y => U);
 Gate2 : MUX2TO1 port map(A => W2, B => W3, S => S0, Y => V);
 Gate3 : MUX2TO1 port map(A => U, B => V, S => S1, Y => T);
 Gate4 : LED7 port map(HEX => T,LED =>LED, an =>an);
end Behavioral;
    
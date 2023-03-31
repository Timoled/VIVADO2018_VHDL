----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/03/2022 09:39:49 PM
-- Design Name: 
-- Module Name: MUX41 - Behavioral
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

entity MUX41 is
--  Port ( );
  port( W0,W1,W2,W3 : in std_logic_vector(3 downto 0);
            S0,S1 : in std_logic;
                 HEX : out std_logic_vector(3 downto 0) );
end MUX41;

architecture Behavioral of MUX41 is
  component MUX2TO1 is
    --  Port ( );
    port(A,B : in std_logic_vector  (3 downto 0 ) ;
           S : in std_logic;
           Y : out std_logic_vector (3 downto 0)
 );
 end component;
 signal U,V : std_logic_vector(3 downto 0);
begin
Gate1 : MUX2TO1 port map(A=>W0,B=>W1,S=>S0,Y=>U);
Gate2 : MUX2TO1 port map(A=>W2,B=>W3,S=>S0,Y=>V);
Gate3 : MUX2TO1 port map(A=>U,B=>V,S=>S1,Y=>HEX);
end Behavioral;

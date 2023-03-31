----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/06/2022 06:33:19 PM
-- Design Name: 
-- Module Name: MUX2TO1_TB - Behavioral
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

entity MUX2TO1_TB is
--  Port ( );
end MUX2TO1_TB;

architecture Behavioral of MUX2TO1_TB is
-- component 
component MUX2TO1 is
--  Port ( );
 port(A,B : in std_logic_vector  (3 downto 0 ) ;
        S : in std_logic;
        Y : out std_logic_vector (3 downto 0)
 );
 end component;
-- signal
signal A,B : std_logic_vector  (3 downto 0 ) ;
signal   S : std_logic;
signal   Y : std_logic_vector (3 downto 0);
       
begin
-- cac lenh cua TB
-- port map
-- DUT ten Desing Under Test
DUT : MUX2TO1 port map
(A => A, B => B, S =>S, Y =>Y
);
-- Cac lenh cua TB
TEST : process is 
begin
    A <= "0001";
    B <= "0010";
    S <= '1';    -- chon kenh A
    wait for 20ns;
    S <= '0';    -- chon kenh B
    wait for 50ns;
    A <= "1010";
    wait for 50ns;
    wait;
    end process;
end Behavioral;

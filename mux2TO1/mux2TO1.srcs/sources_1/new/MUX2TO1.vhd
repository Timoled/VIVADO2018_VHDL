----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/06/2022 05:51:32 PM
-- Design Name: 
-- Module Name: MUX2TO1 - Behavioral
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
--  Port ( );
 port(A,B : in std_logic_vector  (3 downto 0 ) ;
        S : in std_logic;
        Y : out std_logic_vector (3 downto 0)
 );
 
end MUX2TO1;

architecture Behavioral of MUX2TO1 is
 -- khai bao cac component va cac signal 
  
    
begin
-- mo ta kien truc va hoat dong 
 Y <= A when (S = '1') else B;
 
end Behavioral;

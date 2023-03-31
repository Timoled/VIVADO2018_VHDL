----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.05.2022 18:27:05
-- Design Name: 
-- Module Name: counterUD - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counterUD is
--  Port ( );
    port(
        clk : in std_logic;
        reset: in std_logic;
        dir  : in std_logic;
        seg7 : out std_logic_vector(6 downto 0);
         c    : out std_logic;
        an : out std_logic_vector(3 downto 0)
        );
end counterUD;

architecture Behavioral of counterUD is

    
begin
    
end Behavioral;

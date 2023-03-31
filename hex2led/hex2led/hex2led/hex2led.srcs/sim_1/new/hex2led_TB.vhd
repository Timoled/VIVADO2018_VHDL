----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/03/2022 02:49:27 PM
-- Design Name: 
-- Module Name: hex2led_TB - Behavioral
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

entity hex2led_TB is
--  Port ( );
end hex2led_TB;

architecture Behavioral of hex2led_TB is
-- component
   component hex2led is
    port (
        HEX: in std_logic_vector(3 downto 0);
        LED: out std_logic_vector(6 downto 0)
       
    );
    end component ;
 --signal
   signal HEX: std_logic_vector(3 downto 0);
   signal LED: std_logic_vector (6 downto 0);
begin
  
  DUT: hex2led port map
  (
      HEX=>HEX,LED=>LED
        );
   TEST :process is
  begin
    HEX<="0001";
    wait for 20 ns;
    HEX<="0010";
    wait for 20 ns;
    HEX<="0011";
    wait for 20 ns;
    HEX<="0101";
    wait for 20 ns;
    HEX<="0100";
    wait for 20 ns;
    HEX<="0111";
    wait for 20 ns;
    HEX<="1000";
    wait for 20 ns;
    HEX<="1001";
    wait for 20 ns;
    HEX<="1010";
    wait for 20 ns;
    HEX<="1011";
    wait for 20 ns;
    HEX<="1100";
    wait for 20 ns;
    HEX<="1101";
    wait for 20 ns;
    HEX<="1110";
    wait for 20 ns;
    HEX<="1110";
    wait for 20 ns;
    HEX<="1111";
    wait for 20 ns;
    HEX<="0000";
    wait for 20 ns;
      end process;   
end Behavioral;

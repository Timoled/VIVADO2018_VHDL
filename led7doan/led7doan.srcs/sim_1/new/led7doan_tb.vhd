----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2022 06:33:44 PM
-- Design Name: 
-- Module Name: led7doan_tb - Behavioral
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

entity led7doan_tb is
--  Port ( );
end led7doan_tb;

architecture Behavioral of led7doan_tb is
  component led7doan is
--  Port ( );
    port ( HEX : in std_logic_vector(3 downto 0);
      
           LED : out std_logic_vector(6 downto 0));
      
  end component;
  -- khai bao signal khong co chieu (nen ko co in out)
  signal HEX : std_logic_vector(3 downto 0);
  signal LED : std_logic_vector(6 downto 0);
  
begin
   DUT : led7doan port map  -- port map dung thi behavior no nam ben trong tb
   (
   HEX => HEX, LED => LED); -- noi cac day lai 
   -- tao ra cac tin hieu vao
   TEST : process is   -- ten thoi
     begin 
        HEX <= "0000"; wait for 10ns;
        HEX <= "0001"; wait for 10ns;
        HEX <= "0010"; wait for 10ns;
        HEX <= "0011"; wait for 10ns;
        HEX <= "0100"; wait for 10ns;
        HEX <= "0101"; wait for 10ns;
        HEX <= "0110"; wait for 10ns;
        HEX <= "0111"; wait for 10ns;
        HEX <= "1000"; wait for 10ns;
        HEX <= "1001"; wait for 10ns;
        HEX <= "1010"; wait for 10ns;
        HEX <= "1011"; wait for 10ns;
        HEX <= "1100"; wait for 10ns;
        HEX <= "1101"; wait for 10ns;
        HEX <= "1110"; wait for 10ns;
        HEX <= "1111"; wait; -- qua trinh process duoc lap di lap lai
    end process;
end Behavioral;

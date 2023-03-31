----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/06/2022 11:07:05 AM
-- Design Name: 
-- Module Name: MUX4TO1_TB - Behavioral
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

entity MUX4TO1_TB is
--  Port ( );
end MUX4TO1_TB;

architecture Behavioral of MUX4TO1_TB is
component MUX41 is
--  Port ( );
  port( W0,W1,W2,W3 : in std_logic_vector(3 downto 0);
              S0,S1 : in std_logic;
                HEX : out std_logic_vector(3 downto 0) );
end component;
  signal W0,W1,W2,W3 : std_logic_vector(3 downto 0);
  signal S0,S1       :  std_logic;
  signal HEX         : std_logic_vector(3 downto 0);
begin
 DUT : MUX41 port map (W0=>W0,W1=>W1,W2=>W2,W3=>W3,S0=>S0,S1=>S1,HEX=>HEX);

 test : process is 
 begin 
 W0 <= "0001";
 W1 <= "0010";
 W2 <= "0011";
 W3 <= "0100";
 S0 <= '1';
 S1 <= '0';
 wait for 20ns;
 S0 <= '1';
 S1 <= '1';
 wait for 20ns;
 wait;
 end process;
end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2022 11:34:07 AM
-- Design Name: 
-- Module Name: MUX4_1_LED_7_doan_TB - Behavioral
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

entity MUX4_1_LED_7_doan_TB is
--  Port ( );
end MUX4_1_LED_7_doan_TB;

architecture Behavioral of MUX4_1_LED_7_doan_TB is
 -- component
 component  MUX4_1_LED7doan is
--  Port ( );
port(W0,W1,W2,W3 : in std_logic_vector(3 downto 0);
     S0 : in std_logic;
     S1 : in std_logic;
     LED    : out std_logic_vector(6 downto 0);
     an    : out std_logic_vector(3 downto 0)
);
end component;
signal W0,W1,W2,W3 : std_logic_vector(3 downto 0);
signal S0,S1 : std_logic;
signal LED : std_logic_vector(3 downto 0);
begin
    DUT : MUX4_1_LED7doan port map(W0 => W0, W1 => W1,W2 => W2, W3 =>W3 ,S0 => S0,S1=> S1, LED => LED);
  Test : process is
    begin
        W0 <= "0011";
        W1 <= "0001";
        W2 <= "0010";
        w3 <= "0011"; 
        S0 <='0';S1<='0'; --Chon kenh A2
        wait for 20ns;
        S1 <='1'; --Chon kenh B2
        wait for 50ns;
        W1 <= "0100";
        wait for 50ns;
        S0 <='1'; --chon kenh D2
        wait; -- thoat khoi vong lap 
    end process ; 
end Behavioral;

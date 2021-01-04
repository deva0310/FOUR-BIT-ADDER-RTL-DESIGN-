----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.12.2020 18:43:41
-- Design Name: 
-- Module Name: FourBitAdder - Behavioral
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
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FourBitAdder is
Port ( 
a,b : in std_logic_vector(3 downto 0);
c   : out std_logic_vector(4 downto 0)
);
end FourBitAdder;

architecture Behavioral of FourBitAdder is
 
begin

c <= ('0'&a) + ('0'&b);

end Behavioral;

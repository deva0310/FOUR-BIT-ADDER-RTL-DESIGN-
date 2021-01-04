----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2020 17:45:05
-- Design Name: 
-- Module Name: Full_adder_using_half - Behavioral
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

entity halfadder1 is
Port (
a,b : in std_logic;
c,s : out std_logic

 );
end halfadder1;

architecture Behavioral of halfadder1 is

begin
c <= a and b;
s <= a xor b;

end Behavioral;
-------------------
-----------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity fulladder1 is
Port (
a,b,cin : in std_logic; 
cout,s    : out std_logic

 );
end fulladder1;

architecture Behavioral of fulladder1 is
component halfadder1 is
Port (
a,b: in std_logic;
c,s : out std_logic

 );
end component;
signal t1 : std_logic; 
signal t2 : std_logic;
signal t3 : std_logic;
begin
S1 : halfadder1 port map(a=>a,b=>b,c=>t3,s=>t1);
S2 : halfadder1 port map(a=>cin,b=>t1,c=>t2,s=>s);
cout <= t2 or t3;
cout <= t2 or t3;
end Behavioral;
-------------------------
------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity fourbitadder is
Port (
a,b : in std_logic_vector (3 downto 0); 
sum    : out std_logic_vector (3 downto 0);
cout   : out std_logic

 );
end fourbitadder;

architecture Behavioral of fourbitadder is
component fulladder1 is
Port (
a,b,cin : in std_logic; 
cout,s    : out std_logic

 );
end component;
signal cin,c0,c1,c2 : std_logic:='0';
begin
FA1 : fulladder1 port map(a=>a(0),b=>b(0),cin=>cin,cout=>c0,s=>sum(0));
FA2 : fulladder1 port map(a=>a(1),b=>b(1),cin=>c0,cout=>c1,s=>sum(1));
FA3 : fulladder1 port map(a=>a(2),b=>b(2),cin=>c1,cout=>c2,s=>sum(2));
FA4 : fulladder1 port map(a=>a(3),b=>b(3),cin=>c2,cout=>cout,s=>sum(3));

end Behavioral;

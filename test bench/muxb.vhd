----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:30:23 12/20/2020 
-- Design Name: 
-- Module Name:    FORWARD_B_MUX - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FORWARD_B_MUX is
    Port ( IN1 : in  STD_LOGIC_VECTOR (31 downto 0):=x"00000000";
           IN2 : in  STD_LOGIC_VECTOR (31 downto 0):=x"00000000";
           IN3 : in  STD_LOGIC_VECTOR (31 downto 0):=x"00000000";
           X : in  STD_LOGIC_VECTOR (1 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (31 downto 0));
end FORWARD_B_MUX;

architecture Behavioral of FORWARD_B_MUX is

Signal TEMP : std_logic_vector(31 downto 0):= x"00000000";
begin

process(X,IN1,IN2,IN3)
begin

if(X="00")then
	TEMP<=IN1;
elsif(X="01")then
	TEMP<=IN2;
elsif(X="10")then
	TEMP<=IN3;
else
	TEMP<=x"00000000";
end if;
end process;

OUTPUT<=TEMP;
end Behavioral;


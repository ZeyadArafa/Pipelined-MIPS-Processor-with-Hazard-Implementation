----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:10:57 12/20/2020 
-- Design Name: 
-- Module Name:    JUMP_SH - Behavioral 
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

entity JUMP_SH is
    Port ( signin : in  STD_LOGIC_VECTOR (25 downto 0);
           PC : in  STD_LOGIC_VECTOR (31 downto 0);
          signout : out  STD_LOGIC_VECTOR (31 downto 0));
end JUMP_SH;

architecture Behavioral of JUMP_SH is

begin

process (signin)
begin
   for i in 27 downto 2 loop
	 signout(i)<=signin(i-2);
   end loop;
	signout(1)<='0';
	signout(0)<='0';
	signout(31 downto 28)<=pc(31 downto 28);
end process;

end Behavioral;


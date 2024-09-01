----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:05:47 12/20/2020 
-- Design Name: 
-- Module Name:    SHIFT - Behavioral 
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

entity SHIFT is
    Port ( signin : in  STD_LOGIC_VECTOR (31 downto 0);
           signout : out  STD_LOGIC_VECTOR (31 downto 0));
end SHIFT;

architecture Behavioral of SHIFT is

begin
signout<=signin(29 downto 0) & "00";

end Behavioral;


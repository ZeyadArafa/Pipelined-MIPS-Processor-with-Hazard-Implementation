----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:42:05 12/20/2020 
-- Design Name: 
-- Module Name:    MUX_CONTROL_HAZ - Behavioral 
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

entity MUX_CONTROL_HAZ is
    Port ( CONTROL : in  STD_LOGIC_VECTOR (9 downto 0); --9 SIGNALS  --10bit
           sel : in  STD_LOGIC;
           CONTROL_OUT : out  STD_LOGIC_VECTOR (9 downto 0));
end MUX_CONTROL_HAZ;

architecture Behavioral of MUX_CONTROL_HAZ is

Signal TEMP : std_logic_vector(9 downto 0):="0000000000";
begin

CONTROL_OUT<=TEMP;
TEMP<= "0000000000" when sel ='0' else
		CONTROL;

end Behavioral;

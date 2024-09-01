----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:42:18 12/20/2020 
-- Design Name: 
-- Module Name:    EX_MEM_REG - Behavioral 
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

entity EX_MEM_REG is
    Port ( IN_TO_REG : in  STD_LOGIC_VECTOR (72 downto 0);   --- 32 ALU  --32 MUX --4 WB /MEM SIGNAL --5 BIT MUS RS/RT =73
           OUT_FROM_REG : out  STD_LOGIC_VECTOR (72 downto 0);
           CLK : in  STD_LOGIC);
end EX_MEM_REG;

architecture Behavioral of EX_MEM_REG is

Signal TEMP : std_logic_vector(72 downto 0):=(others => '0');

begin

OUT_FROM_REG <= TEMP;

process (CLK)
begin 
if(CLK'event and CLK ='0')then
	TEMP<= IN_TO_REG;
end if;

end process;

end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:38:02 11/22/2020 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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

entity alu is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUCONTROL : in  STD_LOGIC_VECTOR (3 downto 0);
           ALUResult : out  STD_LOGIC_VECTOR (31 downto 0);
           zero : out  STD_LOGIC);
end alu;

architecture Behavioral of alu is
signal result: std_logic_vector(31 downto 0);	
begin
process(ALUCONTROL,A,B)
begin
case ALUCONTROL is
 when "0000" =>
  result <= A and B; -- and
 when "0001" =>
  result <= A or B;  -- or
 when "0010" => 
  result <= A + B; -- add
 when "0110" =>
  result <= A - B; -- sub
 when "0111" =>
   -- set on less than
  if (A < B) then
   result <= x"00000001";
  else 
   result <= x"00000000";
  end if;
 when "1100" =>
   result <= A nor B; --nor
 when others => null;
 end case;
end process;
zero <= '1' when result=x"00000000" else '0';	
ALUResult <= result;
end Behavioral;


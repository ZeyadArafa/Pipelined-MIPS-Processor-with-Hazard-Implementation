----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:20:10 12/20/2020 
-- Design Name: 
-- Module Name:    AluControl - Behavioral 
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

entity AluControl is
    Port ( AluOp : in  STD_LOGIC_VECTOR (1 downto 0);
           Inst : in  STD_LOGIC_VECTOR (31 downto 0);
           AluCtrl : out  STD_LOGIC_VECTOR (3 downto 0));
end AluControl;

architecture Behavioral of AluControl is

begin
process(AluOp, inst) 
begin 
if (AluOp = "00") then -- Lw or Sw
AluCtrl <= "0010";
elsif ((AluOp = "10") and (Inst(5 downto 0)= "100000")) then --Add
AluCtrl <= "0010" ;
elsif ((AluOp = "10") and (Inst(5 downto 0)= "100010")) then --Sub
AluCtrl <= "0110";
elsif ((AluOp = "10") and (Inst(5 downto 0)= "100100")) then --And
AluCtrl <= "0000";
elsif ((AluOp = "10") and (Inst(5 downto 0)= "100101")) then --Or
AluCtrl <= "0001";
elsif ((AluOp = "10") and (Inst(5 downto 0)= "101010")) then --Slt
AluCtrl <= "0111";
else
AluCtrl <= "1111";
end if;
end process;
end Behavioral;


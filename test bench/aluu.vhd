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

---- Uncomment the following library declaration if           INST        antiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_CONTROL_UNIT is
    Port (  ALUOP  : in  STD_LOGIC_VECTOR (1 downto 0);
                    INST         : in  STD_LOGIC_VECTOR (5 downto 0);
           control : out  STD_LOGIC_VECTOR (3 downto 0));
end ALU_CONTROL_UNIT ;

architecture Behavioral of AluControl is

begin
process( ALUOP ,         INST       ) 
begin 
if ( ALUOP  = "00") then -- Lw or Sw
   control <= "0010";
elsif ((  ALUOP   = "10") and (  INST (5 downto 0)= "100000")) then --Add
   control <= "0010" ;
elsif (( ALUOP  = "10") and (    INST  (5 downto 0)= "100010")) then --Sub
   control <= "0110";
elsif (( ALUOP  = "10") and (    INST  (5 downto 0)= "100100")) then --And
   control <= "0000";
elsif (( ALUOP  = "10") and (    INST  (5 downto 0)= "100101")) then --Or
   control <= "0001";
elsif (( ALUOP  = "10") and (    INST  (5 downto 0)= "101010")) then --Slt
   control <= "0111";
else
   control <= "1111";
end if;
end process;
end Behavioral;

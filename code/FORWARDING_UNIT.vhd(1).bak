----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:12:54 12/20/2020 
-- Design Name: 
-- Module Name:    FORWARDING_UNIT - Behavioral 
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

entity FORWARDING_UNIT is
    Port ( XM_RegWrite : in  STD_LOGIC;
           MW_RegWrite : in  STD_LOGIC;
          DX_Rs : in  STD_LOGIC_VECTOR (4 downto 0);
           DX_Rt : in  STD_LOGIC_VECTOR (4 downto 0);
         XM_Rd : in  STD_LOGIC_VECTOR (4 downto 0);
          MW_Rd : in  STD_LOGIC_VECTOR (4 downto 0);
           FORWARDA : out  STD_LOGIC_VECTOR (1 downto 0);
           FORWARDB : out  STD_LOGIC_VECTOR (1 downto 0));
end FORWARDING_UNIT;

architecture Behavioral of FORWARDING_UNIT is


signal FOR_A_TEMP : std_logic_vector(1 downto 0) :="00";
signal FOR_B_TEMP : std_logic_vector(1 downto 0) :="00";
begin

FORWARDA<=FOR_A_TEMP;
FORWARDB<=FOR_B_TEMP;
process(  XM_Rd,MW_Rd,XM_RegWrite, DX_Rs,DX_Rt,MW_RegWrite)
begin 

if( (XM_RegWrite='1')and(XM_Rd /= "00000")and (XM_Rd =DX_Rs) )then
FOR_A_TEMP<="10";
elsif((MW_RegWrite='1')and(XM_Rd /= "00000")and(MW_Rd =DX_Rs) )then
FOR_A_TEMP<="01";
else
FOR_A_TEMP<="00";
end if;

if((XM_RegWrite='1')and(XM_Rd /= "00000")and(XM_Rd = DX_Rt) )then
FOR_B_TEMP<="10";
elsif((MW_RegWrite='1')and(MW_Rd /= "00000")and(MW_Rd = DX_Rt) )then
FOR_B_TEMP<="01";
else 
FOR_B_TEMP<="00";
end if;

end process;
end Behavioral;
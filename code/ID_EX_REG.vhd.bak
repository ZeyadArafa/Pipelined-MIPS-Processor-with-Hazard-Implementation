----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:52:59 12/20/2020 
-- Design Name: 
-- Module Name:    ID_EX_REG - Behavioral 
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

entity ID_EX_REG is
    Port ( BRANCH : in  STD_LOGIC;
           REG1 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG2 : in  STD_LOGIC_VECTOR (31 downto 0);
           SIGN_IN : in  STD_LOGIC_VECTOR (31 downto 0);
           PC : in  STD_LOGIC_VECTOR (31 downto 0);
           RT : in  STD_LOGIC_VECTOR (4 downto 0);
           RS : in  STD_LOGIC_VECTOR (4 downto 0);
           RD : in  STD_LOGIC_VECTOR (4 downto 0);
           INSTRUCT : in  STD_LOGIC_VECTOR (5 downto 0);
           EX_S_IN : in  STD_LOGIC_VECTOR (3 downto 0);
           MEM_S_IN : in  STD_LOGIC_VECTOR (1 downto 0);
           WB_S_IN : in  STD_LOGIC_VECTOR (1 downto 0);
           BRANCH_OUT : out  STD_LOGIC;
           REG1_OUT : out  STD_LOGIC_VECTOR (31 downto 0);
           REG2_OUT : out  STD_LOGIC_VECTOR (31 downto 0);
           SIGN_OUT : out  STD_LOGIC_VECTOR (31 downto 0);
           PC_OUT : out  STD_LOGIC_VECTOR (31 downto 0);
           RT_OUT : out  STD_LOGIC_VECTOR (4 downto 0);
           RS_OUT : out  STD_LOGIC_VECTOR (4 downto 0);
           RD_OUT : out  STD_LOGIC_VECTOR (4 downto 0);
           INSTRUCT_OUT : out  STD_LOGIC_VECTOR (5 downto 0);
           EX_S_OUT : out  STD_LOGIC_VECTOR (3 downto 0);
           MEM_S_OUT : out  STD_LOGIC_VECTOR (1 downto 0);
           WB_S_OUT : out  STD_LOGIC_VECTOR (1 downto 0);
           CLK : in  STD_LOGIC);
end ID_EX_REG;

architecture Behavioral of ID_EX_REG is

signal branch_temp : STD_LOGIC:='0';
signal inst_temp :  STD_LOGIC_vector(5 downto 0):="000000";
signal pc_temp :  STD_LOGIC_vector(31 downto 0):=x"00000000";
signal reg2_temp :  STD_LOGIC_vector(31 downto 0):=x"00000000";
signal reg1_temp :  STD_LOGIC_vector(31 downto 0):=x"00000000";
signal sign_temp :   STD_LOGIC_vector(31 downto 0):=x"00000000";
signal rt_temp :    STD_LOGIC_vector(4 downto 0):="00000";
signal rs_temp :    STD_LOGIC_vector(4 downto 0):="00000";
signal rd_temp :   STD_LOGIC_vector(4 downto 0):="00000";
signal ex_temp:   STD_LOGIC_vector(3 downto 0):="0000";
signal mem_temp :   STD_LOGIC_vector(1 downto 0):="00";
signal wb_temp :   STD_LOGIC_vector(1 downto 0):="00";

begin

process (CLK) 
begin
if(CLK'event and CLK = '0')then
		branch_temp <=  BRANCH; 
		inst_temp<=INSTRUCT;
		pc_temp<=PC;
		reg2_temp<=REG2;
		reg1_temp<=REG1;
		sign_temp<= SIGN_IN;
		rt_temp<=RT;
		rs_temp<=RS;
		rd_temp<=RD;
		ex_temp<=EX_S_IN;
		mem_temp<=MEM_S_IN;
		wb_temp<=WB_S_IN;
	end if;

end process;
		INSTRUCT_OUT<=inst_temp;
		pc_OUT<=pc_temp;
		REG2_OUT<=reg2_temp;
		REG1_OUT<= reg1_temp;
		 SIGN_OUT<=sign_temp;
		RT_OUT<= rt_temp;
		RS_OUT<=rs_temp;
		RD_OUT<= rd_temp;
		 EX_S_OUT<=ex_temp;
		MEM_S_OUT<=mem_temp;
		WB_S_OUT<=wb_temp;
		BRANCH_OUT<=branch_temp;
end Behavioral;


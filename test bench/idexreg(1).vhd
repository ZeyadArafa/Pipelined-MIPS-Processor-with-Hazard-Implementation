----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:52:59 12/20/2020 
-- Design Name: 
-- Module Name:    ID_EX_REG - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool vers_inions: 
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
          reg1_in : in  STD_LOGIC_VECTOR (31 downto 0);
           reg2_in: in  STD_LOGIC_VECTOR (31 downto 0);
           SIGN_IN : in  STD_LOGIC_VECTOR (31 downto 0);
           pc_in: in  STD_LOGIC_VECTOR (31 downto 0);
          rt_in : in  STD_LOGIC_VECTOR (4 downto 0);
           rs_in : in  STD_LOGIC_VECTOR (4 downto 0);
          rd_in : in  STD_LOGIC_VECTOR (4 downto 0);
           instruction : in  STD_LOGIC_VECTOR (5 downto 0);
           EX_IN : in  STD_LOGIC_VECTOR (3 downto 0);
           MEM_IN : in  STD_LOGIC_VECTOR (1 downto 0);
           WB_IN : in  STD_LOGIC_VECTOR (1 downto 0);
           BRANCH_OUT : out  STD_LOGIC;
          reg1_OUT : out  STD_LOGIC_VECTOR (31 downto 0);
          reg2_OUT : out  STD_LOGIC_VECTOR (31 downto 0);
           SIGN_OUT : out  STD_LOGIC_VECTOR (31 downto 0);
           PC_OUT : out  STD_LOGIC_VECTOR (31 downto 0);
          rt_OUT : out  STD_LOGIC_VECTOR (4 downto 0);
           rs_OUT : out  STD_LOGIC_VECTOR (4 downto 0);
         rd_OUT : out  STD_LOGIC_VECTOR (4 downto 0);
           instruction_OUT : out  STD_LOGIC_VECTOR (5 downto 0);
           EX_OUT : out  STD_LOGIC_VECTOR (3 downto 0);
           MEM_OUT : out  STD_LOGIC_VECTOR (1 downto 0);
           WB_OUT : out  STD_LOGIC_VECTOR (1 downto 0);
           CLK : in  STD_LOGIC);
end ID_EX_REG;

architecture Behavioral of ID_EX_REG is

signal branch_temp : STD_LOGIC:='0';
signal inst_temp :  STD_LOGIC_vector(5 downto 0):="000000";
signal pc_temp :  STD_LOGIC_vector(31 downto 0):=x"00000000";
signal reg2_temp :  STD_LOGIC_vector(31 downto 0):=x"00000000";
signal reg1_temp :  STD_LOGIC_vector(31 downto 0):=x"00000000";
signal sign_temp :   STD_LOGIC_vector(31 downto 0):=x"00000000";
signal rt_out_temp :    STD_LOGIC_vector(4 downto 0):="00000";
signal rs_out_temp :    STD_LOGIC_vector(4 downto 0):="00000";
signal rd_out_temp :   STD_LOGIC_vector(4 downto 0):="00000";
signal ex_temp:   STD_LOGIC_vector(3 downto 0):="0000";
signal mem_temp :   STD_LOGIC_vector(1 downto 0):="00";
signal wb_temp :   STD_LOGIC_vector(1 downto 0):="00";

begin

process (CLK) 
begin
if(CLK'event and CLK = '0')then
		branch_temp <=  BRANCH; 
		inst_temp<=instruction;
		pc_temp<=pc_in;
		reg2_temp<=reg2_in;
		reg1_temp<=reg1_in;
		sign_temp<= SIGN_IN;
		rt_out_temp<=rt_in;
		rs_out_temp<=rs_in;
		rd_out_temp<=rd_in;
		ex_temp<=EX_IN;
		mem_temp<=MEM_IN;
		wb_temp<=WB_IN;
	end if;

end process;
		instruction_OUT<=inst_temp;
		pc_OUT<=pc_temp;
		reg2_out<=reg2_temp;
		reg1_out<=reg1_temp;
		 SIGN_OUT<=sign_temp;
		RT_OUT<=rt_out_temp;
		rs_OUT<=rs_out_temp;
		RD_OUT<=rd_out_temp;
		 EX_OUT<=ex_temp;
		MEM_OUT<=mem_temp;
		WB_OUT<=wb_temp;
		BRANCH_OUT<=branch_temp;
end Behavioral;

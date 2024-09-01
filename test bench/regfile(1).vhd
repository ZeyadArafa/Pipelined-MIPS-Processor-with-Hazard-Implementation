----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:59:41 12/20/2020 
-- Design Name: 
-- Module Name:    REG_FILE - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity registerfile is
    Port ( read_address1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_address2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_address : in  STD_LOGIC_VECTOR (4 downto 0);
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           reg_write_en : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end registerfile;

architecture Behavioral of registerfile  is

type REG_ARRAY is array (0 to 31) of std_logic_vector(31 downto 0);
signal REGFILE : REG_ARRAY := (others => (others => '0')) ;

signal D1,D2 : std_logic_vector(31 downto 0) := x"00000000";

begin

process(CLK,read_address1,read_address2, write_address,write_data,reg_write_en)
begin


	if(reg_write_en='1' and write_address/="00000")then
		REGFILE(to_integer(unsigned(write_address))) <= write_data;
	end if;
	
end process;
process(CLK)
begin
if(rising_edge(CLK))then
	
	D2 <= REGFILE( to_integer(unsigned(read_address2)) );
end if;

end process;

data1<= D1;
data2<= D2;

end Behavioral;
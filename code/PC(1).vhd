library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC is
    Port ( PC_N : in  STD_LOGIC_VECTOR (31 downto 0); -- load add
           CLK : in  STD_LOGIC;
           PC_OUT : out  STD_LOGIC_VECTOR (31 downto 0);  -- fetched  add
			   FLUSH : in  STD_LOGIC );
end PC;

architecture Behavioral of PC is

signal TEMP : std_logic_vector(31 downto 0):=x"00000000";  
begin
PC_OUT<=TEMP;

process(CLK,PC_N)
begin
if (CLK='1' and CLK'event) then
if(FLUSH='1')then   -- if 0 prevent from update if hazard unit switched it 
TEMP<=PC_N;
else
TEMP <=TEMP;

end if;
end if;
end process;
end Behavioral;



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


--xpc mux
entity MUX_32 is
    Port ( input1 : in  STD_LOGIC_VECTOR (31 downto 0);
           input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           selector : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX_32;

architecture Behavioral of MUX_32 is

begin
output <= input1 WHEN selector ='0' else
         input2 ; 
			 
END Behavioral;
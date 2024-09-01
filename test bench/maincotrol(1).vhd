
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MAIN_CONTROL_UNIT is
    Port ( OPCODE : in  STD_LOGIC_VECTOR (5 downto 0);
           BRANCH : out  STD_LOGIC;
           MEMREAD : out  STD_LOGIC;
           MEMTOREG : out  STD_LOGIC;
           MEMWRITE : out  STD_LOGIC;
           ALUSRC : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
             RegDest : out  STD_LOGIC;
           JUMP : out  STD_LOGIC;
           ALUOP : out  STD_LOGIC_VECTOR (1 downto 0));
end MAIN_CONTROL_UNIT;

architecture Behavioral of MAIN_CONTROL_UNIT is

begin
process(OPCODE)
begin

if OPCODE="000000" then       --R/type INSTRUCT OPCODE=0
           JUMP    <='0' ;
            BRANCH   <='0' ;
          MEMREAD  <='0' ;
           MEMTOREG <='0' ;
            MEMWRITE <='0' ;
           ALUSRC  <='0' ;
           RegWrite <='1' ;
             RegDest  <='1' ;
           ALUOP   <="10";
			 

elsif OPCODE="100011" then     --Load  23 HEX
           JUMP     <='0'  ;
           BRANCH   <='0'  ;
           MEMREAD <='1'  ;
           MEMTOREG <='1'  ; 
            MEMWRITE <='0'  ;
           ALUSRC   <='1'  ;
           RegWrite <='1'  ;
             RegDest  <='0'  ;
           ALUOP    <="00" ;
			  
			


elsif OPCODE="101011" then     --Store  2b HEX
           JUMP     <='0'  ;
          BRANCH   <='0'  ; 
          MEMREAD <='0'  ;
           MEMWRITE <='1'  ;
            ALUSRC   <='1'  ;
           RegWrite <='0'  ;
          ALUOP   <="00" ;
			  
			 

elsif OPCODE="000100" then    --beq 4 HEX
           JUMP	<='0'  ;
          BRANCH   <='1'  ;
          MEMREAD <='0'  ;
            MEMWRITE <='0'  ;
           ALUSRC   <='0'  ;
           RegWrite <='0'  ;
           ALUOP    <="01" ;
			  
			 
   
elsif OPCODE="000010" then    --Jump  2 HEX
           JUMP    <='1'  ;
           BRANCH   <='0'  ;
           MEMREAD  <='0'  ;
           MEMWRITE <='0'  ;
           RegWrite <='0'  ;
           ALUOP    <="11" ;
			 


else
			  JUMP     <='0'  ;
          BRANCH   <='0'  ;
          MEMREAD  <='0'  ;
          MEMTOREG<='0'  ; 
            MEMWRITE <='0'  ;
            ALUSRC  <='0'  ;
          RegWrite <='0'  ;
            RegDest  <='0'  ;
          ALUOP  <="00" ;
			 
end if ;
end process ;
end Behavioral;




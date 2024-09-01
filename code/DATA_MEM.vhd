library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DATA_MEM is
    port (
           WriteSig    : in   STD_LOGIC;
           ReadSig     : in   STD_LOGIC;
           Clock       : in   STD_LOGIC;
	    Address     : in   STD_LOGIC_VECTOR (31 downto 0);
           DataInput   : in   STD_LOGIC_VECTOR (31 downto 0);       
          DataOutput  : out  STD_LOGIC_VECTOR (31 downto 0) );
end DATA_MEM;

architecture Behavioral of DATA_MEM is
    type RAM_16_x_32 is array (0 to 15) of STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal DM : RAM_16_x_32 := (
        x"00000000", -- assume starts at 0x10010000
        others => (others => '0')
    );
begin
    process (  Clock )
        variable addr : INTEGER;  -- Address variable for integer calculations
    begin
        if rising_edge(  Clock ) then
            if ( WriteSig  = '1') then
                addr := to_integer(unsigned(address)) - 268500992; -- Calculate address
                DM(addr / 4) <= DataInput; -- Perform write
            end if;

            if ( ReadSig  = '1') then
                addr := to_integer(unsigned(address)) - 268500992; -- Calculate address
               DataOutput <= DM(addr / 4); -- Perform read
            end if;
        end if;
    end process;
end Behavioral;


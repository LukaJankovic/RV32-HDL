----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/26/2022 11:36:49 AM
-- Design Name: 
-- Module Name: pmem - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions:   
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
use STD.TEXTIO.ALL;

entity pmem is

    Port ( clk : in std_logic; 

           PC    : in unsigned (31 downto 0);
           PCOUT : out unsigned (31 downto 0);

           OP   : in unsigned (2 downto 0);
           ADDR : in unsigned (31 downto 0);
           RES  : out unsigned (31 downto 0);

           WE    : in std_logic;
           WADDR : in unsigned (31 downto 0);
           WDATA : in unsigned (31 downto 0)
           );
           
end pmem;

architecture Behavioral of pmem is

    type pmem_t is array (0 to 1023) of bit_vector (7 downto 0); -- 1 KiB

    -- Source / Credit:
    -- https://docs.xilinx.com/r/en-US/ug901-vivado-synthesis/Initializing-Block-RAM-From-an-External-Data-File-VHDL
    impure function pmem_init (file_name : in string) return pmem_t is
        FILE bin_file : text is in file_name;
        variable bin_file_line : line;
        variable pmem : pmem_t;
    begin
        for i in pmem_t'range loop
            readline (bin_file, bin_file_line);
            read (bin_file_line, pmem (i));
        end loop;
        
        return pmem;
    end function;

    signal pmem_c : pmem_t := pmem_init ("test.mem");

    function read_consecutive ( signal pmem  : in pmem_t;
                                signal start : in unsigned (31 downto 0);
                                size         : in integer
                              ) return unsigned is variable res : unsigned (31 downto 0);
    
    variable top : integer := (size * 8) - 1;

    begin
        res (31 downto (size * 8)) := (others => '0');

        for i in 0 to size - 1 loop
            res (top - (i * 8) downto top - (i * 8) - 7) := unsigned (to_stdlogicvector (pmem (to_integer (start) + i)));
        end loop;

        return res;
    end read_consecutive;

    function read_consecutive_high ( signal pmem  : in pmem_t;
                                     signal start : in unsigned (31 downto 0);
                                     size         : in integer
                                   ) return unsigned is variable res : unsigned (31 downto 0);
    
    variable top : integer := 31 - (size * 8);

    begin
        for i in 0 to size - 1 loop
            res (31 - (i * 8) downto 31 - (i * 8) - 7) := unsigned (to_stdlogicvector (pmem (to_integer (start) + i)));
        end loop;

        res (top downto 0) := (others => '0');

        return res;
    end read_consecutive_high;

    function read_32 ( signal  pmem : in pmem_t;
                        signal addr : in unsigned (31 downto 0)
                     ) return unsigned is variable res : unsigned (31 downto 0);
    begin
        res := read_consecutive (pmem, addr, 4);
        return res;
    end read_32;

begin

    process (clk) begin
        if rising_edge (clk) then
            if (WE = '1') then
                for i in 0 to 3 loop
                    pmem_c (to_integer (WADDR) + i) <= to_bitvector (std_ulogic_vector (WDATA (i * 8 + 7 downto i * 8)));
                end loop;
            end if;
        end if;
    end process;

    PCOUT <= read_32 (pmem_c, PC);

    RES <=  read_consecutive (pmem_c, ADDR, 1) when (OP = "000") else
            read_consecutive (pmem_c, ADDR, 2) when (OP = "001") else
            read_consecutive (pmem_c, ADDR, 3) when (OP = "010") else

            read_consecutive_high (pmem_c, ADDR, 1) when (OP = "100") else
            read_consecutive_high (pmem_c, ADDR, 2) when (OP = "101") else

            (others => '0');

end Behavioral;

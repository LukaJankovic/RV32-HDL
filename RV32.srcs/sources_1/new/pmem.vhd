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

    type pmem_t is array (0 to 1023) of unsigned (7 downto 0); -- 1 KiB
    constant pmem_init : pmem_t :=
    (
        b"00000000",
        b"01110000",
        b"00000010",
        b"10010011",
        b"00000000",
        b"00010000",
        b"00000000",
        b"10010011",
        b"00000000",
        b"00000000",
        b"00000001",
        b"00010011",
        b"00000000",
        b"00000000",
        b"00000001",
        b"10010011",
        b"00000000",
        b"00010000",
        b"00000010",
        b"00010011",
        b"00000000",
        b"00100000",
        b"10000001",
        b"10110011",
        b"00000000",
        b"00010000",
        b"00000001",
        b"00110011",
        b"00000000",
        b"00110000",
        b"00000000",
        b"10110011",
        b"00000000",
        b"00010010",
        b"00000010",
        b"00010011",
        b"11111110",
        b"01010010",
        b"01001000",
        b"11100011",
        b"00000000",
        b"01010010",
        b"00000100",
        b"01100011",
        b"00000000",
        b"00010000",
        b"00000011",
        b"00010011",
        b"00000000",
        b"00010000",
        b"00000011",
        b"10010011",
    others => b"00000000"
    );

    signal pmem_c : pmem_t := pmem_init;

    function read_consecutive ( signal pmem  : in pmem_t;
                                signal start : in unsigned (31 downto 0);
                                size         : in integer
                              ) return unsigned is variable res : unsigned (31 downto 0);
    
    variable top : integer := (size * 8) - 1;

    begin
        res (31 downto (size * 8)) := (others => '0');

        for i in 0 to size - 1 loop
            res (top - (i * 8) downto top - (i * 8) - 7) := pmem (to_integer (start) + i);
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
            res (31 - (i * 8) downto 31 - (i * 8) - 7) := pmem (to_integer (start) + i);
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
                    pmem_c (to_integer (WADDR) + i) <= WDATA (i * 8 + 7 downto i * 8);
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

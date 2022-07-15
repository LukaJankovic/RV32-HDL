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

    Port ( PC : in unsigned (31 downto 0);
           OP : in unsigned (2 downto 0);
           ADDR : in unsigned (31 downto 0);
           DATA : out unsigned (31 downto 0);
           RES : out unsigned (31 downto 0)
           );
           
end pmem;

architecture Behavioral of pmem is

    type pmem_t is array (0 to 1023) of unsigned (7 downto 0); -- 1 KiB
    constant pmem_init : pmem_t :=
    (
        b"00000000",
        b"00010000",
        b"00000000",
        b"00010011",
        b"00000000",
        b"00010000",
        b"00000000",
        b"00010011",
        b"00000000",
        b"00010000",
        b"00000000",
        b"00010011",
        b"00000000",
        b"00010000",
        b"00000000",
        b"00010011",
        b"00000000",
        b"00010000",
        b"00000000",
        b"00010011",
        b"00000000",
        b"00000000",
        b"00000000",
        b"10000011",
        b"00000000",
        b"00010000",
        b"10000001",
        b"00010011",
        b"00000000",
        b"00100000",
        b"00100001",
        b"10000011",
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

    function read_32 ( signal  pmem : in pmem_t;
                        signal addr : in unsigned (31 downto 0)
                     ) return unsigned is variable res : unsigned (31 downto 0);
    begin
        res := read_consecutive (pmem, addr, 4);
        return res;
    end read_32;

begin

    DATA <= read_32 (pmem_c, PC);

    RES <=  read_consecutive (pmem_c, ADDR, 1) when (OP = "000") else
            read_consecutive (pmem_c, ADDR, 2) when (OP = "001") else
            read_consecutive (pmem_c, ADDR, 3) when (OP = "010") else
            (others => '0');

end Behavioral;

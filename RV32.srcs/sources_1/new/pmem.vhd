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

    Port ( addr : in unsigned (31 downto 0);
           data : out unsigned (31 downto 0)
           );
           
end pmem;

architecture Behavioral of pmem is

    type pmem_t is array (0 to 31) of unsigned (31 downto 0);
    constant pmem_init : pmem_t :=
    (
        b"000000000001_00000_000_00000_0010011",
        b"000000000001_00000_000_00000_0010011",
        b"000000000001_00000_000_00000_0010011",
        b"000000000001_00000_000_00000_0010011",
        b"000000000001_00000_000_00000_0010011",
        b"000000000001_00000_000_00000_0010011",
        b"000000000001_00000_000_00000_0010011",
        b"000000000001_00000_000_00000_0010011",
        b"000000000001_00000_000_00000_0010011",
        b"000000000001_00000_000_00000_0010011",
        b"000000000000_00000_010_00001_0010011",
        b"000001000000_00000_010_00010_0010011",
        b"111111111111_00000_100_00011_0010011",
        b"0100000_00010_00011_000_00100_0110011",
        others => x"00000000"
    );

    signal pmem_c : pmem_t := pmem_init;

begin

    data <= pmem_c (to_integer (addr));

end Behavioral;

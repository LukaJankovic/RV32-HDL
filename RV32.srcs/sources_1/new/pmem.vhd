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

    type pmem_t is array (0 to 31) of unsigned (7 downto 0); -- 32 bytes
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
        others => b"00000000"
    );

    signal pmem_c : pmem_t := pmem_init;

begin

    DATA <= pmem_c (to_integer (PC)) & pmem_c (to_integer (PC) + 1) & pmem_c (to_integer (PC) + 2) & pmem_c (to_integer (PC) + 3);

    RES <=  (31 downto 8 => '0') & pmem_c (to_integer (ADDR)) when (OP = "000") else
            (others => '0');

end Behavioral;

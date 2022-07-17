----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/16/2022 05:49:25 PM
-- Design Name: 
-- Module Name: comparator - Behavioral
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

entity comparator is

    Port ( OP : in unsigned (2 downto 0);
           C1 : in unsigned (31 downto 0);
           C2 : in unsigned (31 downto 0);
           CR : out std_logic
         );

end comparator;

architecture Behavioral of comparator is

begin

    CR <= '1' when (C1 = C2)                    and (OP = "000") else
          '1' when (C1 /= C2)                   and (OP = "001") else
          '1' when (signed (C1) < signed (C2))  and (OP = "100") else
          '1' when (signed (C1) > signed (C2))  and (OP = "101") else
          '1' when (C1 < C2)                    and (OP = "110") else
          '1' when (C1 > C2)                    and (OP = "111") else
          '0';

end Behavioral;

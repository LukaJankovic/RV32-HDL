----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/26/2022 01:18:33 PM
-- Design Name: 
-- Module Name: alu - Behavioral
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

entity alu is

    Port ( clk: in std_logic;
           OP : in unsigned (2 downto 0);
           A1 : in unsigned (31 downto 0);
           A2 : in unsigned (31 downto 0);
           AR : out unsigned (31 downto 0)
           );

end alu;

architecture Behavioral of alu is

begin

   -- process (clk) begin
   --     if rising_edge (clk) then
   --         case OP is
   --             when "000" =>
   --                 AR <= A1 + A2;
   --             when "010" =>
   --                 if A1 < A2 then
   --                     AR <= x"00000001";
   --                 else
   --                     AR <= x"00000000";
   --                 end if;
   --             when others =>
   --                 AR <= x"00000000";
   --         end case;
   --     end if;
   -- end process;
   
   AR <= A1 + A2     when (OP = "000") else
         x"00000001" when ((OP = "010") and (A1 < A2)) else
         x"00000000" when ((OP = "010") and (A1 > A2)) else
         (others => '0');

end Behavioral;

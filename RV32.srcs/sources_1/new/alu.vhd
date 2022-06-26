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
           OP : in unsigned (3 downto 0);
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
   --             when "0001" =>
   --                 AR <= A1;
   --             when others =>
   --                 AR <= x"00000000";
   --         end case;
   --     end if;
   -- end process;
   
   AR <= A1         when (OP = "0001") else
         A1 + A2    when (OP = "0010") else
         (others => '0');

end Behavioral;

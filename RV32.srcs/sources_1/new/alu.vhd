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
           ANEG : in std_logic;
           AR : out unsigned (31 downto 0)
           );

end alu;

architecture Behavioral of alu is

    function ar_shift_right ( signal A1 : in unsigned (31 downto 0);
                              signal A2 : in unsigned (31 downto 0)
                            )
                            
                            return unsigned is variable res : unsigned (31 downto 0);

            variable shamt : integer := to_integer (A2 (5 downto 0));
        begin
            res := (31 downto (31 - shamt) => A1 (31)) & A1 (30 downto shamt);
            return res;
    end ar_shift_right;

begin

    AR <= A1 + A2                                when (OP = "000") and ANEG = '0' else
          A1 - A2                                when (OP = "000") and ANEG = '1' else
   
          A1 sll to_integer (A2 (5 downto 0))    when (OP = "001") else
   
          x"00000001"                            when ((OP = "010") and (to_integer (A1) < to_integer (A2))) else
          x"00000000"                            when ((OP = "010") and (to_integer (A1) > to_integer (A2))) else

          x"00000001"                            when ((OP = "011") and (A1 < A2)) else
          x"00000000"                            when ((OP = "011") and (A1 > A2)) else

          A1 xor A2                              when (OP = "100") else
         
          A1 srl to_integer (A2 (5 downto 0))    when (OP = "101") and ANEG = '0' else
          ar_shift_right (A1, A2)                when (OP = "101") and ANEG = '1' else

          A1 or A2                               when (OP = "110") else

          A1 and A2                              when (OP = "111") else
         
          (others => '0');

end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/26/2022 11:21:35 AM
-- Design Name: 
-- Module Name: cpu - Behavioral
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

entity cpu is

    Port (clk : in std_logic);
    
end cpu;

architecture Behavioral of cpu is

    component pmem
        port (
            addr: in unsigned (31 downto 0);
            data: out unsigned (31 downto 0)
        );
    end component;
    
    component alu
        port (
            clk : in std_logic;
            OP : in unsigned (3 downto 0);
            A1 : in unsigned (31 downto 0);
            A2 : in unsigned (31 downto 0);
            AR : out unsigned (31 downto 0)
        );
    end component;

    signal IR1 : unsigned (31 downto 0);
    
    alias OP1 : unsigned (6 downto 0) is IR1 (6 downto 0);
    
    signal IR2 : unsigned (31 downto 0);
    
    alias OP2 : unsigned (6 downto 0) is IR2 (6 downto 0);
    alias RDu2 : unsigned (4 downto 0) is IR2 (11 downto 7); 
    alias IMMu2 : unsigned (19 downto 0) is IR2 (31 downto 12);
    
    signal PC2 : unsigned (31 downto 0);
    signal JMP : std_logic;
    
    signal IR3 : unsigned (31 downto 0);
    signal IR4 : unsigned (31 downto 0);
    
    signal IR5 : unsigned (31 downto 0);

    alias OP5 : unsigned (6 downto 0) is IR5 (6 downto 0);
    alias RDu5 : unsigned (4 downto 0) is IR5 (11 downto 7); 
        
    signal PC : unsigned (31 downto 0) := x"00000000";
    signal PM : unsigned (31 downto 0);
    
    type register_array is array (0 to 31) of unsigned (31 downto 0);
    signal GR : register_array := (others => x"00000000");
    
    -- ALU Signals
    signal AOP : unsigned (3 downto 0);
    signal A1 : unsigned (31 downto 0);
    signal A2 : unsigned (31 downto 0);
    signal AR : unsigned (31 downto 0);
    
    signal AR3 : unsigned (31 downto 0);
    signal AR4 : unsigned (31 downto 0);
    signal AR5 : unsigned (31 downto 0);
    
    constant OP_LUI : unsigned (6 downto 0) := "0110111";
    constant OP_AUIPC : unsigned (6 downto 0) := "0010111";
begin

    -- Instruction Fetch
    process (clk) begin
        if rising_edge(clk) then
            IR1 <= PM;
            if (JMP = '1') then
                PC <= PC2;
            else
                PC <= PC + 1;
            end if;
        end if;
    end process;
    
    -- Register Read
    process (clk) begin
        if rising_edge(clk) then
            IR2 <= IR1;
            case OP2 is
                when OP_LUI =>
                    AOP <= "0001";
                    A1 <= Immu2 & (31 downto Immu2'length => '0');
                    JMP <= '0';
                when OP_AUIPC =>
                    AOP <= "0010";
                    A1 <= Immu2 & (31 downto Immu2'length => '0');
                    A2 <= PC;
                    JMP <= '0';
                when others =>
                    JMP <= '0';
            end case;
        end if;
    end process;
    
    -- Execute
    process (clk) begin
        if rising_edge(clk) then
            IR3 <= IR2;
        end if;
    end process;
    
    -- Memory Access
    process (clk) begin
        if rising_edge(clk) then
            IR4 <= IR3;
            AR4 <= AR3;
        end if;
    end process;
    
    -- Write Back
    process (clk) begin
        if rising_edge(clk) then
            IR5 <= IR4;
            AR5 <= AR4;
            case OP5 is
                when OP_LUI =>
                    GR (to_integer(RDu5)) <= AR5;
                when OP_AUIPC =>
                    GR (to_integer(RDu5)) <= AR5;
                when others =>
                    JMP <= '0';
            end case;
        end if;
    end process;
    
    AR3 <= AR;
    
    -- Connections to other components
    U0 : pmem port map (addr=>PC, data=>PM);

    U1 : alu port map (clk=>clk, OP=>AOP, A1=>A1, A2=>A2, AR=>AR); 

end Behavioral;

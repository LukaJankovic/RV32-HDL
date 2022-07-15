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
            PC   : in unsigned (31 downto 0);
            OP   : in unsigned (2 downto 0);
            ADDR : in unsigned (31 downto 0);
            DATA : out unsigned (31 downto 0);
            RES  : out unsigned (31 downto 0)
        );
    end component;
    
    component alu
        port (
            clk  : in std_logic;
            ANEG : in std_logic;
            OP   : in unsigned (2 downto 0);
            A1   : in unsigned (31 downto 0);
            A2   : in unsigned (31 downto 0);
            AR   : out unsigned (31 downto 0)
        );
    end component;

    signal IR1 : unsigned (31 downto 0);
    
    alias OP1 : unsigned (6 downto 0) is IR1 (6 downto 0);
    
    signal IR2 : unsigned (31 downto 0);
    
    alias OP2 : unsigned (6 downto 0) is IR2 (6 downto 0);
    --alias RD2 : unsigned (4 downto 0) is IR2 (11 downto 7);
     
    alias IMMu2 : unsigned (19 downto 0) is IR2 (31 downto 12);
    
    alias IMMi2 : unsigned (11 downto 0) is IR2 (31 downto 20);
    alias RS1i2 : unsigned (4 downto 0) is IR2 (19 downto 15);
    alias FUNCT3i2 : unsigned (2 downto 0) is IR2 (14 downto 12);
    
    alias RS2r2 : unsigned (4 downto 0) is IR2 (24 downto 20);
    alias FUNCT7r2 : unsigned (6 downto 0) is IR2 (31 downto 25);
    
    signal PC2 : unsigned (31 downto 0);
    signal JMP : std_logic;
    
    signal IR3 : unsigned (31 downto 0);
    
    alias OP3 : unsigned (6 downto 0) is IR3 (6 downto 0);
    alias RD3 : unsigned (4 downto 0) is IR3 (11 downto 7); 
    
    alias IMMu3 : unsigned (19 downto 0) is IR3 (31 downto 12);

        
    signal PC : unsigned (31 downto 0) := x"00000000";
    signal PM : unsigned (31 downto 0);
    
    type register_array is array (0 to 31) of unsigned (31 downto 0);
    signal GR : register_array := (others => x"00000000");
    
    -- ALU Signals
    signal AOP  : unsigned (2 downto 0) := (others => '0');
    signal A1   : unsigned (31 downto 0) := (others => '0');
    signal A2   : unsigned (31 downto 0) := (others => '0');
    signal AR   : unsigned (31 downto 0) := (others => '0');
    signal ANEG : std_logic;

    -- Pmem Signals
    signal POP   : unsigned (2 downto 0) := (others => '0');
    signal PADDR : unsigned (31 downto 0) := (others => '0');
    signal PRES  : unsigned (31 downto 0) := (others => '0');
    
    constant OP_LUI     : unsigned (6 downto 0) := "0110111";
    constant OP_AUIPC   : unsigned (6 downto 0) := "0010111";
    constant OP_ADDI    : unsigned (6 downto 0) := "0010011";
    constant OP_ADD     : unsigned (6 downto 0) := "0110011";
    constant OP_LB      : unsigned (6 downto 0) := "0000011"; 

    impure function get_wb ( signal OP : in unsigned (6 downto 0)
                           ) return unsigned is variable res : unsigned (31 downto 0);

    begin
        case OP is
            when OP_LUI | OP_AUIPC | OP_ADDI | OP_ADD =>
                res := AR;
            when OP_LB =>
                res := PRES;
            when others =>
                res := (others => '0');
        end case;

        return res;
    end get_wb;

begin

    -- Instruction Fetch
    process (clk) begin
        if rising_edge(clk) then
            IR1 <= PM;
            if (JMP = '1') then
                PC <= PC2;
            else
                PC <= PC + 4;
                if PC = 28 then
                    PC <= (others => '0');
                end if;
            end if;
        end if;
    end process;
    
    -- Register Read
    process (clk) begin
        if rising_edge (clk) then
            AOP <= "000";
            IR2 <= IR1;
            ANEG <= '0';
            JMP <= '0';
            case OP2 is
                when OP_LUI =>
                    A1 <= IMMu2 & (31 downto IMMu3'length => '0');
                    A2 <= (others => '0');
                when OP_AUIPC =>
                    A1 <= IMMu2 & (31 downto IMMu2'length => '0');
                    A2 <= PC;
                when OP_ADDI =>
                    AOP <= FUNCT3i2;
                    
                    if (FUNCT3i2 = "101" and FUNCT7r2 = "0100000") then
                        ANEG <= '1';
                    end if;
                    
                    if (RD3 = RS1i2) then
                        A1 <= get_wb (OP3);
                    else
                        A1 <= GR (to_integer (RS1i2));
                    end if;
                    
                    A2 <= (31 downto IMMi2'length => '0') & IMMi2;
                when OP_ADD =>
                    AOP <= FUNCT3i2;
                    
                    if (FUNCT7r2 = "0100000") then
                        ANEG <= '1';
                    end if;
                    
                    if (RD3 = RS1i2) then
                        A1 <= get_wb (OP3);
                    else
                        A1 <= GR (to_integer (RS1i2));
                    end if;
                    
                    if (RD3 = RS2r2) then
                        A2 <= get_wb (OP3);
                    else
                        A2 <= GR (to_integer (RS2r2));
                    end if;
                when OP_LB =>
                    POP <= FUNCT3i2;
                    PADDR <= GR (to_integer (RS1i2)) + IMMi2;
                when others =>
                    A1 <= (others => '0');
                    A2 <= (others => '0');
                    ANEG <= '0';
                    JMP <= '0';
            end case;
        end if;
    end process;
    
    -- Write Back
    process (clk) begin
        if rising_edge (clk) then
            IR3 <= IR2;
            GR (to_integer (RD3)) <= get_wb (OP3);
        end if;
    end process;
    
    -- Connections to other components
    U0 : pmem port map (PC=>PC, DATA=>PM, OP=>POP, ADDR=>PADDR, RES=>PRES);

    U1 : alu port map (clk=>clk, OP=>AOP, A1=>A1, A2=>A2, AR=>AR, ANEG=>ANEG); 

end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/07/2020 02:09:08 PM
-- Design Name: 
-- Module Name: flipflop_td - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity flipflop_variable is
  Port (
    zone : in std_logic_vector(3 downto 0);
    clk : in std_logic;
    rst : in std_logic;
    start : in std_logic;
    i_data : in std_logic_vector(7 downto 0);
    out_ffd : out std_logic_vector(7 downto 0);
    o_zone : out std_logic_vector(2 downto 0)
   );
end flipflop_variable;

architecture Behavioral of flipflop_variable is
signal got_first_add: std_logic := '0';
begin process(clk,rst,start)
begin
    if rising_edge(clk) then
        if start = '0' or rst = '1' then
            out_ffd<= (others => '0');
        elsif zone(3) = '1' then
            if got_first_add = '0' then
                got_first_add <= '1';
            else
                o_zone <= "000";
                out_ffd <= i_data;
            end if;
        elsif zone(3) = '0' then
            out_ffd <= i_data;
            o_zone <= zone(2 downto 0);
        end if;
    end if;
end process;
end Behavioral;

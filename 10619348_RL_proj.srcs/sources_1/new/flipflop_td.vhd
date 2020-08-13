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

entity flipflop_td is
  Port (
    get : in std_logic;
    clk : in std_logic;
    rst : in std_logic;
    start : in std_logic;
    i_data : in std_logic_vector(7 downto 0);
    out_ffd : out std_logic_vector(7 downto 0)
   );
end flipflop_td;

architecture Behavioral of flipflop_td is

begin process(clk,rst)
begin
    if rising_edge(clk) then
        if start = '0' or rst = '1' then
            out_ffd<= (others => '0');
        elsif get = '1' then
            out_ffd <= '0' & i_data(6 downto 0);
        end if;
    end if;
end process;
end Behavioral;

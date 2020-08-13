----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/07/2020 08:40:14 PM
-- Design Name: 
-- Module Name: clock_controller - Behavioral
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

entity clock_controller is
  Port ( 
  clk : in std_logic;
  fsm_get : in std_logic;
  ctrl_cac : in std_logic;
  rst : in std_logic;
  compare_fsm : in std_logic;
  start : in std_logic;
  start_comparing : out std_logic;
  get : out std_logic;
  ctrl : out std_logic
  );
end clock_controller;

architecture Behavioral of clock_controller is
signal counter : std_logic ;
--type state_type is (SWait, SGo);
--signal next_state, current_state: state_type;
begin process(clk,rst,start)
begin
    if rising_edge(clk) then -- utilizzato per aspettare due cicli di clock prima del prossimo cambio di commando
                             -- se funziona correttamente, dovrebbe cancellare i commandi del primo ciclo di clock
        if rst = '1' or start = '0' then
            counter <= '0';
            start_comparing <= '0';
            ctrl <= '0';
            get <= '0';
        else
            ctrl <= counter and ctrl_cac ;
            start_comparing <= counter and compare_fsm;
            get <= counter and fsm_get ;
            counter <= not counter;
        end if;
    end if;

end process;

end Behavioral;

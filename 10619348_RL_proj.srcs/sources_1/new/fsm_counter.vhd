library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fsm_counter is
    Port ( 
--           got : in STD_LOGIC;
           controller : in STD_LOGIC; -- is 1 if we compared or are asking for more addresses
           clk : in STD_LOGIC;
           start : in STD_LOGIC;
           rst : in STD_LOGIC;
           
           zone : out STD_LOGIC_VECTOR (3 downto 0);
           get : out STD_LOGIC;
           get_variable : out std_logic;
           finished : out STD_LOGIC;
           start_comparing : out STD_LOGIC);
end fsm_counter;

architecture Behavioral of fsm_counter is
type state_type is (S0, S1, S2, S3, S4, S5, S6, S7, S8, SWaitOne, SWaitTwo, SFinished, SDefault);
signal next_state, current_state: state_type;
begin
    state_reg : process(clk,rst, start)
    begin
        if rst = '1' or start = '0' then
            current_state <= SDefault;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
end process;

    lambda : process(current_state, controller) 
    begin
        case current_state is
            when S0 =>
                if controller = '1' then
                    next_state <= S1;
                else next_state<= S0;
                end if;
            when S1 =>
                if controller = '1' then
                    next_state <= S2;
                else next_state<= S1;
                end if;
            when S2 =>
                if controller = '1' then
                    next_state <= S3;
                else next_state<= S2;
                end if;
            when S3 =>
                if controller = '1' then
                    next_state <= S4;
                else next_state<= S3;
                end if;
            when S4 =>
                if controller = '1' then
                    next_state <= S5;
                else next_state<= S4;
                end if;
            when S5 =>
                if controller = '1' then
                    next_state <= S6;
                else next_state<= S5;
                end if;
            when S6 =>
                if controller = '1' then
                    next_state <= S7;
                else next_state<= S6;
                end if;
            when S7 =>
                if controller = '1' then
                    next_state <= SWaitOne;
                else next_state<= S7;
                end if;
            when S8 =>
                if controller = '1' then
                    next_state <= S0;
                else next_state<= S8;
                end if;
            when SWaitOne =>
                if controller = '1' then
                    next_state <= SWaitTwo;
                else next_state<= SWaitOne;
                end if;
            when SWaitTwo =>
                if controller = '1' then
                    next_state <= SFinished;
                else next_state<= SWaitTwo;
                end if;
            when SFinished =>
                if controller = '1' then
                    next_state <= S0;
                else next_state<= SFinished;
                end if;
            when SDefault =>
                if controller = '1' then
                    next_state <= S8;
                else next_state<= SDefault;
                end if;
            
        end case;
    end process;
    
    output: process(current_state)
    begin
        case current_state is
            when S0 =>
                finished <= '0';
                get_variable <= '0';
                start_comparing <= '0';
                
                get <= '0';
                zone <= "0000";
            when S1 => 
                get <= '0';
--                start_comparing <= '0';
                finished <= '0';
                get_variable <= '1';
                start_comparing <= '1';
                zone <= "0001";
            when S2 => 
                get <= '0';
                finished <= '0';
                zone <= "0010";
                get_variable <= '1';
                start_comparing <= '1';
            when S3 => 
                get <= '0';
                finished <= '0';
                zone <= "0011";
                get_variable <= '1';
                start_comparing <= '1';
            when S4 => 
                get <= '0';
                finished <= '0';
                zone <= "0100";
                get_variable <= '1';
                start_comparing <= '1';
            when S5 => 
                get <= '0';
                finished <= '0';
                zone <= "0101";
                get_variable <= '1';
                start_comparing <= '1';
            when S6 => 
                get <= '0';
                finished <= '0';
                zone <= "0110";
                get_variable <= '1';
                start_comparing <= '1';
            when S7 => 
                get <= '0';
                finished <= '0';
                zone <= "0111";
                get_variable <= '1';
                start_comparing <= '1';
            when SWaitOne => 
                get <= '0';
                zone <= "1000";
                finished <= '0';
                get_variable <= '1';
                start_comparing <= '1';
            when SWaitTwo =>
                get <= '0';
                zone <= "1000";
                finished <= '0';
                get_variable <= '1';
                start_comparing <= '1';
            when SFinished =>
                get <= '0';
                zone <= "1001";
                finished <= '1';
                get_variable <= '0';
                start_comparing <= '0';
            when S8 =>
                get <= '1';
                zone <= "1000";
                finished <= '0';
                get_variable <= '0';
                start_comparing <= '0';
            when SDefault => -- 2 counts of clock, afterwards s8 asks to get
                get <= '0';
                finished <= '0';
                get_variable <= '0';
                start_comparing <= '0';
                zone <= "1000";
            end case;
            
    end process;

end Behavioral;

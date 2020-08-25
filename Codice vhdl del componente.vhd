library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity project_reti_logiche is
  Port ( 
      i_clk         : in  std_logic;
      i_start       : in  std_logic;
      i_rst         : in  std_logic;
      i_data        : in  std_logic_vector(7 downto 0);
      o_address     : out std_logic_vector(15 downto 0);
      o_done        : out std_logic;
      o_en          : out std_logic;
      o_we          : out std_logic;
      o_data        : out std_logic_vector (7 downto 0)
  );
end project_reti_logiche;




architecture structural of project_reti_logiche is
component flipflop_td
port(
    get : in std_logic;
    clk : in std_logic;
    rst : in std_logic;
    start : in std_logic;
    i_data : in std_logic_vector(7 downto 0);
    out_ffd : out std_logic_vector(7 downto 0)
);
end component;
component flipflop_variable
port(
    zone : in std_logic_vector(3 downto 0);
    clk : in std_logic;
    rst : in std_logic;
    start : in std_logic;
    i_data : in std_logic_vector(7 downto 0);
    out_ffd : out std_logic_vector(7 downto 0);
    o_zone : out std_logic_vector(2 downto 0)
);
end component;
component fsm_counter
port(
           controller : in STD_LOGIC;
           clk : in STD_LOGIC;
           start : in STD_LOGIC;
           rst : in STD_LOGIC;
           
           zone : out STD_LOGIC_VECTOR (3 downto 0);
           get_variable : out std_logic;
           get : out STD_LOGIC;
           finished : out STD_LOGIC;
           start_comparing : out STD_LOGIC
);
end component;
component compare_and_codify
port (
           clk : in STD_LOGIC;
           start : in STD_LOGIC;
           start_comparing : in std_logic;
           rst : in STD_LOGIC;
           get : in STD_LOGIC;
           finished : in STD_LOGIC;
           zone : in STD_LOGIC_VECTOR (3 downto 0);
           code_zone : in std_logic_vector (2 downto 0);
           fixed : in STD_LOGIC_VECTOR (7 downto 0);
           i_data : in STD_LOGIC_VECTOR (7 downto 0);
           
           ctrl : out STD_LOGIC;
           o_done : out STD_LOGIC;
           o_en : out STD_LOGIC;
           o_we : out STD_LOGIC;
           o_address : out STD_LOGIC_VECTOR (15 downto 0);
           o_data : out STD_LOGIC_VECTOR (7 downto 0)
);
end component;

component clock_controller is
  Port ( 
  clk : in std_logic;
  ctrl_cac : in std_logic;
  compare_fsm : in std_logic;
  rst : in std_logic;
  fsm_get : in std_logic;
  start : in std_logic;
  start_comparing : out std_logic;
  get : out std_logic;
  ctrl : out std_logic
  );
end component;


signal needed : std_logic;
signal got : std_logic;
signal controller : std_logic;
signal zone : std_logic_vector(3 downto 0);
signal fixed : std_logic_vector(7 downto 0); -- aka out_ffd
signal get : std_logic;
signal get_in_ffd : std_logic;
signal get_variable : std_logic;
signal start_comparing: std_logic;
signal got_variable : std_logic;
signal finished : std_logic;
signal compare_fsm: std_logic;
signal code_zone : std_logic_vector(2 downto 0);
signal to_compare: std_logic_vector(7 downto 0);
signal cac_controller : std_logic;

begin
arithmetic_function : compare_and_codify port map(
    clk => i_clk,
    start => i_start,
    code_zone => code_zone,
    start_comparing => start_comparing,
    rst => i_rst,
    get => get,
    finished => finished,
    i_data => to_compare,
    zone => zone,
    fixed => fixed,
    ctrl => cac_controller,
    o_done => o_done,
    o_en => o_en,
    o_we => o_we,
    o_address => o_address,
    o_data => o_data
);

fixed_memory : flipflop_td port map(
    get => get_in_ffd,
    clk => i_clk,
    rst => i_rst,
    start => i_start,
    i_data => i_data,
    out_ffd => fixed
);

variable_memory : flipflop_variable port map(
    zone => zone,
    clk => i_clk,
    rst => i_rst,
    start => i_start,
    i_data => i_data,
    o_zone => code_zone,
    out_ffd => to_compare
);

logic_controller : clock_controller port map(
        clk => i_clk,
        rst => i_rst,
        fsm_get => get,
        ctrl_cac => cac_controller,
        compare_fsm => compare_fsm,
        start => i_start,
        start_comparing => start_comparing,
        get => get_in_ffd,
        ctrl => controller -- useless
);


counter : fsm_counter  port map(
    controller => controller,
    clk => i_clk,
    start => i_start,
    rst => i_rst,
    zone => zone,
    get => get,
    finished => finished,
    start_comparing => compare_fsm
);

end structural;
-------------------------------------------------------------FSM COUNTER

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity fsm_counter is
    Port ( 
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
                finished <= '1';
                get_variable <= '0';
                start_comparing <= '0';
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



-------------------- fixed _ memory



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

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


---------------------------------VARIABLE MEMORY
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


------------------------------------------------------------COMPARE AND CODIFY

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity compare_and_codify is
    Port ( clk : in STD_LOGIC;
           start : in STD_LOGIC;
           start_comparing : in std_logic;
           rst : in STD_LOGIC;
           get : in STD_LOGIC;
           finished : in STD_LOGIC;
           zone : in STD_LOGIC_VECTOR (3 downto 0);
           code_zone : in std_logic_vector (2 downto 0);
           fixed : in STD_LOGIC_VECTOR (7 downto 0);
           i_data : in STD_LOGIC_VECTOR (7 downto 0);
           
           ctrl : out STD_LOGIC;
           o_done : out STD_LOGIC;
           o_en : out STD_LOGIC;
           o_we : out STD_LOGIC;
           o_address : out STD_LOGIC_VECTOR (15 downto 0);
           o_data : out STD_LOGIC_VECTOR (7 downto 0));
end compare_and_codify;
architecture Behavioral of compare_and_codify is

begin process(clk, start, start_comparing) --, rst, get, finished, zone, i_data, start_comparing)

variable difference : std_logic_vector(7 downto 0);
variable OHDifference : std_logic_vector ( 3 downto 0);
variable zone_in_2bits: std_logic_vector ( 2 downto 0);
begin
if rising_edge(clk) then
    if start = '0' or rst = '1' then
        ctrl <= '0';
        o_done <= '0';
        o_en <= '0';
        o_we <= '0';
        o_address <= (others => '0');
        o_data <= (others => '0');
    elsif start_comparing = '1' then
        --paragono fixed a i_address e lo assegno difference
        difference := std_logic_vector(unsigned(fixed) - unsigned (i_data));
                    if difference = "00000000" or difference = "00000001" or difference = "00000010" or difference = "00000011" then --se abbiamo trovato la differenza
                        case difference is
                            when "00000000" =>
                                    OHDifference := "0001";
                            when "00000001" =>
                                    OHDifference := "0010";
                            when "00000010" =>
                                    OHDifference := "0100";
                            when "00000011" =>
                                    OHDifference := "1000";
                            when others =>
                                    OHDifference := "0000";
                        end case;
                        zone_in_2bits := std_logic_vector(unsigned(code_zone) - 1);
                        o_data <= '1' & zone_in_2bits & OHDifference;
                        o_address <= "0000" & "0000" & "0000" & "1001";
                        o_we <= '1';
                        o_done <= '1';
                        o_en <= '1';
                        ctrl<= '0';
                     elsif finished = '1' then -- se abbiamo finito di cercare numeri allora scriviamo l'input invariato
                        o_data <= fixed;
                        o_address <= "0000" & "0000" & "0000" & "1001";
                        o_we <= '1';
                        o_done <= '1';
                        o_en <= '1';
                        ctrl<= '0';
                    else -- se differenza e' maggiore di 3 e abbiamo ancora indirizzi da cercare
                        ctrl <= '1';
                        o_data <= (others => '0');
                        o_address <= "0000" & "0000" & "0000" & zone;
                        o_we <= '0';
                        o_done <= '0';
                        o_en <= '1';         
                     end if; --difference if -- se possiamo paragonare
     elsif finished = '1' then -- se abbiamo finito di cercare numeri allora scriviamo l'input invariato
        o_data <= fixed;
        o_address <= "0000" & "0000" & "0000" & "1001";
        o_we <= '1';
        o_done <= '1';
        o_en <= '1';
        ctrl<= '0';
     else
            ctrl <= '1';
            o_data <= (others => '0'); 
            o_address <= "0000" & "0000" & "0000" & zone;
            o_we <= '0';
            o_done <= '0';
            o_en <= '1';
    end if; -- start if
end if; -- clk
end process;
end Behavioral;

------------------------------------------------------LOGIC_CONTROLLER


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

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

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/07/2020 03:29:34 PM
-- Design Name: 
-- Module Name: project_reti_logiche - Behavioral
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









----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/07/2020 03:07:37 PM
-- Design Name: 
-- Module Name: compare_and_codify - Behavioral
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

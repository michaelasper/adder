-------------------------------------------------------------------------------------
-- -- Create Date:      4/10/2018   
-- -- Module Name:      fulladder
-- -- Designer Name:    Michael Asper
-- --
-- ----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_tb
    end adder_tb;


architecture adder_tb_logic of adder_tb is
    component adder is
        port( x     : in    STD_LOGIC_VECTOR(7 downto 0);
              y     : in    STD_LOGIC_VECTOR(7 downto 0);
              cin   : in    STD_LOGIC;
              s     : out   STD_LOGIC_VECTOR(7 downto 0);
              cout  : out   STD_LOGIC
          );
     end component;
     signal A, B, S      : STD_LOGIC_VECTOR(7 downto 0);
     signal cin_s,cout_s : STD_LOGIC;
begin 
    SETUP: adder port map (A, B, cin_s, S, cout_s);
    process
    begin
        A       <= "10101010";
        B       <= "01010101";
        cin_s   <= '0';
        wait for 10 ns;
        
        A       <= "11001100";
        B       <= "11110000";
        cin_s   <= '1';
        wait for 10 ns;
        
        A       <= "11010111";
        B       <= "01011010";
        cin_s   <= '0';
        wait for 10 ns;
        
        A       <= "10110011";
        B       <= "11111111";
        cin_s   <= '1';
        wait for 10 ns;
    end process;
end adder_tb_logic;

----------------------------------------------------------------------------------
-- -- Create Date:      4/10/2018   
-- -- Module Name:      fulladder
-- -- Designer Name:    Michael Asper
-- --
-- ----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder is
    port( x     : in    STD_LOGIC_VECTOR(7 downto 0);
          y     : in    STD_LOGIC_VECTOR(7 downto 0);
          cin   : in    STD_LOGIC;
          s     : out   STD_LOGIC_VECTOR(7 downto 0);
          cout  : out   STD_LOGIC
      );
end adder;

architecture adder_logic of adder is
    component fulladder
        port(a, b, ci : in  STD_LOGIC;
             s, co    : out STD_LOGIC
        );
     end component;
     
     signal cv : STD_LOGIC_VECTOR(6 downto 0);
begin 
    part1: fulladder port map (x(0), y(0), cin,   s(0), cv(0));
    part2: for i in 1 to 6 generate
        part3: fulladder port map(x(i), y(i), cv(i-1), s(i), cv(i));
    part4: fulladder port map (x(7), y(7), cv(6), s(7), cout);
end adder_logic;

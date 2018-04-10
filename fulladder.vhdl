----------------------------------------------------------------------------------
-- -- Create Date:      4/10/2018   
-- -- Module Name:      fulladder
-- -- Designer Name:    Michael Asper
-- --
-- ----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fulladder is
    port(a, b, ci : in  STD_LOGIC;
         s, co    : out STD_LOGIC
     );
end fulladder;

architecture fulladder_logic of fulladder is
begin
    s   <=  a xor b xor ci;
    co  <= (a and b) xor (a and ci) xor (b and ci);
end architecture;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:40:48 02/05/2014 
-- Design Name: 
-- Module Name:    Decoder_behavioral - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decoder_behavioral is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC);
end Decoder_behavioral;

architecture Behavioral of Decoder_behavioral is

signal I0_NOT, I1_NOT : std_logic; 

begin

I0_NOT <= not I0;
I1_NOT <= not I1;

Y0 <= IO_NOT  and I1_NOT and EN;
Y1 <= I0 AND I1_NOT AND EN; 
Y2 <= I0_NOT AND I1 AND EN; 
Y3 <= I0 AND I1 AND EN; 


end Behavioral;


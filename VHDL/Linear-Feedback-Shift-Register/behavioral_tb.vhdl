library ieee;
use ieee.std_logic_1164.all;

entity lfsr_tb is
end lfsr_tb;

architecture tb of lfsr_tb is

   component sr is
     port(clk: in  std_ulogic;
       q0   : out std_logic;
	   q1   : out std_logic;
	   q2   : out std_logic;
	   q3   : out std_logic;
	   q4   : out std_logic;
	   q5   : out std_logic;
	   q6   : out std_logic;
	   q7   : out std_logic);
   end component;

   signal clk: std_ulogic;
   signal q0,q1,q2,q3,q4,q5,q6,q7: std_ulogic;

begin
   mapping: sr port map(clk, q0,q1,q2,q3,q4,q5,q6,q7);
   process
   begin
	 clk <= '1';
	 wait for 50 ns;
	 clk <= '0';
	 wait for 50 ns;

   end process;

end tb;
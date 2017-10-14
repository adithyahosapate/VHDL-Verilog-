library ieee;
use ieee.std_logic_1164.all;

entity sr is
     port(clk: in  std_logic;
       q0,q4,q5,q6,q7   : out std_logic;
	   q1   : out std_logic;
	   q2   : out std_logic;
	   q3   : out std_logic);

end sr;

architecture behav of sr is

begin
	
	process(clk)
	variable s : std_logic_vector(7 downto 0) :="11111111";
	variable d1 : std_logic;
	begin
		d1 := s(0) xor s(2) xor s(3) xor s(4) ;
		if(rising_edge (clk)) then
			
			s(0) := s(1);
			s(1) := s(2);
			s(2) := s(3);
			s(3) := s(4);
			s(4) := s(5);
			s(5) := s(6);
			s(6) := s(7);
			s(7) := d1;
		end if;
		q7 <= s(0);
		q6 <= s(1);
		q5 <= s(2);
		q4 <= s(3);
		q3 <= s(4);
		q2 <= s(5);
		q1 <= s(6);
		q0 <= s(7);
	end process;
end behav;
 

  

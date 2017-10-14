library ieee;
use ieee.std_logic_1164.all;

entity dff is
     port(d, clk: in  std_logic;
       q   : out std_logic);
end dff;

architecture behav of dff is
begin
	process
	begin
		wait until rising_edge(clk);
			q <= d;
	end process;
end behav;
  

  
library ieee;
use ieee.std_logic_1164.all;


entity shift_reg is
     port( d,clk: in  std_logic;
          seed : out std_logic;
       Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,Q_8: out std_logic);
end shift_reg;

architecture behav of shift_reg is

		signal q1,q2,q3,q4,q5,q6,q7,q8: std_logic;
		   component dff is
				 port(d, clk: in  std_logic;
				      q: out std_logic);
			     end component; 	
 
    begin
	    mapping1: dff port map(d=>d, clk=>clk, q=>q1);
		mapping2: dff port map(d=>q1, clk=>clk, q=>q2);
		mapping3: dff port map(d=>q2, clk=>clk, q=>q3);
		mapping4: dff port map(d=>q3, clk=>clk, q=>q4);
		mapping5: dff port map(d=>q4, clk=>clk, q=>q5);
    	mapping6: dff port map(d=>q5, clk=>clk, q=>q6);
    	mapping7: dff port map(d=>q6, clk=>clk, q=>q7);
	    mapping8: dff port map(d=>q7, clk=>clk, q=>q8);		
		Q_1<=q1;
		Q_2<=q2;
		Q_3<=q3;
		Q_4<=q4;
		Q_5<=q5;
		Q_6<=q6;
		Q_7<=q7;
		Q_8<=q8;
		seed<=Q4 xor Q5 XOR Q6 XOR Q8;
	end behav;















				 
				 
				 
				 
				 
				 
				 
				 
				 
				 
				 
				 
				 
				 
				 
				 
				 
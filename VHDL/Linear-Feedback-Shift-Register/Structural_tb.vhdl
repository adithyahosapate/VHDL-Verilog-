library ieee;
use ieee.std_logic_1164.all;

entity shr_tb is
end shr_tb;

architecture TB_ARCHITECTURE of shr_tb is

   component shift_reg is
     port(d, clk: in  std_logic;
	      seed : out std_logic;
          Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,Q_8: out std_logic);
   end component;

   signal d,seed,clk,Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,Q_8:std_logic;

	begin
	 mapping: shift_reg port map(d, clk,seed, Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,Q_8);
	 clk_GEN: process
	begin
	 clk <= '0';
	 wait for 5 ns;
	 
	 clk <= '1';
	 wait for 5 ns;
	end process;

	process
	 variable c :integer:=0;
	begin
		 if (c=0) then
			 d <= '1';
			 wait for 100 ns;
			 c:=1;
		 elsif (seed='0') then
			  d<='0';
			  wait for 1 ps;
		 elsif (seed='1') then
			 d<= '1';
			 wait for 1 ps;
		 end if;
	end process;

end TB_ARCHITECTURE;
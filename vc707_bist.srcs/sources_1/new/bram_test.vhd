library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_Std.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bram_test is
  Port (
    clk : in std_logic;
    data_in  : out std_logic_vector(31 downto 0);
    data_out  : in std_logic_vector(31 downto 0);
    enable : out std_logic;
    w_enable : out std_logic_vector(3 downto 0);
    address : out std_logic_vector(31 downto 0);
    leds : out std_logic_vector(7 downto 0) );
end bram_test;

architecture Behavioral of bram_test is
signal data_buff : std_logic_vector(31 downto 0) := x"00000000";
signal address_buff : std_logic_vector (31 downto 0) := x"c0000000" ;
signal countera : std_logic_vector(26 downto 0):= b"000000000000000000000000000"; 
signal incremented : integer := 0;

begin
process(clk)
begin 

if(rising_edge(clk)) then
            countera <= countera + b"1" ;
         
         
  
    
      
        
        if (incremented < 4000) then
            incremented <= incremented + 1 ;
                
                
                    
            if(address_buff < x"000fffff") then 
                address_buff <= address_buff + "1" ;
                data_buff <= data_buff + b"11";
            end if;
            
        else 
            incremented <= 0 ;
            address_buff <= x"00000000";
        end if;
    end if;

end process;

            address <= address_buff;
            data_in <= data_buff;
            enable <= '1';
            w_enable <= "1111";
            leds(7) <= '1';
            leds(6 downto 0) <= data_out(6 downto 0);

    
    
end Behavioral;
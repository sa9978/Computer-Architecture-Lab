--ROM_sevenSegment.vhd

-- created by   :   Meher Krishna Patel
-- date                 :   25-Dec-16

-- Functionality:
  -- seven-segment display format for Hexadecimal values (i.e. 0-F) are stored in ROM 

-- ports:
    -- addr             : input port for getting address
    -- data             : ouput data at location 'addr'
    -- addr_width : total number of elements to store (put exact number)
    -- addr_bits  : bits requires to store elements specified by addr_width
    -- data_width : number of bits in each elements
    
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM_sevenSegment is
    generic(
        addr_width : integer := 16; -- store 16 elements
        addr_bits  : integer := 4; -- required bits to store 16 elements
        data_width : integer := 7 -- each element has 7-bits
        );
port(
    addr : in std_logic_vector(addr_bits-1 downto 0);
    data : out std_logic_vector(data_width-1 downto 0)
);
end ROM_sevenSegment;

architecture arch of ROM_sevenSegment is

    type rom_type is array (0 to addr_width-1) of std_logic_vector(data_width-1 downto 0);
    
    signal sevenSegment_ROM : rom_type := (
                            "1000000", -- 0, active low i.e. 0:display & 1:no display
                            "1111001", -- 1
                            "0100100", -- 2
                            "0110000", -- 3
                            "0011001", -- 4
                            "0010010", -- 5
                            "0000010", -- 6
                            "1111000", -- 7
                            "0000000", -- 8
                            "0010000", -- 9
                            "0001000", -- a
                            "0000011", -- b
                            "1000110", -- c
                            "0100001", -- d
                            "0000110", -- e
                            "0001110"  -- f
        );
begin
    data <= sevenSegment_ROM(to_integer(unsigned(addr)));
end arch; 
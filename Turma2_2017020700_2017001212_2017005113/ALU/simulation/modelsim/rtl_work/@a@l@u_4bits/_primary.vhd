library verilog;
use verilog.vl_types.all;
entity ALU_4bits is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        Op              : in     vl_logic;
        S               : out    vl_logic_vector(3 downto 0);
        Cin             : in     vl_logic;
        Cout            : out    vl_logic
    );
end ALU_4bits;

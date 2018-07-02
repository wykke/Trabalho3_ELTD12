library verilog;
use verilog.vl_types.all;
entity ALU_8bits is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        Op              : in     vl_logic;
        S               : out    vl_logic_vector(7 downto 0);
        Cin             : in     vl_logic;
        Cout            : out    vl_logic
    );
end ALU_8bits;

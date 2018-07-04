library verilog;
use verilog.vl_types.all;
entity regA is
    port(
        entrada         : in     vl_logic_vector(7 downto 0);
        rstA            : in     vl_logic;
        EnA             : in     vl_logic;
        clk             : in     vl_logic;
        FimA            : out    vl_logic;
        saidaA          : out    vl_logic_vector(15 downto 0)
    );
end regA;

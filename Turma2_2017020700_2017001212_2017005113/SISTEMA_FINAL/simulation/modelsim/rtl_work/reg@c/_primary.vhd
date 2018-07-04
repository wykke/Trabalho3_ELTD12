library verilog;
use verilog.vl_types.all;
entity regC is
    port(
        entrada         : in     vl_logic_vector(15 downto 0);
        rstC            : in     vl_logic;
        EnC             : in     vl_logic;
        clk             : in     vl_logic;
        FimC            : out    vl_logic;
        saidaC          : out    vl_logic_vector(15 downto 0)
    );
end regC;

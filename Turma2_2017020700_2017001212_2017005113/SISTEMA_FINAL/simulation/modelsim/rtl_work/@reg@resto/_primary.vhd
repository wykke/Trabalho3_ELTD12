library verilog;
use verilog.vl_types.all;
entity RegResto is
    port(
        entrada         : in     vl_logic_vector(15 downto 0);
        EnResto         : in     vl_logic;
        clk             : in     vl_logic;
        FimResto        : out    vl_logic;
        saidaResto      : out    vl_logic_vector(15 downto 0)
    );
end RegResto;

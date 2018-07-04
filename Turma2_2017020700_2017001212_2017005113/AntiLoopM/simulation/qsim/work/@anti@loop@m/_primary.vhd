library verilog;
use verilog.vl_types.all;
entity AntiLoopM is
    port(
        entrada         : in     vl_logic_vector(15 downto 0);
        contador        : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        saidaALM        : out    vl_logic_vector(15 downto 0)
    );
end AntiLoopM;

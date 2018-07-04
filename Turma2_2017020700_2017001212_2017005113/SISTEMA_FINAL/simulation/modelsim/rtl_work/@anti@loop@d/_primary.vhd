library verilog;
use verilog.vl_types.all;
entity AntiLoopD is
    port(
        entrada         : in     vl_logic_vector(15 downto 0);
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        saidaALD        : out    vl_logic_vector(15 downto 0)
    );
end AntiLoopD;

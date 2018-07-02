library verilog;
use verilog.vl_types.all;
entity AntiLoopD is
    port(
        entrada         : in     vl_logic_vector(15 downto 0);
        clk             : in     vl_logic;
        saidaA          : out    vl_logic_vector(15 downto 0)
    );
end AntiLoopD;

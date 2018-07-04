library verilog;
use verilog.vl_types.all;
entity AntiLoopD_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        entrada         : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end AntiLoopD_vlg_sample_tst;

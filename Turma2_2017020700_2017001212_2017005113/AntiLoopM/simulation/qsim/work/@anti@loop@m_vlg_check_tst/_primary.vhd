library verilog;
use verilog.vl_types.all;
entity AntiLoopM_vlg_check_tst is
    port(
        saidaALM        : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end AntiLoopM_vlg_check_tst;

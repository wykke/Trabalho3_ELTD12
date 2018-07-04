library verilog;
use verilog.vl_types.all;
entity AntiLoopD_vlg_check_tst is
    port(
        saidaALD        : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end AntiLoopD_vlg_check_tst;

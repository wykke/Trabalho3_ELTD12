library verilog;
use verilog.vl_types.all;
entity RegResto_vlg_check_tst is
    port(
        FimResto        : in     vl_logic;
        saidaResto      : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end RegResto_vlg_check_tst;

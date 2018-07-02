library verilog;
use verilog.vl_types.all;
entity regC_vlg_check_tst is
    port(
        FimC            : in     vl_logic;
        saidaC          : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end regC_vlg_check_tst;

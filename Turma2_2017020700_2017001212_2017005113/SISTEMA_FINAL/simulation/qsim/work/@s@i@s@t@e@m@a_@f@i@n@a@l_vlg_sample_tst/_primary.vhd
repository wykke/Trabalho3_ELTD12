library verilog;
use verilog.vl_types.all;
entity SISTEMA_FINAL_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end SISTEMA_FINAL_vlg_sample_tst;

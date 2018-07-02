library verilog;
use verilog.vl_types.all;
entity regC_vlg_sample_tst is
    port(
        EnC             : in     vl_logic;
        clk             : in     vl_logic;
        entrada         : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end regC_vlg_sample_tst;

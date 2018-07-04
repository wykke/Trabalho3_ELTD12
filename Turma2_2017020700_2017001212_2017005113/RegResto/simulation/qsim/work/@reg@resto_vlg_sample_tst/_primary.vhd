library verilog;
use verilog.vl_types.all;
entity RegResto_vlg_sample_tst is
    port(
        EnResto         : in     vl_logic;
        clk             : in     vl_logic;
        entrada         : in     vl_logic_vector(15 downto 0);
        resetResto      : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end RegResto_vlg_sample_tst;

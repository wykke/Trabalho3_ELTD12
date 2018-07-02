library verilog;
use verilog.vl_types.all;
entity regA_vlg_sample_tst is
    port(
        EnA             : in     vl_logic;
        clk             : in     vl_logic;
        entrada         : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end regA_vlg_sample_tst;

library verilog;
use verilog.vl_types.all;
entity AntiLoop_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        contador        : in     vl_logic_vector(7 downto 0);
        entrada         : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end AntiLoop_vlg_sample_tst;

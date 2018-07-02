library verilog;
use verilog.vl_types.all;
entity ROM_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        Endereco        : in     vl_logic_vector(8 downto 0);
        sampler_tx      : out    vl_logic
    );
end ROM_vlg_sample_tst;

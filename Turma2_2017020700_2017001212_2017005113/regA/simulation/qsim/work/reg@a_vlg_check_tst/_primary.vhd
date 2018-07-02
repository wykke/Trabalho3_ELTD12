library verilog;
use verilog.vl_types.all;
entity regA_vlg_check_tst is
    port(
        FimA            : in     vl_logic;
        saidaA          : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end regA_vlg_check_tst;

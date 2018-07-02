library verilog;
use verilog.vl_types.all;
entity SISTEMA_FINAL_vlg_check_tst is
    port(
        saida           : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end SISTEMA_FINAL_vlg_check_tst;

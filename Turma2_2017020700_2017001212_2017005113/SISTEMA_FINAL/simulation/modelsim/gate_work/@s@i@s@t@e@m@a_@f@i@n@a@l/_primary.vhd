library verilog;
use verilog.vl_types.all;
entity SISTEMA_FINAL is
    port(
        clk             : in     vl_logic;
        saida           : out    vl_logic_vector(15 downto 0)
    );
end SISTEMA_FINAL;

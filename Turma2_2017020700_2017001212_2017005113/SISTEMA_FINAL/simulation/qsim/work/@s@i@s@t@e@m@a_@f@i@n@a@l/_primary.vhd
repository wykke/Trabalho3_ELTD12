library verilog;
use verilog.vl_types.all;
entity SISTEMA_FINAL is
    port(
        clk             : in     vl_logic;
        saida           : out    vl_logic_vector(15 downto 0);
        saidaResto      : out    vl_logic_vector(15 downto 0);
        contador        : out    vl_logic_vector(7 downto 0);
        SaidaAlu        : out    vl_logic_vector(15 downto 0);
        ffald           : out    vl_logic_vector(15 downto 0);
        FimB            : out    vl_logic
    );
end SISTEMA_FINAL;

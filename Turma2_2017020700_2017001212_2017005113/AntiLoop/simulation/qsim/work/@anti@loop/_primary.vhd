library verilog;
use verilog.vl_types.all;
entity AntiLoop is
    port(
        entrada         : in     vl_logic_vector(15 downto 0);
        contador        : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        saidaA          : out    vl_logic_vector(15 downto 0)
    );
end AntiLoop;

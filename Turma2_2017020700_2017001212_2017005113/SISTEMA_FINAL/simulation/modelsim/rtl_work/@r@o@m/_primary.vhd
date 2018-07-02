library verilog;
use verilog.vl_types.all;
entity ROM is
    port(
        CLK             : in     vl_logic;
        Endereco        : in     vl_logic_vector(8 downto 0);
        Dados           : out    vl_logic_vector(7 downto 0)
    );
end ROM;

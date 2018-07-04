library verilog;
use verilog.vl_types.all;
entity Controle is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        FimA            : in     vl_logic;
        FimB            : in     vl_logic;
        FimC            : in     vl_logic;
        FimResto        : in     vl_logic;
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        Quociente       : in     vl_logic_vector(15 downto 0);
        Endereco        : out    vl_logic_vector(8 downto 0);
        EnA             : out    vl_logic;
        EnB             : out    vl_logic;
        EnC             : out    vl_logic;
        EnResto         : out    vl_logic;
        Op              : out    vl_logic;
        SELM            : out    vl_logic;
        SELD            : out    vl_logic;
        contador        : out    vl_logic_vector(7 downto 0);
        menor           : out    vl_logic;
        resetResto      : out    vl_logic
    );
end Controle;

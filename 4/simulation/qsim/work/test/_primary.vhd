library verilog;
use verilog.vl_types.all;
entity test is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        C0              : in     vl_logic;
        S               : out    vl_logic_vector(3 downto 0);
        C4              : out    vl_logic
    );
end test;

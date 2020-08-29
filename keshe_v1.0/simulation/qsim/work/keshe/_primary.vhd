library verilog;
use verilog.vl_types.all;
entity keshe is
    port(
        clk             : in     vl_logic;
        r               : in     vl_logic;
        open_signal     : out    vl_logic;
        c_100           : out    vl_logic;
        close_signal    : out    vl_logic;
        arr             : in     vl_logic
    );
end keshe;

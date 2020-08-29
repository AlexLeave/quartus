library verilog;
use verilog.vl_types.all;
entity keshe_vlg_sample_tst is
    port(
        arr             : in     vl_logic;
        clk             : in     vl_logic;
        r               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end keshe_vlg_sample_tst;

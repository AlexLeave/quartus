library verilog;
use verilog.vl_types.all;
entity keshe_vlg_check_tst is
    port(
        c_100           : in     vl_logic;
        close_signal    : in     vl_logic;
        open_signal     : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end keshe_vlg_check_tst;

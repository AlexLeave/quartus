module keshe(clk, r, open_signal, c_100, close_signal, arr);

//-------------------------------------------------------------------------
//保持开门2s模块
input clk;
input r;
wire l = 1,p = 1, t = 1;
wire[3:0] d ;

wire[3:0] q1;
wire[3:0] q2;

input arr;//暂用于观测
wire c;
wire open_en = 1;
wire close_en;

output open_signal;//开门驱动信号
output c_100;//生成关门信号,暂时用于仿真观测
output close_signal;//关门信号

wait_2s u1_wait_2s(clk, r, l, p, t, d, q1, q2, c, c_100, arr);
open u2_open(clk, open_en, open_signal, r, arr);

close u3_close(clk, close_signal, open_signal, c_100, r);
//-------------------------------------------------------------------------

endmodule
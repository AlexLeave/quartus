/*
测试 inout 的项目
*/

module out_1(clk, p);
input clk;
inout p;

out_3 u1(clk, p);
out_2 u2(clk, p);

endmodule
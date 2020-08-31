/* 
产生电梯选择表格,每个楼层有 up 和 down 和 destination(乘客是否"下车"),电梯下一个站点到达前,根据电梯运行方向检查是否"停车"
这里只产生对应表格
*/
moudle floor_table(flr_b, flr_m, flr_t, st)
parameter n = 8;
input[1:0] flr_b;//1L
input[2:0] flr_m[n - 3:0];
input[1:0] flr_t;//8L
output[1:0] st[n];



endmodule
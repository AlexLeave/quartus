module wait_2s(clk, _r, l, p, t, d, q1, q2, c, c_100, arr, r_c);
/*
在电梯运行到达模块应该有把开门位开放位1
*/

//clk输入为50HZ
input r_c; //r_c为人按下关门按钮
input clk, arr;
input _r, l, p, t;
input[3:0] d;
output[3:0] q1;
output[3:0] q2;
inout c;
output c_100;
wire r;

assign r= arr & _r;//只有到站和用户不按开门按钮时候计数等待
//组合100进制
_74160 u1(clk, r, l, p, t, d, q1, c); 
_74160 u2(c, r, l, p, t, d, q2, c_100); 
//在100时高电平,即c_100下降沿为2s末

//把_r置零可以重新计数,_r为按钮输入,按下置零,可保持开门,同时下降沿作为开门信号


endmodule
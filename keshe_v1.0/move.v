/*
输入时钟信号,目标楼层 即可运行; 输出 arr 信号和当前位置
*/

module move(clk, now_floor, des_floor, arr)
output arr;
output[3:0] now_floor = 1;//当前楼层
input[3:0] des_floor;//目标楼层
input clk;

reg cnt <= 0;
parameter FtoFtime = 50;//运行速度

always@ (posedge clk)
begin
if(now_floor < des_floor)
	begin
		arr = 0;//电梯运行
		if(cnt < FtoFtime) cnt <= cnt + 1;//如果下一个楼层没到,接着运行
		else begin//到下一个楼层,改变当前楼层输出,重新计算到下一个楼层时间
				now_floor <= now_floor + 1;
				cnt <= 0;
				
			  end			  
			                                   
	
	end

else if(now_floor > des_floor)
	begin
		arr = 0;//电梯运行
		if(cnt < FtoFtime) cnt <= cnt + 1;//如果下一个楼层没到,接着运行
		else begin//到下一个楼层,改变当前楼层输出,重新计算到下一个楼层时间
				now_floor <= now_floor - 1;
				cnt <= 0;
				
			  end
	
	end

else arr = 1;

end

endmodule
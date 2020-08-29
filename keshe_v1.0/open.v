module open(clk, open_en, open_signal, r, arr);
input clk, open_en, arr;//clk 50HZ, open_en允许开门, r保持开门, arr为电梯到站电平 1到站
output open_signal;
input r;

parameter times = 5'b11001;

reg close_en;
reg open_signal;
//开门时间设定
reg[4:0] cnt = 5'b00000;


always@ (posedge clk)
begin
	if(r == 0 && open_en == 1 && arr == 1)
		open_signal = 1;

	else ;

	//这里编写open_signal,在开门时按下r可以输出一个开门信号,并且延迟关门脉冲c_100
	if(open_signal)
	begin
		if(cnt < times) cnt <= cnt+1;
		else begin//开门完成,驱动信号和开门变量 = 0
				cnt <= 0;
				open_signal = 0;
			  end
			
	end
	
	else ;


end

endmodule
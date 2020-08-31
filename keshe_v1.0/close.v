module close(clk, close_signal, open_signal, c_100, r);
/*
当 c_100下降沿代表可以关门
*/
input clk;
input open_signal, c_100, r;//open_signal开门驱动信号, c_100关门提示脉冲, r为人按开门按钮
output close_signal = 0;

reg close_en = 0;//close_en允许关门


parameter close_pre = 5'b00110;
parameter close_time = 5'b11111;//关门时间设定,cnt在5'b00110驱动,给一定反应时间,避免事故
reg[4:0] cnt = 5'b00000;
reg close_signal = 0;
reg[1:0] s = 2'b00;
parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b11;


always@ (posedge clk)
begin
case(s)
s0:if(c_100 == 1 && close_en == 1) s = s1;
	else s = s0;
	
s1:if(c_100 == 0)
		begin//关门
			if(cnt < close_pre) cnt <= cnt+1;
			else begin
					s = s2;
					close_signal = 1;
					end
		end

s2:if(open_signal) begin
							s = s0;
							cnt <= 0;
							close_signal = 0;
						 end
	else if(cnt < close_time) cnt <= cnt+1;
	else begin
				cnt <= 0;
				close_signal = 0;
				s = s0;
		  end

default: ;
endcase
  
end

always@ (posedge open_signal, negedge close_signal)
if(open_signal) close_en = 1;
else close_en = 0;


endmodule
/*
显示楼层模块

*/

module show_led(now_floor, LED)
input[3:0] now_floor;
output[3:0] LED = now_floor;//暂时跟踪输入

always@ (now_floor)
begin
case(now_floor)
default: LED = now_floor;

endcase

end 


endmodule
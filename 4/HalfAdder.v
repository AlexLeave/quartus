module HalfAdder (A0, B0, S0, C0);
input A0;
input B0;
output S0;
output C0;
assign S0 = A0 ^ B0;
assign C0 = A0 & B0;
endmodule

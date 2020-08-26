module FullAdder(Ai, Bi, Ci_1, Si, Ci);
input Ai, Bi, Ci_1;
output Si, Ci;
wire s1; wire c1; wire c2;
HalfAdder u1(Ai, Bi, s1, c1);
HalfAdder u2(.A0(Ci_1), .B0(s1), .S0(Si), .C0(c2));
or u3(Ci, c1, c2);
endmodule
module test(A, B, C0, S, C4);
input [3:0] A;
input [3:0] B;
input C0;
output [3:0] S;
output C4;
wire [3:1] C;
FullAdder u1(.Ai(A[0]),.Bi(B[0]),.Ci_1(C0),.Si(S[0]),.Ci(C[1]));
FullAdder u2(.Ai(A[1]),.Bi(B[1]),.Ci_1(C[1]),.Si(S[1]),.Ci(C[2]));
FullAdder u3(.Ai(A[2]),.Bi(B[2]),.Ci_1(C[2]),.Si(S[2]),.Ci(C[3]));
FullAdder u4(.Ai(A[3]),.Bi(B[3]),.Ci_1(C[3]),.Si(S[3]),.Ci(C4));
endmodule



module test(nBI_nRBO, nRBI, nLT, D, C, B, A, na, nb, nc, nd, ne, nf, ng);
inout nBI_nRBO;
input nRBI;
input nLT;
input D, C, B, A;
output na, nb, nc, nd, ne, nf, ng;
reg [6:0] out7;
wire na, nb, nc, nd, ne, nf, ng;
wire nBI_nRBO;

always @(nBI_nRBO, nRBI, nLT, D, C, B, A)
if (!nBI_nRBO) 
	out7 = 7'b1111_111;
else begin
	if(!nLT) out7 = 7'b0000_000;
	else 
		case({D, C, B, A})
  
		4'b0000:begin
		if(!nRBI) out7 = 7'b1111_111;
		else out7 = 7'b0000_001; 
					end
	
		4'b0001: out7 = 7'b1001_111;
  
		4'b0010: out7 = 7'b0010_010;
  
		4'b0011: out7 = 7'b0000_110;
  
		4'b0100: out7 = 7'b1001_100;
  
		4'b0101: out7 = 7'b0100_100;
  
		4'b0110: out7 = 7'b1100_000;
  
		4'b0111: out7 = 7'b0001_111;
  
		4'b1000: out7 = 7'b0000_000;
  
		4'b1001: out7 = 7'b0001_100;
  
		4'b1010: out7 = 7'b1110_010;
  
		4'b1011: out7 = 7'b1100_110;
  
		4'b1100: out7 = 7'b1011_100;
  
		4'b1101: out7 = 7'b0110_100;
  
		4'b1110: out7 = 7'b1110_000;
  
		4'b1111: out7 = 7'b1111_111;
      
		endcase
  end

assign nBI_nRBO = (!nRBI&&({D, C, B, A}==4'b0000))? 1'b0: 1'b1;
assign {na, nb, nc, nd, ne, nf, ng} = out7;


endmodule
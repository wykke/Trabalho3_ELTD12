module ALU(A,B,Op,S);

	input [15:0] A, B;
	input Op;
	output [15:0] S;
	
	reg Cin = 1'b0;
	wire w1,w2;
	
	ALU_8bits alu1(A[7:0],B[7:0],Op,S[7:0],Cin,w1);
	ALU_8bits alu2(A[15:8],B[15:8],Op,S[15:8],w1,w2);

endmodule

module ALU_8bits(A,B,Op,S,Cin,Cout);

	input [7:0] A, B;
	input Op, Cin;
	output reg [7:0] S;
	output reg Cout;
	
	reg [8:0] c;
	
	always @(A,B,Op,Cin)
	begin
		if(Op)
			c <= A+B+Cin;
		else
			c <= A-B-Cin;
		S <= c[7:0];
		Cout <= c[8];
	end

endmodule

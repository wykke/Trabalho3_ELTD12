module ALU(A,B,Op,S);

	input [15:0] A, B;
	input Op;
	output [15:0] S;
	
	reg Cin = 1'b0;
	wire w1,w2,w3,w4;
	
	ALU_4bits alu1(A[3:0],B[3:0],Op,S[3:0],Cin,w1);
	ALU_4bits alu2(A[7:4],B[7:4],Op,S[7:4],w1,w2);
	ALU_4bits alu3(A[11:8],B[11:8],Op,S[11:8],w2,w3);
	ALU_4bits alu4(A[15:12],B[15:12],Op,S[15:12],w3,w4);

endmodule

module ALU_4bits(A,B,Op,S,Cin,Cout);

	input [3:0] A, B;
	input Op, Cin;
	output reg [3:0] S;
	output reg Cout;
	
	reg [4:0] c;
	
	always @(A,B,Op,Cin)
	begin
		if(Op)
			c <= A+B+Cin;
		else
			c <= A-B-Cin;
		S <= c[3:0];
		Cout <= c[4];
	end

endmodule

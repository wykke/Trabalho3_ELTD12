module AntiLoopD(entrada, clk, saidaA);

	input clk;
	input [15:0] entrada;	 
	output reg [15:0] saidaA;

always @(posedge clk)
		saidaA <= entrada; 

endmodule

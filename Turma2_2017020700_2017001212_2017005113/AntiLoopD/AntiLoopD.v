module AntiLoopD(entrada, clk, saidaALD);

	input clk;
	input [15:0] entrada;	 
	output reg [15:0] saidaALD;

always @(posedge clk)
		saidaALD <= entrada;

endmodule

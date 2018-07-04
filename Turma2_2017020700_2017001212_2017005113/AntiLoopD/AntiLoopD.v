module AntiLoopD(entrada, enable, clk, saidaALD);

	input clk, enable;
	input [15:0] entrada;	 
	output reg [15:0] saidaALD;

always @(posedge clk)
	if(enable)
		saidaALD <= entrada;

endmodule

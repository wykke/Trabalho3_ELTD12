module AntiLoopD(entrada, reset, clk, saidaALD);

	input clk, reset;
	input [15:0] entrada;	 
	output reg [15:0] saidaALD;

always @(posedge clk)
		if(reset)begin
			saidaALD <= 16'b0;
		end else
			saidaALD <= entrada;

endmodule

module RegResto(entrada, EnResto, clk, FimResto, saidaResto);

	input clk, EnResto;
	input [15:0] entrada;	 
	output reg FimResto;
	output reg [15:0] saidaResto;

always @(posedge clk)
	begin
			FimResto<=1'b0;
			if (EnResto == 1'b1) begin
				saidaResto <= entrada; 
				FimResto <= 1'b1;
			end
	end
endmodule

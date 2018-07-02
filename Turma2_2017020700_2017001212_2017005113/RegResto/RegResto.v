module RegResto(entrada, EnResto, clk, resetResto, FimResto, saidaResto);

	input clk, EnResto, resetResto;
	input [15:0] entrada;	 
	output reg FimResto;
	output reg [15:0] saidaResto;

always @(posedge clk) begin
	if(resetResto)
		saidaResto<=16'b0;
		else
			FimResto<=1'b0;
			if (EnResto == 1'b1) begin
				saidaResto <= entrada; 
				FimResto <= 1'b1;
			end
end
endmodule

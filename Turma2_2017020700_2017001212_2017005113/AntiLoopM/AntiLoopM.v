module AntiLoopM(entrada, contador, clk, saidaALM);

	input clk;
	input [15:0] entrada;
	input [7:0] contador;	 
	output reg [15:0] saidaALM;

always @(posedge clk)
	begin
		if(contador != 8'b0) begin
				saidaALM <= entrada; 
		end else
			saidaALM <= 16'b0;
	end
endmodule

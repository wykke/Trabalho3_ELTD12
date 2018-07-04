module AntiLoopM(entrada, reset, contador, clk, saidaALM);

	input clk, reset;
	input [15:0] entrada;
	input [7:0] contador;	 
	output reg [15:0] saidaALM;

always @(posedge clk)
	begin
		if(reset)begin
			saidaALM <= 16'b0;
		end else
			if(contador != 8'b0) begin
				saidaALM <= entrada; 
			end else
				saidaALM <= 16'b0;
	end
endmodule

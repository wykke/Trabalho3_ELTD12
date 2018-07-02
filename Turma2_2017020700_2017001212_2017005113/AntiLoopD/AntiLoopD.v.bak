module AntiLoop(entrada, contador, clk, saidaA);

	input clk;
	input [15:0] entrada;
	input [7:0] contador;	 
	output reg [15:0] saidaA;

always @(posedge clk)
	begin
		if(contador != 8'b0) begin
				saidaA <= entrada; 
		end else
			saidaA <= 16'b0;
	end
endmodule

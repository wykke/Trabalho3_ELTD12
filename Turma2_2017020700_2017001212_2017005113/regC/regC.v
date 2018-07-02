module regC(entrada, EnC, clk, FimC, saidaC);

	input clk, EnC;
	input [15:0] entrada;	 
	output reg FimC;
	output reg [15:0] saidaC;

always @(posedge clk)
	begin
			FimC<=1'b0;
			if (EnC == 1'b1) begin
				saidaC <= entrada; 
				FimC <= 1'b1;
			end
	end
endmodule

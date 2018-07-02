module regA(entrada, EnA, clk, FimA, saidaA);

	input clk, EnA;
	input [7:0] entrada;	 
	output reg FimA;
	output reg [15:0] saidaA;

always @(posedge clk)
	begin
			FimA<=1'b0;
			if (EnA == 1'b1) begin
				saidaA <= {8'd0,entrada}; 
				FimA <= 1'b1;
			end
	end
endmodule

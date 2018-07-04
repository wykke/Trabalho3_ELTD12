module regA(entrada, rstA, EnA, clk, FimA, saidaA);

	input clk, EnA, rstA;
	input [7:0] entrada;	 
	output reg FimA;
	output reg [15:0] saidaA;

always @(posedge clk)
	begin
			if (rstA==1'b1) begin
				saidaA<=1'b0;
				FimA<=1'b0;
			end else
					if (EnA == 1'b1) 
						begin
							saidaA <= {8'd0,entrada}; 
							FimA <= 1'b1;
						end 
					else
						FimA<=1'b0;
	end
endmodule

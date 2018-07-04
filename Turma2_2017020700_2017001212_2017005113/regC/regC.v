module regC(entrada, rstC, EnC, clk, FimC, saidaC);

	input clk, EnC, rstC;
	input [15:0] entrada;	 
	output reg FimC;
	output reg [15:0] saidaC;

always @(posedge clk)
	begin
			if (rstC==1'b1) begin
				saidaC<=1'b0;
				FimC<=1'b0;
			end else
				if (EnC == 1'b1) 
					begin
						saidaC <= entrada; 
						FimC <= 1'b1;
					end 
				else
				FimC<=1'b0;
	end
endmodule

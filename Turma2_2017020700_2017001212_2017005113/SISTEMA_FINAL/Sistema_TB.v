`timescale 1 ps/ 1 ps
module Sistema_TB ;
	
	reg clk;
	wire [15:0] saida;
	
	SISTEMA_FINAL S0 (
	.clk 		(clk),
	.saida	(saida)
	);
	
	//integer repeticoes;
	
	initial begin
		clk = 0;		
	end	

	always 		#2000 	clk = ~clk;
		
	initial begin
		$dumpfile ("sistema.vcd");
		$dumpvars;
	end
	
	initial begin
		$display("\t\ttime,\tclk,\tSaida");
		$monitor("%d, \t%b, \t%d", $time, clk, saida); 
	end
	
	initial
		#1000000 $stop;
		
endmodule
	

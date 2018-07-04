`timescale 100 ps/ 1 ps
module Sistema_TB ;
	
	reg clk, reset;
	wire [15:0] saida, saidaResto;
	
	SISTEMA_FINAL S0 (
	.clk 		(clk),
	.reset	(reset),
	.saida	(saida),
	.saidaResto (saidaResto)
	);
	
	//integer repeticoes;
	
	initial begin
		clk = 0;
		reset = 0;
		#10 reset = 1;
		#50 reset = 0;
	end	

	always 		#2 	clk = ~clk;
		
	initial begin
		$dumpfile ("sistema.vcd");
		$dumpvars;
	end
	
	initial begin
		$display("\t\ttime, \tCLK, \tReset \tSaida, \tResto");
		$monitor("%d, \t%b, \t%b, \t%d, \t%d", $time, clk, reset, saida, saidaResto); 
	end
	
	initial
		#1000 $stop;
		
endmodule
	

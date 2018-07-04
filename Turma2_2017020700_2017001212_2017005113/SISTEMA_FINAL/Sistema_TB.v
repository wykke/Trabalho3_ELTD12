`timescale 100 ps/ 1 ps
module Sistema_TB ;
	
	reg clk;
	wire [15:0] saida, saidaResto;
	
	SISTEMA_FINAL S0 (
	.clk 		(clk),
	.saida	(saida),
	.saidaResto (saidaResto) 
	);
	
	
	initial begin
		clk = 0;
	end	

	always 		#2 	clk = ~clk;
		
	initial begin
		$dumpfile ("sistema.vcd");
		$dumpvars;
	end
	
	initial begin
		$display("\t\ttime\t\tCLK\tSaida\tResto");
		$monitor("%d, \t%b, \t%d, \t%d", $time, clk, saida, saidaResto); 
	end
	
	initial
		#1000 $stop;
		
endmodule
	

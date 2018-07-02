`timescale 1ns/100ps 
module Sistema_TB ;
	
	reg [15:0] A,B;
	reg Op;
	wire [15:0] S;
	
	ALU S0 (
	.A (A),
	.B (B),
	.Op (Op),
	.S (S)
	);
	
	//integer repeticoes;
	
	initial begin
		A=8'd10;
		B=8'd12;
		Op=1'b1;
	end	
	
	always #10 begin A=8'd10; B=8'd12; Op=1'b1; end
		
	initial begin
		$dumpfile ("sistema.vcd");
		$dumpvars;
	end
	
	initial begin
		$display("%d",S);
		$monitor("%d",S); 
	end
	
	initial
		#1000 $stop;
		
endmodule
	

module SISTEMA_FINAL(clk, saida);
input clk;
output [15:0] saida;

wire FimA, FimB, FimC, EnA, EnB, EnC, Op, SEL, clk;
wire [7:0] DadosRom, contador;
wire [8:0] Endereco;
wire [15:0] SaidaAlu, saida, ffal, A, B;
reg [15:0] SaidaMux, resultado;

// Componente
Controle controle(clk, FimA, FimB, FimC, B, Endereco, EnA, EnB, EnC, Op, SEL, contador);
ALU alu(A, SaidaMux, Op, SaidaAlu);
ROM rom(clk, Endereco, DadosRom);

regA rega(DadosRom, EnA, clk, FimA, A); // regA
regA regb(DadosRom, EnB, clk, FimB, B); // regB
regC regc(resultado, EnC, clk, FimC, saida); // regC

// necessario para nao causar um loop infinito na multiplicacao
AntiLoop antiloop (SaidaAlu, contador, clk, ffal);

// multiplexador
always @(A, B, SEL)
	if(SEL) begin
		SaidaMux<=ffal;
		resultado<=ffal;
	end else begin
		SaidaMux<=B;
		resultado<=SaidaAlu;
		end


endmodule

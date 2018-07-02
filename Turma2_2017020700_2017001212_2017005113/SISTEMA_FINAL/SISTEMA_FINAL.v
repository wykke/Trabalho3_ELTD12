module SISTEMA_FINAL(clk, saida, saidaResto);
input clk;
output [15:0] saida, saidaResto;

wire clk, FimA, FimB, FimC, FimResto, EnA, EnB, EnC, EnResto, Op, SELM, SELD, menor, resetResto;
wire [7:0] DadosRom, contador;
wire [8:0] Endereco;
wire [15:0] SaidaAlu, saida, ffal, ffald, A, B;
reg [15:0] SaidaMuxM, SaidaMuxD, SaidaMuxMenor, resultado;

// Componentes
Controle controle(clk, FimA, FimB, FimC, FimResto, A, B, SaidaAlu, Endereco, EnA, EnB, EnC, EnResto, Op, SELM, SELD, contador, menor, resetResto);
ALU alu(SaidaMuxD, SaidaMuxM, Op, SaidaAlu);
ROM rom(clk, Endereco, DadosRom);

// Registradores
regA rega(DadosRom, EnA, clk, FimA, A); // regA
regA regb(DadosRom, EnB, clk, FimB, B); // regB
regC regc(resultado, EnC, clk, FimC, saida); // regC

// Registradores Anti-Loops infinitos criados na multiplicação e divisão
AntiLoopD antiloopd (SaidaAlu, clk, ffald);
AntiLoopM antiloopm (SaidaAlu, contador, clk, ffal);

// Resto da divisão, mostra 0 quando não for uma divisão
RegResto regResto(SaidaMuxMenor, EnResto, clk, resetResto, FimResto, saidaResto);

// Multiplexador da saida
always @(contador, ffal, SaidaAlu, SELD, SELM)
	if(SELD)
		resultado<=contador;
	else if(SELM)
			resultado<=ffal;
		else
			resultado<=SaidaAlu;

// Multiplexador da divisão
always @(A, ffald, SELD)
	if(SELD)
		SaidaMuxD<=ffald;
	else
		SaidaMuxD<=A;

// Multiplexador da multiplicação	
always @(B, ffal, SELM)
	if(SELM)
		SaidaMuxM<=ffal;
	else
		SaidaMuxM<=B;

// Multiplexador usado para divisões em que A<B
always @(A, menor)
	if(menor)
		SaidaMuxMenor<=A;
	else 
		SaidaMuxMenor<=SaidaAlu;

endmodule

module SISTEMA_FINAL(clk, saida, saidaResto, contador, SaidaAlu, ffald, FimB);
input clk;
output [15:0] saida, saidaResto, SaidaAlu, ffald;
output [7:0] contador;
output FimB;

wire FimA, FimB, FimC, EnA, EnB, EnC, Op, SELM, clk, FimResto, EnResto, menor;
wire [7:0] DadosRom, contador;
wire [8:0] Endereco;
wire [15:0] SaidaAlu, saida, ffal, ffald, A, B;
reg [15:0] SaidaMuxM, SaidaMuxD, resultado;
reg [7:0] SaidaMuxMenor;

// Componente
Controle controle(clk, FimA, FimB, FimC, FimResto, A, B, SaidaAlu, Endereco, EnA, EnB, EnC, EnResto, Op, SELM, SELD, contador, menor);
ALU alu(SaidaMuxD, SaidaMuxM, Op, SaidaAlu);
ROM rom(clk, Endereco, DadosRom);

//registradores
regA rega(DadosRom, EnA, clk, FimA, A); // regA
regA regb(DadosRom, EnB, clk, FimB, B); // regB
regC regc(resultado, EnC, clk, FimC, saida); // regC

// necessarios para a divisao
RegResto regResto(SaidaMuxMenor, EnResto, clk, FimResto, saidaResto);
AntiLoopD antiloopd (SaidaAlu, clk, ffald);

// necessario para nao causar um loop infinito na multiplicacao
AntiLoop antiloop (SaidaAlu, contador, clk, ffal);

// multiplexadores
always @(SaidaAlu, ffal, contador, SELM, SELD)
	if(SELD)
		resultado<=contador;
	else if(SELM)
			resultado<=ffal;
		else
			resultado<=SaidaAlu;

always @(A, ffald, SELD)
	if(SELD) begin
		SaidaMuxD<=ffald;
	end else begin
		SaidaMuxD<=A;
	end

always @(B, ffal, SELM)
	if(SELM) begin
		SaidaMuxM<=ffal;
	end else begin
		SaidaMuxM<=B;
	end
	
always @(A, menor)
	if(menor)
		SaidaMuxMenor<=A;
	else 
		SaidaMuxMenor<=SaidaAlu;

endmodule

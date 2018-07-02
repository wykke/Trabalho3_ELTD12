module Controle(clk, FimA, FimB, FimC, FimResto, A, B, Quociente, Endereco, EnA, EnB, EnC, EnResto, Op, SELM, SELD, contador, menor, resetResto);
input FimA, FimB, FimC, FimResto, clk;
input [15:0] A, B, Quociente;
output reg EnA, EnB, EnC, EnResto, Op, SELM, SELD, menor, resetResto;
output reg [7:0] contador;
output reg [8:0] Endereco;

reg multp, DIV;
reg [2:0] state, next_state;
localparam s1=3'd0, s2=3'd1, s3=3'd2, s4=3'd3;

//estados da maquina de estado
always @(*)
	case(state)
		s1: next_state<=s2;
		s2: next_state<=s3;
		s3: next_state<=s4;
		default: next_state<=s1;
	endcase

// tarefas de cada estado, adicionado clock para facilitar a implementação e não gastar portas logicas
// negedge para alternar com os registradores que são posedge
always @(negedge clk) begin

	// fazer assim que ler o registrador A
	if(FimA) begin
		case(state)
			s1: Endereco<=9'd0;
			s2: Endereco<=9'd2;
			s3: Endereco<=9'd4;
			default: Endereco<=9'd6;
		endcase
		EnA<=1'b0;
		EnB<=1'b1;
	end else
	
	// fazer assim que ler o registrador B, ou enquanto estiver multiplicando (somando x vezes)
	if(FimB || multp) begin
	   // caso não seja multiplicao
		if((SELM==1'b0)&&(DIV==1'b0)) begin
			resetResto<=1'b1;
			EnB<=1'b0;
			EnC<=1'b1;
		end else begin
		
			// caso seja multiplicacao
			if(SELM==1'b1) begin
						// primeira vez somando
				if(multp==1'b0) begin 
						// caso esteja multiplicando por zero
					if(B!=1'b0) begin contador<=B; multp<=1'b1; EnB<=1'b0; end
				
					/* 	Entre o begin/end do ultimo if, pode ser adcionado:
							if(B<1'b0) Op<=1'b0;
							Para o caso da ROM seja de numeros signeds, dessa forma ele fará a conta corretamente
							para o caso de A = (positivo ou negativo) e B = negativo.
							Mas nesse projeto a ROM nao pode ser de numeros signed, porque suas 
							palavras são de 8 bits e ela possui o numero 255, o qual signed é o -1 */
						
					else begin EnB<=1'b0; EnC<=1'b1; end
				end
					// contando
					else begin
						contador <= contador - 8'b1;
						// termino da contagem, ir para proxima parte
					if(contador<8'd2) begin
						multp<=1'b0;
						resetResto<=1'b1;
						EnB<=1'b0;
						EnC<=1'b1;
					end
				end
			end // fim if(SELM==1'b1), fim da multiplicaçao
			
			// caso seja divisao
			else begin
				// vendo se A = 0, ou A < B
				if((A==8'b0)||(A<B)) begin
					contador<=8'd0;
					menor<=1'b1;
					SELD<=1'b1;
					multp<=1'b0;
					EnB<=1'b0;
					EnResto<=1'b1;
				end else
				
				// primeira vez subtraindo
				if(multp==1'b0) begin 
					// caso esteja dividindo por zero
					if((B!=1'b0)&&(Quociente>B)) begin contador<=8'd2; multp<=1'b1; EnB<=1'b0; end				
					else begin
						EnB<=1'b0; EnResto<=1'b1; contador<=8'd1;
						if(B==0) contador<=8'd0;
					end
				end
					// contando
					else begin
						SELD<=1'b1;
						// se ainda pode dividir
						if(Quociente>=B)
							contador <= contador + 8'b1;
						// se nao pode mais
						else begin
							multp<=1'b0;
							EnB<=1'b0;
							EnResto<=1'b1;
						end
				end
			end // fim da divisao
		end
	end else
	
	// fazer assim que terminar de fazer a divisão
	if(FimResto) begin
		EnResto<=1'b0;
		EnC<=1'b1;
		SELD<=1'b1;
	end else
	
	// fazer assim que terminar de ler o valor final
	if(FimC) begin
	
		/* Operações:
				Soma: 				Op<=1'b1; SELM<=1'b0; DIV<=1'b0;
				Subtração: 			Op<=1'b0; SELM<=1'b0; DIV<=1'b0;
				Multiplicação: 	Op<=1'b1; SELM<=1'b1; DIV<=1'b0;
				Divisão: 			Op<=1'b0; SELM<=1'b0; DIV<=1'b1;
		*/
		
		case(state)
			s1: begin Op<=1'b1; SELM<=1'b0; DIV<=1'b0; Endereco<=9'd1; end // soma
			s2: begin Op<=1'b0; SELM<=1'b0; DIV<=1'b0; Endereco<=9'd3; end // subtração
			s3: begin Op<=1'b1; SELM<=1'b1; DIV<=1'b0; Endereco<=9'd5; end // multiplicacao
			default: begin Op<=1'b0; SELM<=1'b0; DIV<=1'b1; Endereco<=9'd7; end //divisao
		endcase
		
		// variaveis de inicio de ciclo
		contador<=8'd0;
		resetResto<=1'b0;
		EnA<=1'b1;
		EnC<=1'b0;
		SELD<=1'b0;
		menor<=1'b0;
		// ir para proximo estado
		state<=next_state;
		
	end else begin
		// fazer ao iniciar o controle, necessario apenas caso aconteca algum bug de hardware
		state<=s1;
		EnC<=1'b1;
		multp<=1'b0;
		SELD<=1'b0;
		menor<=1'b0;
	end
end

endmodule

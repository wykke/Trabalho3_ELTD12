module ROM (CLK, Endereco, Dados);

input CLK;
input [8:0] Endereco;
output reg [7:0] Dados;

reg [9:0] indice;
reg [7:0] temp[0:511];

initial begin
	//Numero de turma = 2
	//Numero da equipe = 1
	temp[10'd0] <= 8'd2; 	// (2*1)
	temp[10'd1] <= 8'd6;		// (2*1)*3
	temp[10'd2] <= 8'd7;		// (2*1)+5
	temp[10'd3] <= 8'd2;		// (2*1)
	temp[10'd4] <= 8'd2;		// (2*1)
	temp[10'd5] <= 8'd0; 	// (2*1)-5 --- escolhido numero 0, por conta dessa ROM ser unsigned, bom para testar
	temp[10'd6] <= 8'd255;	// 255
	temp[10'd7] <= 8'd3;		// (2+1)
	temp[10'd8] <= 8'd255; 	// 255
	temp[10'd9] <= 8'd1;		// 1
	
	indice = 9'd10;
	while(indice < 10'd512) begin
		temp[indice] = 8'hFF;
		indice = indice + 9'd1;
	end
end

always @(posedge CLK) begin
	Dados <= temp[Endereco];
end

endmodule

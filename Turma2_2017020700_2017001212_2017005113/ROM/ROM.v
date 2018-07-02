module ROM (CLK, Endereco, Dados);

input CLK; //ahdssd
input [8:0] Endereco;
output reg [7:0] Dados;

reg [9:0] indice;
reg [7:0] temp[0:511];

initial begin
	/*
	temp[10'd0] <= 8'd50;
	temp[10'd1] <= 8'd43;
	temp[10'd2] <= 8'd33;
	temp[10'd3] <= 8'd25;
	temp[10'd4] <= 8'd15;
	temp[10'd5] <= 8'd50;
	temp[10'd6] <= 8'd255;
	temp[10'd7] <= 8'd50;
	*/
	temp[10'd0] <= 8'd10;
	temp[10'd1] <= 8'd2;
	temp[10'd2] <= 8'd7;
	temp[10'd3] <= 8'd12;
	temp[10'd4] <= 8'd25;
	temp[10'd5] <= 8'd31;
	temp[10'd6] <= 8'd47;
	temp[10'd7] <= 8'd3;
	
	indice = 9'd8;
	while(indice < 10'd512) begin
		temp[indice] = 8'hFF;
		indice = indice + 9'd1;
	end
end

always @(posedge CLK) begin
	Dados <= temp[Endereco];
end

endmodule

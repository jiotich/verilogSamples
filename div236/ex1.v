`include "divisions.v"

module sim();
	reg [3:0] inp;
	wire [2:0] divis;
	ex1 Teste(.in(inp),.divs(divis));
	initial begin
		$monitor("%b => By2:%b By3:%b By6:%b", inp, divis[2],divis[1],divis[0]);
		inp = 4'b0000;
		#1;inp = 4'b0001;
		#1;inp = 4'b0010;
		#1;inp = 4'b0011;
		#1;inp = 4'b0100;
		#1;inp = 4'b0101;
		#1;inp = 4'b0110;
		#1;inp = 4'b0111;
		#1;inp = 4'b1000;
		#1;inp = 4'b1001;
		#1;inp = 4'b1010;
		#1;inp = 4'b1011;
	end
endmodule
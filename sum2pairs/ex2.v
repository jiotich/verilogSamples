`include "sumtwo.v"

module sim();
	reg [1:0] firt;
	reg [1:0] sect;
	wire [2:0] result;
	
	sumbi Teste (.ft(firt),.st(sect),.res(result));
	initial begin;
		$monitor("%b + %b = %b", firt, sect, result);
		firt = 2'b11;
		sect = 2'b11;
		
		#1;firt = 2'b11;
		sect = 2'b10;
		
		#1;firt = 2'b11;
		sect = 2'b01;
		
		#1;firt = 2'b11;
		sect = 2'b00;
		
		#1;firt = 2'b10;
		sect = 2'b11;
		
		#1;firt = 2'b10;
		sect = 2'b10;
		
		#1;firt = 2'b10;
		sect = 2'b01;
		
		#1;firt = 2'b10;
		sect = 2'b00;
		
		
		#1;firt = 2'b01;
		sect = 2'b11;
		
		#1;firt = 2'b01;
		sect = 2'b10;
		
		#1;firt = 2'b01;
		sect = 2'b01;
		
		#1;firt = 2'b01;
		sect = 2'b00;
		
		#1;firt = 2'b00;
		sect = 2'b11;
		
		#1;firt = 2'b00;
		sect = 2'b10;
		
		#1;firt = 2'b00;
		sect = 2'b01;
		
		#1;firt = 2'b00;
		sect = 2'b00;
		
	end
endmodule	
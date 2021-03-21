module ex1(in,divs);
	input wire [3:0] in;
	output wire [2:0] divs;
	
	assign divs[2] = (~in[3] & ~in[2] & ~in[1] & ~in[0]) | ~in[0];
	assign divs[1] = (~in[3] & ~in[2] & ~in[1] & ~in[0]) | (in[0] & ~in[2] & (in[3] ^ in[1])) | (~in[3] & in[2] & in[1] & ~in[0]);
	assign divs[0] = divs[2] & divs[1];

endmodule
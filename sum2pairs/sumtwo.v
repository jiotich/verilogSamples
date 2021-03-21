module sumbi(ft,st,res);
	input wire [1:0] ft;
	input wire [1:0] st;
	output wire [2:0] res;
	
	assign res[2] = (ft[1] & ft[0] & st[1] & st[0]) 
			| ((ft[1] & ft[0] & st[1] & ~st[0]) | (ft[1] & ~ft[0] & st[1] & st[0]))
			| ((ft[1] & ft[0] & ~st[1] & st[0]) | (ft[1] & ~ft[0] & st[1] & ~st[0]) | (~ft[1] & ft[0] & st[1] & st[0]));
	
	assign res[1] = (ft[1] & ft[0] & st[1] & st[0]) 
			| ((ft[1] & ft[0] & ~st[1] & ~st[0]) | (ft[1] & ~ft[0] & ~st[1] & st[0]) | (~ft[1] & ft[0] & st[1] & ~st[0]) | (~ft[1] & ~ft[0] & st[1] & st[0]))
			| ((ft[1] & ~ft[0] & ~st[1] & ~st[0]) | (~ft[1] & ft[0] & ~st[1] & st[0]) | (~ft[1] & ~ft[0] & st[1] & ~st[0]));

	assign res[0] = ((ft[1] & ft[0] & ~st[1] & ~st[0]) | (ft[1] & ~ft[0] & ~st[1] & st[0]) | (~ft[1] & ft[0] & st[1] & ~st[0]) | (~ft[1] & ~ft[0] & st[1] & st[0]))
			| ((ft[1] & ~ft[0] & ~st[1] & ~st[0]) | (~ft[1] & ft[0] & ~st[1] & st[0]) | (~ft[1] & ~ft[0] & st[1] & ~st[0]))
			| ((ft[1] & ft[0] & st[1] & ~st[0]) | (ft[1] & ~ft[0] & st[1] & st[0]))
			| ((~ft[1] & ft[0] & ~st[1] & ~st[0]) | (~ft[1] & ~ft[0] & ~st[1] & st[0]));
endmodule

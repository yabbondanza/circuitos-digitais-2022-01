module Register(clock, reset, d, q);
	
	parameter N = 4;
	
	input clock, reset;
	input [N-1:0] d;
	output reg [N-1:0] q;
	
	always @ (posedge clock or posedge reset)
	begin
		if(reset == 1)
			q <= {N{1'b0}};
		else
			q <= d;
	end
	
endmodule 
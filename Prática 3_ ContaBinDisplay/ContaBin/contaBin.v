module contaBin (d, q);

	input	[7:0] d;
	output	[3:0] q;
	
	integer num_bits;
	
	always @ (d)
	begin: block
		integer i;
		
		num_bits = 0;
		for (i = 0; i < 8; i = i + 1)
		begin
			if (d[i] == 1)
				num_bits = num_bits + 1;
		end

	end
	
	assign q = num_bits;

endmodule
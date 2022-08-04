module contabindisplay (flex_sw, a, b, c, d, e, f, g);
	input [7:0] flex_sw;
	output a, b, c, d, e, f, g;
	wire [3:0] ponte;
	contaBin (flex_sw, ponte);
	display7segmentos (ponte, a, b, c, d, e, f, g);
endmodule
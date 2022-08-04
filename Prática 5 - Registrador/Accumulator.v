module Accumulator(clock, reset, data, ALUCtrl, result );
	parameter N = 4;
	
	input  clock, reset;
	input  [N-1:0] data;
	input  [3:0] ALUCtrl;
	output [N-1:0] result;
	wire   [N-1:0] rega_output, regb_output, rega_input;

	Register A(clock, reset, rega_input, rega_output);
	Register B(clock, reset, data, regb_output);
	ALU AL(rega_output, regb_output, ALUCtrl, rega_input);
	
	assign result = rega_output;
	
endmodule

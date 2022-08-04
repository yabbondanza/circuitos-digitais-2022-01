module ALU(a, b, ALUCtrl, result);
	
	parameter N = 4;
	
	parameter	ALUnot	=	4'b0000, // result = ~A;
				ALUand	=	4'b0001, // result = A & B;
				ALUor	=	4'b0010, // result = A | B; 
				ALUxor	=	4'b0011, // result = A ^ B;
				ALUadd	=	4'b0100, // result = A + B;
				ALUsub	=	4'b0101, // result = A - B; 
				ALUlt	=	4'b0110, // result = A < B;
				ALUlte	=	4'b0111, // result = A <= B; 
				ALUgt	=	4'b1000, // result = A > B;
				ALUgte	=	4'b1001, // result = A >= B;
				ALUe	=	4'b1010, // result = A == B;
				ALUne	=	4'b1011; // result = A != B;
				
	input [N-1:0] a, b;
	input [3:0] ALUCtrl;
	output reg [N-1:0] result;
	
	always @ *
	begin
		case(ALUCtrl)
			ALUnot:	result = ~a;
			ALUand:	result = a & b;
			ALUor:	result = a | b; 
			ALUxor:	result = a ^ b;
			ALUadd:	result = a + b;
			ALUsub:	result = a - b; 
			ALUlt:	result = a < b;
			ALUlte:	result = a <= b; 
			ALUgt:	result = a > b;
			ALUgte:	result = a >= b;
			ALUe:	result = a == b;
			ALUne:	result = a != b;
			default: result = {N{1'b0}};
		endcase
	end
	
endmodule 
module somador_paralelo (A, B, S, Cin, Cout);
	input    [3:0] A, B;
	output   [3:] S;
	input    Cin;
	output   Cout;
	wire     C0, C1, C2;
	
	somador_completo	S0 (A[0], B[0], S[0], Cin, C0);
	somador_completo	S1 (A[1], B[1], S[1], C0, C1);
	somador_completo	S2 (A[2], B[2], S[2], C1, C2);
	somador_completo	S3 (A[3], B[3], S[3], C2, Cout);
	
endmodule
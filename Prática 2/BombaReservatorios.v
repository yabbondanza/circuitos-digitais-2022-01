/*	Nome: Yasmim Laurentino
	Matrícula: 202020458
*/

module BombaReservatorios(L1, L2, L3, L4, X);
output X;
input L1, L2, L3, L4;

assign X= ~L2&~L3&~L4 | ~L1&~L2&~L4 | ~L1&~L2&~L3 | ~L1&~L3&~L4;

endmodule 
//carry lookahead adder
module FA_four_look(A, B, S, Cout);
input [3:0] A,B;
wire Cin;
output [3:0] S;
output Cout;

assign Cin= 1'b0;

wire p0, p1,p2,p3;
wire g0, g1,g2,g3;
wire cin1, cin2, cin3;

assign p0 = A[0]^B[0];
assign p1 = A[1]^B[1];
assign p2 = A[2]^B[2];
assign p3 = A[3]^B[3];

assign g0 = A[0]&B[0];
assign g1 = A[1]&B[1];
assign g2 = A[2]&B[2];
assign g3 = A[3]&B[3];

assign cin1 = g0|(p0&Cin);
assign cin2 = g1|(p1&cin1);
assign cin3 = g2|(p2&cin2);
assign Cout = g3|(p3&cin3);

FA FA0(.A(A[0]), .B(B[0]), .Cin(Cin), .S(S[0]));
FA FA1(.A(A[1]), .B(B[1]), .Cin(cin1), .S(S[1]));
FA FA2(.A(A[2]), .B(B[2]), .Cin(cin2), .S(S[2]));
FA FA3(.A(A[3]), .B(B[3]), .Cin(cin3), .S(S[3]));


endmodule

module FA(A, B, Cin, S);
input A,B,Cin;
output S;
assign S = (A^B)^Cin;
endmodule

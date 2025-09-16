module FA(A, B, Cin, S, Cout);
input A,B,Cin;
output S,Cout;
assign S = (A^B)^Cin;
assign Cout = (B&Cin)|(A&Cin)|(A&B);
endmodule
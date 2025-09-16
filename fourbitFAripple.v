//ripple adder

module FA_four_ripple(A, B,S_f);
input [3:0] A, B;
output [4:0] S_f;

wire Cin;
wire cout0, cout1,cout2,cout3;
wire [3:0] S;

assign Cin = 1'b0;

FA FA0(.A(A[0]), .B(B[0]), .Cin(Cin), .S(S[0]), .Cout(cout0));

FA FA1(.A(A[1]), .B(B[1]), .Cin(cout0), .S(S[1]), .Cout(cout1));
FA FA2(.A(A[2]), .B(B[2]), .Cin(cout1), .S(S[2]), .Cout(cout2));
FA FA3(.A(A[3]), .B(B[3]), .Cin(cout2), .S(S[3]), .Cout(cout3));

assign S_f = {cout3,S};

endmodule




module FA(A, B, Cin, S, Cout);
input A,B,Cin;
output S,Cout;
assign S = (A^B)^Cin;
assign Cout = (B&Cin)|(A&Cin)|(A&B);
endmodule

//--------------------------------

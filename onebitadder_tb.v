// testbench
module onebitadder_tb;

reg A, B, Cin;
wire S, Cout;

FA uut0(A, B, Cin, S, Cout);

initial begin
	#10 A=1'b0;B=1'b0;Cin=1'b0;
	#10 A=1'b0;B=1'b0;Cin=1'b1;
	#10 A=1'b0;B=1'b1;Cin=1'b0;
	#10 A=1'b0;B=1'b1;Cin=1'b1;
	#10 A=1'b1;B=1'b0;Cin=1'b0;
	#10 A=1'b1;B=1'b0;Cin=1'b1;
	#10 A=1'b1;B=1'b1;Cin=1'b0;
	#10 A=1'b1;B=1'b1;Cin=1'b1;
	#10 $stop;

end 
endmodule

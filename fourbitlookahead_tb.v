// testbench
module fourbitlookaheadadder_tb;

reg [3:0] A, B;
wire [3:0] S;
wire Cout;
integer i, j;

FA_four_look uut0(A, B, S, Cout);

initial begin
	for(i = 0; i < 16; i = i + 1) begin
		for(j = 0; j < 16; j = j + 1) begin	
			A = i; B = j;
			#10;
		end
	end
	$stop;
end 

endmodule

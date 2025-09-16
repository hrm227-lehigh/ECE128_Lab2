// testbench
module fourbitadder_tb;

reg [3:0] A, B;
wire [4:0] S_f;
integer i, j;

FA_four_ripple uut0(A, B, S_f);

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

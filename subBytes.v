module subBytes(outState,inState);
input [127:0]inState;
output [127:0]outState;

//wire [127:0]inState = 128'h193de3be_a0f4e22b_9ac68d2a_e9f84808;
wire [7:0]substitution;
//integer index1,index2;
genvar i;

generate
	for(i=0;i<128;i=i+8)
	begin
		sbox sx(outState[(127-i)-:8],inState[(127-i)-:8]);
		// sbox sx(substitution,inState[(127)-:8]);
		// //$display("i: %d  going_to_sbox: %h  subbed_from_sbox: %h",i,inState[(127)-:8],substitution);
		// assign outState[(127)-:8] = substitution;
	end
endgenerate

endmodule
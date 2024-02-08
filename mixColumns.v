module mixColumns(outState,inState);
input [127:0]inState;
output [127:0]outState;

genvar i;

generate
	for (i=0;i<128;i=i+32)
	begin
		galoisMultiply gm(outState[(127-i)-:32],inState[(127-i)-:32]);
	end
	
endgenerate

endmodule
module galoisMultiply(outVector,inVector);
input [31:0]inVector; //input column vector
output [31:0]outVector;


wire [31:0]colx2; //col elements times 2, stored in the same fashion as input column
wire [31:0]colx3;

genvar i;

generate
	for (i=0;i<32;i=i+8)
	begin
		galoisMultiplyBy2 gm2(colx2[(31-i)-:8],inVector[(31-i)-:8]);
		galoisMultiplyBy3 gm3(colx3[(31-i)-:8],inVector[(31-i)-:8]);
	end
		assign outVector[31:24] = colx2[31:24] ^ colx3[23:16] ^ inVector[15:8] ^ inVector[7:0];
		assign outVector[23:16] = inVector[31:24] ^ colx2[23:16] ^ colx3[15:8] ^ inVector[7:0];
		assign outVector[15:8] = inVector[31:24] ^ inVector[23:16] ^ colx2[15:8] ^ colx3[7:0];
		assign outVector[7:0] = colx3[31:24] ^ inVector[23:16] ^ inVector[15:8] ^ colx2[7:0];
endgenerate

endmodule
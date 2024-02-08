module aes_encrypter(cipherOut,dataIn,clkIn,keyIn);
input [127:0]dataIn;
input [127:0]keyIn;
input clkIn;
output [127:0]cipherOut;

wire [1407:0]keySet;
wire [127:0]state;

keyExpander kx(keySet,keyIn);

addRoundKey rk1(state,dataIn,keySet[1407:(1407-128+1)]);

genvar i;

generate
	for (i=0;i<9;i=i+1)
	begin
		subBytes sb(state,

	end
endgenerate

endmodule


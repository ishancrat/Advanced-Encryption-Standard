module rotWord_subBytes(outVector,inVector);
input [31:0]inVector;
output [31:0]outVector;

wire [31:0]rotatedWord; //rotated word, subBytes to be performed
assign rotatedWord = {inVector[23:0],inVector[31:24]};

sbox sx0(outVector[31:24],rotatedWord[31:24]);
sbox sx1(outVector[23:16],rotatedWord[23:16]);
sbox sx2(outVector[15:8],rotatedWord[15:8]);
sbox sx3(outVector[7:0],rotatedWord[7:0]);

endmodule
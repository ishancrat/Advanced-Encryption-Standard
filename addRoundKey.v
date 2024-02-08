module addRoundKey(outState,inState,roundKey);
input [127:0]inState;
input [127:0]roundKey;
output [127:0]outState;

assign outState = inState ^ roundKey;

endmodule
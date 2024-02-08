module generateRoundKey(roundKey,previousKey,rcon);
input [127:0]previousKey; //key for the last round
output [127:0]roundKey;
input [31:0]rcon; //rcon column value for particular round

wire [31:0]rotSubCol;
rotWord_subBytes rwsb(rotSubCol,previousKey[31:0]);

assign roundKey[127:96] = rotSubCol ^ rcon ^ previousKey[127:96];
assign roundKey[95:64] = roundKey[127:96] ^ previousKey[95:64];
assign roundKey[63:32] = roundKey[95:64] ^ previousKey[63:32];
assign roundKey[31:0] = roundKey[63:32] ^ previousKey[31:0];


endmodule
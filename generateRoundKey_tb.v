module generateRoundKey_tb();
reg [127:0]lastRoundKey; //last and fourth last columns of previous key
reg [31:0]rcon_col;
wire [127:0]roundKey;

generateRoundKey grk(roundKey,lastRoundKey,rcon_col);

initial
begin
	$monitor("lastRoundKey: %h  rcon: %h  roundKey: %h",lastRoundKey,rcon_col,roundKey);
	lastRoundKey = 128'h2b7e1516_28aed2a6_abf71588_09cf4f3c;
	rcon_col = 32'h01000000;
	//expected output: a0fafe1788542cb123a339392a6c7605
end
endmodule
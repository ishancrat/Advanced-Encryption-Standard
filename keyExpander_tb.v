module keyExpander_tb();
reg [127:0]cipherKey;
wire [1407:0]expandedKey;
wire [319:0]rconOut;
wire [127:0]inRoundKey;
wire [127:0]outRoundKeyy;

keyExpander kx(expandedKey,rconOut, cipherKey);

initial
begin
	$monitor("key: %h  \nexpandedKey: %h\nrconOut: %h",cipherKey,expandedKey,rconOut);
	cipherKey = 128'h2b7e1516_28aed2a6_abf71588_09cf4f3c;
end

endmodule
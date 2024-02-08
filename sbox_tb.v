module sbox_tb();
reg [7:0]inputByte;
wire [7:0]subbedByte;

sbox sx(subbedByte,inputByte);

initial
begin
	$monitor("before_sub: %h   after_sub: %h",inputByte,subbedByte);
	inputByte = 8'h00;
	#5
	inputByte = 8'hf0;
	#5
	inputByte = 8'h7d;
	#5
	inputByte = 8'ha5;
	#5
	inputByte = 8'hca;
end
endmodule
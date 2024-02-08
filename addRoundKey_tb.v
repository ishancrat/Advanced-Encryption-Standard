module addRoundKey_tb();
reg [127:0]curState;
reg [127:0]key;
wire [127:0]nextState;

addRoundKey ark(nextState,curState,key);

initial
begin
	$monitor("state: %h  key: %h  state_after_ARK: %h",curState,key,nextState);
	curState = 128'h046681e5_e0cb199a_48f8d37a_2806264c;
	key = 128'ha0fafe17_88542cb1_23a33939_2a6c7605;
end
endmodule
module subBytes_tb();
reg [127:0]curState;
wire [127:0]subbedState; //state after substitution

subBytes sb(subbedState,curState);

initial
begin
	$monitor("current_state: %h   subbed_state: %h",curState,subbedState);
	curState = 128'h193de3be_a0f4e22b_9ac68d2a_e9f84808;
	#5
	curState = 128'ha49c7ff2_689f352b_6b5bea43_026a5049;
	#5
	curState = 128'haa8f5f03_61dde3ef_82d24ad2_6832469a;
end
endmodule
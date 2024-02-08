module shiftRows_tb();
reg [127:0]inState;
wire [127:0]shiftedState;

shiftRows sr(shiftedState,inState);

initial
begin
	$monitor("initial_state: %h  shifted_state: %h",inState,shiftedState);
	#5
	inState = 128'hd42711ae_e0bf98f1_b8b45de5_1e415230;
end
endmodule
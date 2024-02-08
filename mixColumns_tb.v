module mixColumns_tb();
reg [127:0]inState;
wire [127:0]outState;

mixColumns mc(outState,inState);

initial
begin
	$monitor("initial_state: %h  final_state: %h",inState,outState);
	inState = 128'hd4bf5d30_e0b452ae_b84111f1_1e2798e5;
	//expected output: 046681e5e0cb199a48f8d37a2806264c
	#5
	inState = 128'h49db873b_45395389_7f02d2f1_77de961a;
	//expected output: 584dcaf11b4b5aacdbe7caa81b6bb0e5
end
endmodule
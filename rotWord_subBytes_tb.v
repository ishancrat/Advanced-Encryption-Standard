module rotWord_subBytes_tb();
reg [31:0]inputVector;
wire [31:0]expandedVector;

rotWord_subBytes rwsb(expandedVector,inputVector);

initial
begin
	$monitor("input_vector: %h  expanded_vector: %h",inputVector,expandedVector);
	inputVector = 32'h09cf4f3c;
end

endmodule
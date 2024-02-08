module galoisMultiply_tb();
reg [31:0]inCol; //input column vector
wire [31:0]outCol;

galoisMultiply gm(outCol,inCol);

initial
begin
	$monitor("column_vector: %h  output_column_vector: %h",inCol,outCol);
	inCol = 32'hd4bf5d30;
end
endmodule
module galoisMultiplyBy3_tb();
reg [7:0]polynomial; //galois polynomial in binary form
wire [7:0]product; //product after being multiplied by 2

galoisMultiplyBy3 gm3(product,polynomial);

initial
begin
	$monitor("polynomial: %h  product: %h",polynomial,product);
	polynomial = 8'h57;
	#5
	polynomial = 8'hae;
	#5
	polynomial = 8'h47;
end
endmodule
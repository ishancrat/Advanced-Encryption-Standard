module galoisMultiplyBy3(outPoly,inPoly);
input [7:0]inPoly; //input polynomial
output [7:0]outPoly;

wire [7:0]input2x; //input polynomial times 2

galoisMultiplyBy2 gm2(input2x,inPoly);

assign outPoly = input2x ^ inPoly;

endmodule

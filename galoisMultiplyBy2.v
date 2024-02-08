module galoisMultiplyBy2(outPoly,inPoly);
input [7:0]inPoly; //input polynomial
output [7:0]outPoly;

assign outPoly = (inPoly[7]==0) ? (inPoly << 1) : ((inPoly<<1) ^ 8'h1b);

endmodule

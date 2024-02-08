module shiftRows(outState,inState);
input [127:0]inState;
output [127:0]outState;

assign {outState[127-:8],outState[95-:8]} = {inState[127-:8],inState[95-:8]};
assign {outState[63-:8],outState[31-:8]} = {inState[63-:8],inState[31-:8]};

assign {outState[119-:8],outState[87-:8]} = {inState[87-:8],inState[55-:8]};
assign {outState[55-:8],outState[23-:8]} = {inState[23-:8],inState[119-:8]};

assign {outState[111-:8],outState[79-:8]} = {inState[47-:8],inState[15-:8]};
assign {outState[47-:8],outState[15-:8]} = {inState[111-:8],inState[79-:8]};

assign {outState[103-:8],outState[71-:8]} = {inState[7-:8],inState[103-:8]};
assign {outState[39-:8],outState[7-:8]} = {inState[71-:8],inState[39-:8]};

endmodule
module sbox(subByte,inByte);
input [7:0]inByte; //input byte
output [7:0]subByte; //substituted byte

reg [7:0]subByteReg;

assign subByte = subByteReg;

always@(inByte)
begin
	case(inByte)

        8'h00 : subByteReg = 8'h63;
        8'h01 : subByteReg = 8'h7c;
        8'h02 : subByteReg = 8'h77;
        8'h03 : subByteReg = 8'h7b;
        8'h04 : subByteReg = 8'hf2;
        8'h05 : subByteReg = 8'h6b;
        8'h06 : subByteReg = 8'h6f;
        8'h07 : subByteReg = 8'hc5;
        8'h08 : subByteReg = 8'h30;
        8'h09 : subByteReg = 8'h01;
        8'h0a : subByteReg = 8'h67;
        8'h0b : subByteReg = 8'h2b;
        8'h0c : subByteReg = 8'hfe;
        8'h0d : subByteReg = 8'hd7;
        8'h0e : subByteReg = 8'hab;
        8'h0f : subByteReg = 8'h76;

        8'h10 : subByteReg = 8'hca;
        8'h11 : subByteReg = 8'h82;
        8'h12 : subByteReg = 8'hc9;
        8'h13 : subByteReg = 8'h7d;
        8'h14 : subByteReg = 8'hfa;
        8'h15 : subByteReg = 8'h59;
        8'h16 : subByteReg = 8'h47;
        8'h17 : subByteReg = 8'hf0;
        8'h18 : subByteReg = 8'had;
        8'h19 : subByteReg = 8'hd4;
        8'h1a : subByteReg = 8'ha2;
        8'h1b : subByteReg = 8'haf;
        8'h1c : subByteReg = 8'h9c;
        8'h1d : subByteReg = 8'ha4;
        8'h1e : subByteReg = 8'h72;
        8'h1f : subByteReg = 8'hc0;

        8'h20 : subByteReg = 8'hb7;
        8'h21 : subByteReg = 8'hfd;
        8'h22 : subByteReg = 8'h93;
        8'h23 : subByteReg = 8'h26;
        8'h24 : subByteReg = 8'h36;
        8'h25 : subByteReg = 8'h3f;
        8'h26 : subByteReg = 8'hf7;
        8'h27 : subByteReg = 8'hcc;
        8'h28 : subByteReg = 8'h34;
        8'h29 : subByteReg = 8'ha5;
        8'h2a : subByteReg = 8'he5;
        8'h2b : subByteReg = 8'hf1;
        8'h2c : subByteReg = 8'h71;
        8'h2d : subByteReg = 8'hd8;
        8'h2e : subByteReg = 8'h31;
        8'h2f : subByteReg = 8'h15;

        8'h30 : subByteReg = 8'h04;
        8'h31 : subByteReg = 8'hc7;
		8'h32 : subByteReg = 8'h23;
        8'h33 : subByteReg = 8'hc3;
        8'h34 : subByteReg = 8'h18;
        8'h35 : subByteReg = 8'h96;
        8'h36 : subByteReg = 8'h05;
        8'h37 : subByteReg = 8'h9a;
        8'h38 : subByteReg = 8'h07;
        8'h39 : subByteReg = 8'h12;
        8'h3a : subByteReg = 8'h80;
        8'h3b : subByteReg = 8'he2;
        8'h3c : subByteReg = 8'heb;
        8'h3d : subByteReg = 8'h27;
        8'h3e : subByteReg = 8'hb2;
        8'h3f : subByteReg = 8'h75;

        8'h40 : subByteReg = 8'h09;
        8'h41 : subByteReg = 8'h83;
        8'h42 : subByteReg = 8'h2c;
        8'h43 : subByteReg = 8'h1a;
        8'h44 : subByteReg = 8'h1b;
        8'h45 : subByteReg = 8'h6e;
        8'h46 : subByteReg = 8'h5a;
        8'h47 : subByteReg = 8'ha0;
        8'h48 : subByteReg = 8'h52;
        8'h49 : subByteReg = 8'h3b;
        8'h4a : subByteReg = 8'hd6;
        8'h4b : subByteReg = 8'hb3;
        8'h4c : subByteReg = 8'h29;
        8'h4d : subByteReg = 8'he3;
        8'h4e : subByteReg = 8'h2f;
        8'h4f : subByteReg = 8'h84;

        8'h50 : subByteReg = 8'h53;
        8'h51 : subByteReg = 8'd1;
        8'h52 : subByteReg = 8'h00;
        8'h53 : subByteReg = 8'hed;
        8'h54 : subByteReg = 8'h20;
        8'h55 : subByteReg = 8'hfc;
        8'h56 : subByteReg = 8'hb1;
        8'h57 : subByteReg = 8'h5b;
        8'h58 : subByteReg = 8'h6a;
        8'h59 : subByteReg = 8'hcb;
        8'h5a : subByteReg = 8'hbe;
        8'h5b : subByteReg = 8'h39;
        8'h5c : subByteReg = 8'h4a;
        8'h5d : subByteReg = 8'h4c;
        8'h5e : subByteReg = 8'h58;
        8'h5f : subByteReg = 8'hcf;

        8'h60 : subByteReg = 8'hd0;
        8'h61 : subByteReg = 8'hef;
        8'h62 : subByteReg = 8'haa;
        8'h63 : subByteReg = 8'hfb;
        8'h64 : subByteReg = 8'h43;
		8'h65 : subByteReg = 8'h4d;
        8'h66 : subByteReg = 8'h33;
        8'h67 : subByteReg = 8'h85;
        8'h68 : subByteReg = 8'h45;
        8'h69 : subByteReg = 8'hf9;
        8'h6a : subByteReg = 8'h02;
        8'h6b : subByteReg = 8'h7f;
        8'h6c : subByteReg = 8'h50;
        8'h6d : subByteReg = 8'h3c;
        8'h6e : subByteReg = 8'h9f;
        8'h6f : subByteReg = 8'ha8;

        8'h70 : subByteReg = 8'h51;
        8'h71 : subByteReg = 8'ha3;
        8'h72 : subByteReg = 8'h40;
        8'h73 : subByteReg = 8'h8f;
        8'h74 : subByteReg = 8'h92;
        8'h75 : subByteReg = 8'h9d;
        8'h76 : subByteReg = 8'h38;
        8'h77 : subByteReg = 8'hf5;
        8'h78 : subByteReg = 8'hbc;
        8'h79 : subByteReg = 8'hb6;
        8'h7a : subByteReg = 8'hda;
        8'h7b : subByteReg = 8'h21;
        8'h7c : subByteReg = 8'h10;
        8'h7d : subByteReg = 8'hff;
        8'h7e : subByteReg = 8'hf3;
        8'h7f : subByteReg = 8'hd2;

        8'h80 : subByteReg = 8'hcd;
        8'h81 : subByteReg = 8'h0c;
        8'h82 : subByteReg = 8'h13;
        8'h83 : subByteReg = 8'hec;
        8'h84 : subByteReg = 8'h5f;
        8'h85 : subByteReg = 8'h97;
        8'h86 : subByteReg = 8'h44;
        8'h87 : subByteReg = 8'h17;
        8'h88 : subByteReg = 8'hc4;
        8'h89 : subByteReg = 8'ha7;
        8'h8a : subByteReg = 8'h7e;
        8'h8b : subByteReg = 8'h3d;
        8'h8c : subByteReg = 8'h64;
        8'h8d : subByteReg = 8'h5d;
        8'h8e : subByteReg = 8'h19;
        8'h8f : subByteReg = 8'h73;

        8'h90 : subByteReg = 8'h60;
        8'h91 : subByteReg = 8'h81;
        8'h92 : subByteReg = 8'h4f;
        8'h93 : subByteReg = 8'hdc;
        8'h94 : subByteReg = 8'h22;
        8'h95 : subByteReg = 8'h2a;
        8'h96 : subByteReg = 8'h90;
		8'h97 : subByteReg = 8'h88;
        8'h98 : subByteReg = 8'h46;
        8'h99 : subByteReg = 8'hee;
        8'h9a : subByteReg = 8'hb8;
        8'h9b : subByteReg = 8'h14;
        8'h9c : subByteReg = 8'hde;
        8'h9d : subByteReg = 8'h5e;
        8'h9e : subByteReg = 8'h0b;
        8'h9f : subByteReg = 8'hdb;

        8'ha0 : subByteReg = 8'he0;
        8'ha1 : subByteReg = 8'h32;
        8'ha2 : subByteReg = 8'h3a;
        8'ha3 : subByteReg = 8'h0a;
        8'ha4 : subByteReg = 8'h49;
        8'ha5 : subByteReg = 8'h06;
        8'ha6 : subByteReg = 8'h24;
        8'ha7 : subByteReg = 8'h5c;
        8'ha8 : subByteReg = 8'hc2;
        8'ha9 : subByteReg = 8'hd3;
        8'haa : subByteReg = 8'hac;
        8'hab : subByteReg = 8'h62;
        8'hac : subByteReg = 8'h91;
        8'had : subByteReg = 8'h95;
        8'hae : subByteReg = 8'he4;
        8'haf : subByteReg = 8'h79;

        8'hb0 : subByteReg = 8'he7;
        8'hb1 : subByteReg = 8'hc8;
        8'hb2 : subByteReg = 8'h37;
        8'hb3 : subByteReg = 8'h6d;
        8'hb4 : subByteReg = 8'h8d;
        8'hb5 : subByteReg = 8'hd5;
        8'hb6 : subByteReg = 8'h4e;
        8'hb7 : subByteReg = 8'ha9;
        8'hb8 : subByteReg = 8'h6c;
        8'hb9 : subByteReg = 8'h56;
        8'hba : subByteReg = 8'hf4;
        8'hbb : subByteReg = 8'hea;
        8'hbc : subByteReg = 8'h65;
        8'hbd : subByteReg = 8'h7a;
        8'hbe : subByteReg = 8'hae;
        8'hbf : subByteReg = 8'h08;

        8'hc0 : subByteReg = 8'hba;
        8'hc1 : subByteReg = 8'h78;
        8'hc2 : subByteReg = 8'h25;
        8'hc3 : subByteReg = 8'h2e;
        8'hc4 : subByteReg = 8'h1c;
        8'hc5 : subByteReg = 8'ha6;
        8'hc6 : subByteReg = 8'hb4;
        8'hc7 : subByteReg = 8'hc6;
        8'hc8 : subByteReg = 8'he8;
        8'hc9 : subByteReg = 8'hdd;
        8'hca : subByteReg = 8'h74;
        8'hcb : subByteReg = 8'h1f;
        8'hcc : subByteReg = 8'h4b;
        8'hcd : subByteReg = 8'hbd;
        8'hce : subByteReg = 8'h8b;
        8'hcf : subByteReg = 8'h8a;

        8'hd0 : subByteReg = 8'h70;
        8'hd1 : subByteReg = 8'h3e;
        8'hd2 : subByteReg = 8'hb5;
        8'hd3 : subByteReg = 8'h66;
        8'hd4 : subByteReg = 8'h48;
        8'hd5 : subByteReg = 8'h03;
        8'hd6 : subByteReg = 8'hf6;
        8'hd7 : subByteReg = 8'h0e;
        8'hd8 : subByteReg = 8'h61;
        8'hd9 : subByteReg = 8'h35;
        8'hda : subByteReg = 8'h57;
        8'hdb : subByteReg = 8'hb9;
        8'hdc : subByteReg = 8'h86;
        8'hdd : subByteReg = 8'hc1;
        8'hde : subByteReg = 8'h1d;
        8'hdf : subByteReg = 8'h9e;

        8'he0 : subByteReg = 8'he1;
        8'he1 : subByteReg = 8'hf8;
        8'he2 : subByteReg = 8'h98;
        8'he3 : subByteReg = 8'h11;
        8'he4 : subByteReg = 8'h69;
        8'he5 : subByteReg = 8'hd9;
        8'he6 : subByteReg = 8'h8e;
        8'he7 : subByteReg = 8'h94;
        8'he8 : subByteReg = 8'h9b;
        8'he9 : subByteReg = 8'h1e;
        8'hea : subByteReg = 8'h87;
        8'heb : subByteReg = 8'he9;
        8'hec : subByteReg = 8'hce;
        8'hed : subByteReg = 8'h55;
        8'hee : subByteReg = 8'h28;
        8'hef : subByteReg = 8'hdf;

        8'hf0 : subByteReg = 8'h8c;
        8'hf1 : subByteReg = 8'ha1;
        8'hf2 : subByteReg = 8'h89;
        8'hf3 : subByteReg = 8'h0d;
        8'hf4 : subByteReg = 8'hbf;
        8'hf5 : subByteReg = 8'he6;
        8'hf6 : subByteReg = 8'h42;
        8'hf7 : subByteReg = 8'h68;
        8'hf8 : subByteReg = 8'h41;
        8'hf9 : subByteReg = 8'h99;
        8'hfa : subByteReg = 8'h2d;
        8'hfb : subByteReg = 8'h0f;
        8'hfc : subByteReg = 8'hb0;
        8'hfd : subByteReg = 8'h54;
        8'hfe : subByteReg = 8'hbb;
        8'hff : subByteReg = 8'h16;
    endcase
end

endmodule
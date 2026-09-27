module alu (
input [3:0]a,
input [3:0]b,
input [2:0]cmd,
input oe,
output reg [7:0] dout
);
//command parameters

parameter ADD = 3'b000;
parameter SUB = 3'b001;
parameter MUL = 3'b010;
parameter DIV = 3'b011;

always @(*) begin 
	if (oe) begin 
	case (cmd)
	ADD : dout=a+b;
	SUB : dout=a-b;
	MUL : dout=a*b;
	DIV : dout=a/b;
	default :dout=8'b0;
endcase 
end 
else 
dout=8'b0;
end 
endmodule


module alu_tb;
reg [3:0] a,b;
reg [2:0] cmd;
reg oe;
wire [7:0] dout;
alu dut (
	.a(a),
	.b(b),
	.cmd(cmd),
	.oe(oe),
	.dout(dout)
	);
initial begin 
 oe=1;
//add
a=4'd5; b=4'd3; cmd=3'b000;
#10
$display("ADD:%d+%d=%d",a,b,dout);
//sub
a=4'd5; b=4'd3;cmd=3'b001;
#10
$display("SUB:%d-%d=%d",a,b,dout);
//multiplication
a=4'd5;b=4'd3;cmd=3'b010;
#10;
$display("MUL:%d*%d=%d",a,b,dout);
//divison
a=4'd6;b=4'd3;cmd=3'b011;
#10;
$display("DIV:%d/%d=%d",a,b,dout);
//ouput disabled 
oe=0;
#10;
$display("oe disabled:dout=%d",dout);
$finish;
end
endmodule
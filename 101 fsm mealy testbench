module fsm_101_mealy_tb;
wire out;
reg in, clk, reset;
reg [1:0] cs, ns;

fsm_101_mealy Seq(.in(in),.clk(clk),.reset(reset),.out(out));
always #5 clk = ~clk;
initial
begin
	clk = 1;
end
initial
begin
	$monitor("in = %b, out = %b", in, out);
end
initial
begin
reset = 1'b1; #10 reset = 1'b0;
#10 in =#0  1'b0;
#10 in =#0 1'b1;
#10 in =#0 1'b1;
#10 in =#0 1'b0;
#10 in =#0 1'b1;
#10 in =#0 1'b0;
#10 in =#0 1'b1;
#10 in =#0 1'b1;
#10 in =#0 1'b0;
#10 in =#0 1'b1;
#10 in =#0 1'b0;
#10 in =#0 1'b0;
#10 in =#0 1'b1;
#10 in =#0 1'b0;
#10 in =#0 1'b1;
#10 in =#0 1'b0;
#10 in =#0 1'b1;
#10 in =#0 1'b0;
#10 in =#0 1'b1;
#10 in =#0 1'b1;
#10 in =#0 1'b0;
#10 in =#0 1'b0;
#10 in =#0 1'b0;
#10 in =#0 1'b0;

#100 $finish;
end
initial
begin
	$dumpfile("mealy_seq.vcd");
	$dumpvars(0,fsm_101_mealy_tb);
end
endmodule 

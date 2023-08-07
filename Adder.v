module adder_reg( out, i1, i2, clk, reset);

output [1:0] out;
input [1:0] i1, i2;
input clk;
reg reset;


initial 
begin 
reset = 1'b1;
#100 reset = 1'b0
end
endmodule

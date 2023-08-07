// fsm code for sequence 101, mealy method

module fsm_101_mealy(in, clk, reset, out);
  input in, clk, reset;
  output reg out;
  reg [1:0] cs,ns;
  
  parameter I = 2'b00, S0 = 2'b00, S1 = 2'b01, S2 = 2'b10;

  always @(*)
  begin 
    case (cs)
      S0:
        ns = in ? S1 : S0;
      S1:
        ns = in ? S2 : S0;
      S2:
        ns = in ? out : S0;
      default:
        ns = S0;
    endcase
  end
      
  always @(posedge clk)
  begin
    if (reset)
    begin
      cs <= S0;
      out <= 1'b0;
    end
    else
    begin
      cs <= ns;
      case (cs)
        S0:
          out <= 1'b0;
        S1:
          out <= 1'b0;
        S2:
          out <= 1'b1;
        default:
          out <= 1'b0;
      endcase
    end
  end
endmodule

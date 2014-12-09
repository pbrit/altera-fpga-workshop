module zero_nine_loop(clk, digit); 

  input           clk;
  output [3:0]    digit = 4'b0000;
  
  reg   [3:0]   digit;
  
  always @ (posedge clk) begin
    if (digit != 9)
      digit <= digit + 1;
    else
      digit <= 0;
  end

endmodule

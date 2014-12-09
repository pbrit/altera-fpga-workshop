
module loop0(
  clk_in,
  led_out
);

  input           clk_in; 
  output [7:0]    led_out;
  reg    [7:0]    led_out;

  always @ (posedge clk_in) begin
    if (led_out == 0)
      led_out <= 1;
    else
      begin
        if (led_out == 128)
          led_out <= 1;
        else
          led_out <= led_out << 1;
      end
  end

endmodule

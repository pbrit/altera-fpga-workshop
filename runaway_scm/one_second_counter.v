
module one_second_couter (
  in_clk,
  out_clk 
);

input             in_clk;
output    [15:0]  out_clk;
reg       [15:0]  out_clk;


always @ (posedge in_clk)
  begin
    out_clk <= out_clk + 1;
  end
endmodule

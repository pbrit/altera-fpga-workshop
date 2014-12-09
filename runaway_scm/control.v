
module control(
    pb,
    in,
    out,
    clk
  );

  input   [1:0]     pb;
  input             clk;
  input   [15:0]    in;
  output            out;

  reg     [0:3]     state = 15;

  assign out = in[state];

  always @ (posedge clk) begin
    if (!pb[0] || !pb[1])
      begin
        if (!pb[0] && !pb[1])
          state <= 15;
        else 
          begin
            if (!pb[0])
              if (state != 0)
                state <= state - 1;
            else 
              if (state != 15)
                state <= state + 1;
          end
      end
  end

endmodule

  


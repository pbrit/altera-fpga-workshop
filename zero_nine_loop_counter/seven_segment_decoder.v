
// Seven-segment layout
// --------------------
//  A B C D E F G 
//  6 5 4 3 2 1 0


module seven_segment_decoder(digit, segments);

  input   [3:0] digit;
  output  [6:0] segments;

  assign segments = (digit == 0) ? 7'b1111110 :
                    (digit == 1) ? 7'b0110000 :
                    (digit == 2) ? 7'b1101101 :
                    (digit == 3) ? 7'b1111001 :
                    (digit == 4) ? 7'b0110011 :
                    (digit == 5) ? 7'b1011011 :
                    (digit == 6) ? 7'b0011111 :
                    (digit == 7) ? 7'b1110000 :
                    (digit == 8) ? 7'b1111111 : 7'b1110011;

endmodule



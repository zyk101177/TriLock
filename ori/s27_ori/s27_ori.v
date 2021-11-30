
module dff (clk, reset, Q, D);
input wire clk, reset, D;
output reg Q;

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      Q <= 1'b0;
    end
    else begin
      Q <= D;
    end
  end

endmodule


module s27_ori ( clk, reset, G0, G1, G2, G3, G17 );
input clk, reset, G0, G1, G2, G3;
output G17;
wire n17, G6, n12, G5, G7, n22, n2, n3, n4, n5, n6;

dff G7_reg ( clk, reset, G7, n22 );
dff G6_reg ( clk, reset, G6, n17 );
dff G5_reg ( clk, reset, G5, n12 );
not U12 ( G17, n17 );
nor U13 ( n12, n17, n2 );
nor U14 ( n17, G5, n4 );
and U15 ( n4, n5, n6 );
nand U16 ( n5, G6, n2 );
nand U17 ( n6, n3, G3 );
nor U18 ( n3, G1, G7 );
not U19 ( n2, G0 );
nor U20 ( n22, G2, n3 );
endmodule


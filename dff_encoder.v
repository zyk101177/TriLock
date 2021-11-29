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

module encoder
(input se, so,
output c, b, en_se, en_so);

	assign {c, en_se} = se + so;
	assign {b, en_so} = se - so;

endmodule

module decoder
(input c, b, en_se, en_so,
output de_se, de_so);

wire [2:0] sum, diff;
    assign sum[2:0] = {c, en_se} + {b, en_so};
    assign diff[2:0] = {c, en_se} - {b, en_so};
	assign de_se = sum[1];
	assign de_so = diff[1];

endmodule

module encoder2
(input se, so,
output c, b, en_se);

wire en_so;
	assign {c, en_se} = se + so;
	assign {b, en_so} = se - so;

endmodule

module decoder2
(input c, b, en_se,
output de_se, de_so);

wire [2:0] sum, diff;
    assign sum[2:0] = {c, en_se} + {b, en_se};
    assign diff[2:0] = {c, en_se} - {b, en_se};
	assign de_se = sum[1];
	assign de_so = diff[1];

endmodule


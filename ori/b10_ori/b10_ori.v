
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


module b10_ori ( clk, reset, R_BUTTON, G_BUTTON, KEY, START, TEST, RTS, RTR, V_IN_3_,
V_IN_2_, V_IN_1_, V_IN_0_, CTS_REG, CTR_REG, V_OUT_REG_3_,
V_OUT_REG_2_, V_OUT_REG_1_, V_OUT_REG_0_ );
input clk, reset, R_BUTTON, G_BUTTON, KEY, START, TEST, RTS, RTR, V_IN_3_, V_IN_2_, V_IN_1_, V_IN_0_;
output CTS_REG, CTR_REG, V_OUT_REG_3_, V_OUT_REG_2_, V_OUT_REG_1_,
V_OUT_REG_0_;
wire ex_wire0, ex_wire1, n101, n87, n77, n51, n46, n41, n56, n61, n65, n69, n73, n82, n91, n96,
n105, n110, n36, n192, n193, n194, n195, n196, n197, n198, n199, n200,
n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
n377, n378, n379, n380;

dff LAST_G_REG_reg ( clk, reset, n197, n110 );
dff VOTO1_REG_reg ( clk, reset, ex_wire0, n82 );
not U_inv0 ( n379, ex_wire0 );
dff VOTO3_REG_reg ( clk, reset, n199, n91 );
not U_inv1 ( n371, n199 );
dff STATO_REG_3__reg ( clk, reset, n193, n41 );
not U_inv2 ( n375, n193 );
dff STATO_REG_2__reg ( clk, reset, n196, n46 );
not U_inv3 ( n376, n196 );
dff STATO_REG_1__reg ( clk, reset, n192, n51 );
not U_inv4 ( n377, n192 );
dff STATO_REG_0__reg ( clk, reset, n195, n56 );
not U_inv5 ( n378, n195 );
dff SIGN_REG_3__reg ( clk, reset, n200, n77 );
not U_inv6 ( n372, n200 );
dff V_OUT_REG_3__reg ( clk, reset, V_OUT_REG_3_, n61 );
dff LAST_R_REG_reg ( clk, reset, n198, n96 );
dff CTR_REG_reg ( clk, reset, CTR_REG, n87 );
dff VOTO2_REG_reg ( clk, reset, ex_wire1, n105 );
not U_inv7 ( n380, ex_wire1 );
dff V_OUT_REG_2__reg ( clk, reset, V_OUT_REG_2_, n65 );
dff VOTO0_REG_reg ( clk, reset, n194, n36 );
not U_inv8 ( n373, n194 );
dff V_OUT_REG_0__reg ( clk, reset, V_OUT_REG_0_, n73 );
dff CTS_REG_reg ( clk, reset, CTS_REG, n101 );
not U_inv9 ( n374, CTS_REG );
dff V_OUT_REG_1__reg ( clk, reset, V_OUT_REG_1_, n69 );
nand U194 ( n96, n201, n202 );
nand U195 ( n202, n203, R_BUTTON );
nand U196 ( n201, n204, n198 );
nand U197 ( n91, n205, n206 );
or U198 ( n206, n207, n371 );
nand U199 ( n205, n208, n207 );
nand U200 ( n207, n209, n210 );
nor U201 ( n209, n211, n212 );
nor U202 ( n212, KEY, n213 );
nor U203 ( n211, n214, n215 );
nand U204 ( n215, n375, n195 );
nand U205 ( n208, n216, n217 );
nand U206 ( n217, n218, n219 );
xnor U207 ( n219, n380, n220 );
xnor U208 ( n220, n194, n379 );
nor U209 ( n218, n377, n378 );
nand U210 ( n216, V_IN_3_, n221 );
nand U211 ( n87, n222, n223 );
nand U212 ( n223, n224, CTR_REG );
nand U213 ( n224, n225, n226 );
nor U214 ( n226, n227, n228 );
nor U215 ( n228, n377, RTS );
nor U216 ( n227, n375, n192 );
nor U217 ( n225, n195, n229 );
nand U218 ( n82, n230, n231 );
or U219 ( n231, n232, n379 );
nand U220 ( n230, n233, n232 );
nand U221 ( n232, n234, n210 );
nor U222 ( n234, n235, n236 );
nor U223 ( n236, n197, n237 );
nand U224 ( n237, G_BUTTON, n238 );
nand U225 ( n233, n239, n240 );
nand U226 ( n240, n241, n379 );
nand U227 ( n239, V_IN_1_, n221 );
nand U228 ( n77, n242, n243 );
nand U229 ( n243, n244, n200 );
nand U230 ( n244, n245, n377 );
nor U231 ( n245, TEST, n246 );
nand U232 ( n73, n247, n248 );
nand U233 ( n248, n249, n194 );
nand U234 ( n247, n250, V_OUT_REG_0_ );
nand U235 ( n69, n251, n252 );
or U236 ( n252, n250, n379 );
nand U237 ( n251, n250, V_OUT_REG_1_ );
nand U238 ( n65, n253, n254 );
or U239 ( n254, n250, n380 );
nand U240 ( n253, n250, V_OUT_REG_2_ );
nand U241 ( n61, n255, n256 );
nand U242 ( n256, n249, n199 );
nand U243 ( n255, n250, V_OUT_REG_3_ );
nand U244 ( n56, n257, n258 );
nand U245 ( n258, n259, n195 );
nand U246 ( n257, n260, n261 );
nand U247 ( n260, n262, n263 );
nand U248 ( n263, n264, n377 );
nor U249 ( n264, n265, n195 );
nor U250 ( n265, n193, n266 );
nor U251 ( n262, n267, n268 );
nand U252 ( n51, n269, n270 );
nand U253 ( n270, n271, n192 );
nand U254 ( n271, n261, n272 );
nand U255 ( n272, n378, n375 );
nor U256 ( n269, n267, n273 );
nor U257 ( n273, n259, n274 );
and U258 ( n274, n242, n275 );
nand U259 ( n46, n276, n277 );
nand U260 ( n277, n278, n192 );
nor U261 ( n276, n267, n279 );
nor U262 ( n279, n376, n280 );
nor U263 ( n280, n281, n282 );
nand U264 ( n282, n261, n275 );
and U265 ( n281, n266, n378 );
nand U266 ( n41, n283, n242 );
nand U267 ( n242, n195, n193 );
nor U268 ( n283, n284, n285 );
nor U269 ( n285, n259, n286 );
nand U270 ( n286, n377, n287 );
nand U271 ( n287, n288, n289 );
or U272 ( n289, n266, n290 );
nand U273 ( n266, n291, n292 );
nor U274 ( n292, n379, n380 );
nor U275 ( n291, n194, n199 );
or U276 ( n288, n246, TEST );
not U277 ( n259, n261 );
nor U278 ( n284, n375, n261 );
nand U279 ( n261, n293, n294 );
nor U280 ( n294, n295, n296 );
nand U281 ( n296, n250, n222 );
nand U282 ( n222, n297, n298 );
nor U283 ( n297, n376, RTS );
nor U284 ( n295, n378, n299 );
nor U285 ( n299, n300, n301 );
nor U286 ( n300, RTR, n302 );
nand U287 ( n302, n192, n196 );
nor U288 ( n293, n303, n304 );
nand U289 ( n304, n305, n306 );
nand U290 ( n306, n307, n193 );
nand U291 ( n307, n308, n309 );
nand U292 ( n309, n378, n310 );
nand U293 ( n310, n214, n311 );
nand U294 ( n311, n377, n312 );
nand U295 ( n308, n313, n195 );
nor U296 ( n313, n314, n315 );
nand U297 ( n315, V_IN_2_, V_IN_0_ );
nand U298 ( n314, V_IN_1_, V_IN_3_ );
nand U299 ( n305, n316, n375 );
nor U300 ( n316, START, n214 );
nand U301 ( n36, n317, n318 );
or U302 ( n318, n319, n373 );
nand U303 ( n317, n320, n319 );
nand U304 ( n319, n321, n322 );
nor U305 ( n322, n301, n323 );
not U306 ( n301, n213 );
nand U307 ( n213, START, n324 );
nor U308 ( n321, n325, n303 );
nor U309 ( n325, n326, n214 );
not U310 ( n326, n278 );
xnor U311 ( n278, n375, n195 );
nand U312 ( n320, n327, n328 );
nand U313 ( n328, n329, n192 );
nand U314 ( n329, n330, n331 );
nand U315 ( n331, KEY, n268 );
nand U316 ( n330, n372, n193 );
nand U317 ( n327, V_IN_0_, n221 );
nand U318 ( n110, n332, n333 );
nand U319 ( n333, n203, G_BUTTON );
not U320 ( n203, n204 );
nand U321 ( n332, n204, n197 );
nand U322 ( n204, n334, KEY );
nor U323 ( n334, n377, n335 );
nand U324 ( n105, n336, n337 );
or U325 ( n337, n338, n380 );
nand U326 ( n336, n339, n338 );
nand U327 ( n338, n340, n210 );
nor U328 ( n210, n341, n303 );
nand U329 ( n303, n342, n343 );
nand U330 ( n343, n377, n268 );
nand U331 ( n342, RTS, n267 );
or U332 ( n341, n323, n344 );
nor U333 ( n344, n275, n345 );
nand U334 ( n345, START, n376 );
not U335 ( n323, n346 );
nor U336 ( n340, n235, n347 );
nor U337 ( n347, n198, n348 );
nand U338 ( n348, R_BUTTON, n238 );
not U339 ( n238, n335 );
nor U340 ( n235, n335, KEY );
nand U341 ( n335, START, n268 );
not U342 ( n268, n246 );
nand U343 ( n246, n378, n324 );
nand U344 ( n339, n349, n350 );
nand U345 ( n350, n241, n380 );
nor U346 ( n241, n351, n214 );
not U347 ( n351, KEY );
nand U348 ( n349, V_IN_2_, n221 );
nand U349 ( n221, n346, n352 );
nand U350 ( n352, n267, n375 );
nor U351 ( n267, n290, n377 );
nand U352 ( n346, n353, n298 );
nor U353 ( n353, n375, n196 );
nand U354 ( n101, n354, n355 );
nor U355 ( n355, n249, n356 );
nor U356 ( n356, n290, n357 );
nand U357 ( n357, n377, n193 );
not U358 ( n249, n250 );
nand U359 ( n250, n358, RTR );
nor U360 ( n358, n192, n290 );
nand U361 ( n290, n378, n196 );
nor U362 ( n354, n359, n360 );
nor U363 ( n360, n374, n361 );
nor U364 ( n361, n362, n363 );
nand U365 ( n363, n364, n365 );
nand U366 ( n365, n366, n193 );
nand U367 ( n366, n312, n275 );
not U368 ( n275, n298 );
not U369 ( n364, n229 );
nand U370 ( n229, n214, n367 );
nand U371 ( n367, n377, n196 );
nand U372 ( n214, n376, n192 );
nand U373 ( n362, n368, n369 );
nand U374 ( n369, n378, n192 );
nand U375 ( n368, RTR, n195 );
nor U376 ( n359, n312, n370 );
nand U377 ( n370, n298, n324 );
nor U378 ( n324, n193, n196 );
nor U379 ( n298, n192, n378 );
not U380 ( n312, RTR );
endmodule


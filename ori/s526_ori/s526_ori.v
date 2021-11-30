
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



module s526_ori ( clk, reset, G0, G1, G2, G198, G213, G147, G199, G214, G148 );
input clk, reset, G0, G1, G2;
output G198, G213, G147, G199, G214, G148;
wire ex_wire0, ex_wire1, ex_wire2, n30, n35, n75, n20, n25, n40, n45, n50, n55, n60, n65, n70, n80,  n85,
n90, n95, n100, n105, n110, n115, n120, n167, n168, n169, n170, n171,
n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314;

dff G10_reg ( clk, reset, n178, n20 );
not U_inv0 ( n306, n178 );
dff G15_reg ( clk, reset, ex_wire0, n45 );
not U_inv1 ( n301, ex_wire0 );
dff G11_reg ( clk, reset, ex_wire1, n25 );
not U_inv2 ( n307, ex_wire1 );
dff G14_reg ( clk, reset, n174, n40 );
dff G29_reg ( clk, reset, n177, n115 );
not U_inv3 ( n304, n177 );
dff G30_reg ( clk, reset, n176, n120 );
not U_inv4 ( n302, n176 );
dff G16_reg ( clk, reset, n167, n50 );
not U_inv5 ( n310, n167 );
dff G17_reg ( clk, reset, n171, n55 );
not U_inv6 ( n311, n171 );
dff G18_reg ( clk, reset, n175, n60 );
not U_inv7 ( n312, n175 );
dff G19_reg ( clk, reset, n170, n65 );
dff G20_reg ( clk, reset, n172, n70 );
not U_inv8 ( n313, n172 );
dff G21_reg ( clk, reset, n173, n75 );
not U_inv9 ( n314, n173 );
dff G12_reg ( clk, reset, n169, n30 );
not U_inv10 ( n308, n169 );
dff G13_reg ( clk, reset, n168, n35 );
not U_inv11 ( n309, n168 );
dff G28_reg ( clk, reset, G214, n110 );
dff G23_reg ( clk, reset, G147, n85 );
not U_inv12 ( n300, G147 );
dff G22_reg ( clk, reset, ex_wire2, n80 );
not U_inv13 ( n303, ex_wire2 );
dff G25_reg ( clk, reset, G198, n95 );
not U_inv14 ( n298, G198 );
dff G24_reg ( clk, reset, G148, n90 );
not U_inv15 ( n299, G148 );
dff G27_reg ( clk, reset, G213, n105 );
dff G26_reg ( clk, reset, G199, n100 );
not U_inv16 ( n305, G199 );
nor U169 ( n95, n179, n180 );
nand U170 ( n180, n181, n182 );
nand U171 ( n182, n183, n298 );
nor U172 ( n183, n309, n314 );
nand U173 ( n181, n169, n184 );
or U174 ( n184, n309, n298 );
nor U175 ( n90, n185, n179 );
nor U176 ( n185, n186, n187 );
nand U177 ( n187, n188, n189 );
or U178 ( n188, n190, n172 );
nor U179 ( n186, n299, n309 );
nor U180 ( n85, n191, n192 );
nand U181 ( n192, n193, n190 );
nand U182 ( n190, n309, n308 );
nand U183 ( n193, n300, n168 );
nand U184 ( n191, n194, n189 );
nor U185 ( n80, G0, n194 );
nor U186 ( n75, G0, n195 );
nand U187 ( n195, n196, n197 );
nand U188 ( n197, n198, n173 );
nand U189 ( n196, n314, n199 );
nand U190 ( n199, n198, n200 );
nand U191 ( n200, n308, n168 );
not U192 ( n198, n201 );
nor U193 ( n70, n202, n203 );
nand U194 ( n203, n201, n204 );
nor U195 ( n202, n205, n172 );
nor U196 ( n65, n206, n207 );
nand U197 ( n207, n208, n204 );
or U198 ( n208, n170, n209 );
nor U199 ( n206, n210, n211 );
nand U200 ( n211, n212, n167 );
nand U201 ( n210, n213, n214 );
nand U202 ( n214, n311, n175 );
nand U203 ( n213, n215, n171 );
nand U204 ( n215, n175, n170 );
nor U205 ( n60, n209, n216 );
nand U206 ( n216, n217, n204 );
nand U207 ( n217, n312, n218 );
nor U208 ( n209, n218, n312 );
nand U209 ( n218, n219, n212 );
not U210 ( n212, n220 );
nor U211 ( n219, n310, n311 );
nor U212 ( n55, n221, n222 );
nand U213 ( n222, n223, n224 );
nand U214 ( n224, n225, n226 );
and U215 ( n225, n167, n227 );
nor U216 ( n223, n228, n229 );
nor U217 ( n229, n310, n230 );
nand U218 ( n230, n227, n176 );
nand U219 ( n227, n311, n231 );
nand U220 ( n231, n312, n170 );
nor U221 ( n228, n171, n167 );
nand U222 ( n221, n232, n204 );
nand U223 ( n232, n220, n311 );
nor U224 ( n50, n233, n234 );
nand U225 ( n234, n235, n204 );
nand U226 ( n235, n167, n176 );
nand U227 ( n233, n236, n237 );
nand U228 ( n237, n310, n220 );
nand U229 ( n236, n226, n167 );
nor U230 ( n45, n238, n239 );
nand U231 ( n239, n240, n204 );
nand U232 ( n240, n241, n307 );
nor U233 ( n241, n306, n174 );
xnor U234 ( n238, n301, n242 );
nor U235 ( n40, n243, n244 );
nand U236 ( n244, n242, n204 );
not U237 ( n204, G0 );
nand U238 ( n242, n245, n174 );
nor U239 ( n243, n245, n174 );
nor U240 ( n35, G0, n246 );
nand U241 ( n246, n247, n248 );
nand U242 ( n248, n309, n249 );
nand U243 ( n249, n250, n169 );
nand U244 ( n247, n251, n168 );
nor U245 ( n251, n252, n201 );
xor U246 ( n252, n308, n314 );
nor U247 ( n30, G0, n253 );
xor U248 ( n253, n308, n250 );
nor U249 ( n250, n201, n314 );
nand U250 ( n201, n205, n172 );
and U251 ( n205, n254, n255 );
nor U252 ( n255, n220, n256 );
nand U253 ( n256, n170, n167 );
nor U254 ( n220, n176, n226 );
and U255 ( n226, n257, n307 );
and U256 ( n257, n178, n258 );
nor U257 ( n254, n175, n171 );
nor U258 ( n25, n259, n260 );
nand U259 ( n260, n261, n262 );
not U260 ( n262, n245 );
nor U261 ( n245, n307, n306 );
nand U262 ( n261, n306, n307 );
nor U263 ( n259, n263, n20 );
nor U264 ( n263, G0, n258 );
nor U265 ( n258, n174, n301 );
nor U266 ( n20, n178, G0 );
nor U267 ( n120, G0, n264 );
xor U268 ( n264, n302, G1 );
nor U269 ( n115, G0, n265 );
xor U270 ( n265, n304, G2 );
nor U271 ( n110, n266, n267 );
nand U272 ( n267, n268, n194 );
nor U273 ( n268, n269, n270 );
nor U274 ( n269, n309, G214 );
nand U275 ( n266, n189, n271 );
nand U276 ( n271, n309, n169 );
nor U277 ( n105, n272, n273 );
nor U278 ( n272, n274, n179 );
nand U279 ( n179, n194, n275 );
nand U280 ( n275, n276, n313 );
nor U281 ( n276, n309, n189 );
nor U282 ( n274, n277, n278 );
nand U283 ( n278, n168, G213 );
not U284 ( n277, n189 );
nand U285 ( n189, n308, n314 );
nor U286 ( n100, n273, n279 );
nand U287 ( n279, n280, n281 );
nand U288 ( n281, n282, n169 );
nor U289 ( n282, G199, n283 );
nand U290 ( n283, n194, n168 );
nand U291 ( n280, n284, n308 );
nor U292 ( n284, n285, n286 );
nor U293 ( n286, n309, n287 );
nand U294 ( n287, n288, n289 );
nand U295 ( n289, n314, n172 );
nand U296 ( n288, n305, n173 );
not U297 ( n285, n194 );
nor U298 ( n273, n312, n194 );
nand U299 ( n194, n290, n291 );
nand U300 ( n291, n292, n293 );
nor U301 ( n293, n173, n294 );
nand U302 ( n294, n172, n169 );
nor U303 ( n292, n168, n177 );
nand U304 ( n290, n303, n295 );
nand U305 ( n295, n270, n296 );
nor U306 ( n296, n173, n297 );
nand U307 ( n297, n169, n177 );
nor U308 ( n270, n172, n168 );
endmodule


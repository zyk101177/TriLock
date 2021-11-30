
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

module b03_ori ( clk, reset, REQUEST1, REQUEST2, REQUEST3, REQUEST4, GRANT_O_REG_3_,
GRANT_O_REG_2_, GRANT_O_REG_1_, GRANT_O_REG_0_ );
input clk, reset, REQUEST1, REQUEST2, REQUEST3, REQUEST4;
output GRANT_O_REG_3_, GRANT_O_REG_2_, GRANT_O_REG_1_, GRANT_O_REG_0_;
wire STATO_REG_1_, n134, n124, n78, n73, n68, n63, n58, n53, n48, n43, n38,
n33, n28, n23, RU3_REG, RU1_REG, CODA0_REG_2_, CODA0_REG_1_,
CODA0_REG_0_, FU1_REG, FU2_REG, n83, n88, n93, n98, n103, n107, n111,
n115, n119, n129, n139, n144, n149, n154, RU2_REG, FU3_REG, FU4_REG,
CODA1_REG_2_, CODA1_REG_1_, CODA1_REG_0_, CODA2_REG_2_, CODA2_REG_1_,
CODA2_REG_0_, CODA3_REG_2_, CODA3_REG_1_, CODA3_REG_0_, RU4_REG,
GRANT_REG_3_, GRANT_REG_2_, GRANT_REG_1_, GRANT_REG_0_, n158, n1, n2,
n16, n20, n21, n22, n24, n25, n26, n27, n29, n30, n31, n32, n34, n35,
n36, n37, n39, n40, n41, n42, n44, n45, n46, n47, n49, n50, n51, n52,
n54, n55, n56, n57, n59, n60, n61, n62, n64, n65, n66, n67, n69, n70,
n71, n72, n74, n75, n76, n77, n79, n80, n81, n82, n84, n85, n86, n87,
n89, n90, n91, n92, n94, n95, n96, n97, n99, n100, n101, n102, n104,
n105, n106, n108, n109, n110, n112, n113, n114, n116, n117, n118,
n120, n121, n122, n123, n125, n126, n127, n128, n130, n131, n132,
n133, n135, n136, n137, n138, n140, n141, n142, n143, n145, n146,
n147, n148, n150, n151, n152, n153, n155, n156, n157, n159, n160,
n161, n162, n163;

dff RU3_REG_reg ( clk, reset, RU3_REG, n119 );
dff FU3_REG_reg ( clk, reset, FU3_REG, n129 );
dff RU1_REG_reg ( clk, reset, RU1_REG, n134 );
not U_inv0 ( n148, RU1_REG );
dff FU1_REG_reg ( clk, reset, FU1_REG, n124 );
dff RU4_REG_reg ( clk, reset, RU4_REG, n139 );
not U_inv1 ( n147, RU4_REG );
dff FU4_REG_reg ( clk, reset, FU4_REG, n149 );
dff RU2_REG_reg ( clk, reset, RU2_REG, n154 );
not U_inv2 ( n145, RU2_REG );
dff FU2_REG_reg ( clk, reset, FU2_REG, n144 );
dff STATO_REG_1__reg ( clk, reset, STATO_REG_1_, n158 );
dff CODA0_REG_0__reg ( clk, reset, CODA0_REG_0_, n33 );
not U_inv3 ( n151, CODA0_REG_0_ );
dff CODA1_REG_0__reg ( clk, reset, CODA1_REG_0_, n48 );
not U_inv4 ( n156, CODA1_REG_0_ );
dff CODA2_REG_0__reg ( clk, reset, CODA2_REG_0_, n63 );
not U_inv5 ( n160, CODA2_REG_0_ );
dff CODA3_REG_0__reg ( clk, reset, CODA3_REG_0_, n78 );
not U_inv6 ( n161, CODA3_REG_0_ );
dff CODA0_REG_1__reg ( clk, reset, CODA0_REG_1_, n28 );
not U_inv7 ( n152, CODA0_REG_1_ );
dff CODA1_REG_1__reg ( clk, reset, CODA1_REG_1_, n43 );
not U_inv8 ( n155, CODA1_REG_1_ );
dff CODA2_REG_1__reg ( clk, reset, CODA2_REG_1_, n58 );
not U_inv9 ( n159, CODA2_REG_1_ );
dff CODA3_REG_1__reg ( clk, reset, CODA3_REG_1_, n73 );
not U_inv10 ( n163, CODA3_REG_1_ );
dff CODA0_REG_2__reg ( clk, reset, CODA0_REG_2_, n23 );
not U_inv11 ( n146, CODA0_REG_2_ );
dff CODA1_REG_2__reg ( clk, reset, CODA1_REG_2_, n38 );
not U_inv12 ( n153, CODA1_REG_2_ );
dff CODA2_REG_2__reg ( clk, reset, CODA2_REG_2_, n53 );
not U_inv13 ( n157, CODA2_REG_2_ );
dff CODA3_REG_2__reg ( clk, reset, CODA3_REG_2_, n68 );
not U_inv14 ( n162, CODA3_REG_2_ );
dff GRANT_REG_0__reg ( clk, reset, GRANT_REG_0_, n98 );
dff GRANT_O_REG_0__reg ( clk, reset, GRANT_O_REG_0_, n115 );
dff GRANT_REG_1__reg ( clk, reset, GRANT_REG_1_, n93 );
dff GRANT_O_REG_1__reg ( clk, reset, GRANT_O_REG_1_, n111 );
dff GRANT_REG_2__reg ( clk, reset, GRANT_REG_2_, n88 );
dff GRANT_O_REG_2__reg ( clk, reset, GRANT_O_REG_2_, n107 );
dff GRANT_REG_3__reg ( clk, reset, GRANT_REG_3_, n83 );
dff GRANT_O_REG_3__reg ( clk, reset, GRANT_O_REG_3_, n103 );
dff STATO_REG_0__reg ( clk, reset, n158, n150 );
not U_inv15 ( n150, n158 );
nand U149 ( n54, STATO_REG_1_, n99 );
not U150 ( n1, n42 );
not U151 ( n2, n99 );
nor U152 ( n77, n146, n1 );
nor U153 ( n72, n152, n1 );
nor U154 ( n67, n151, n1 );
nor U155 ( n62, n1, n153 );
nor U156 ( n57, n1, n155 );
nor U157 ( n89, n1, n91 );
nand U158 ( n91, n92, n148 );
nor U159 ( n51, n1, n156 );
nor U160 ( n82, n1, n85 );
nand U161 ( n85, n148, n145 );
nor U162 ( n24, n25, n151 );
nor U163 ( n37, n25, n146 );
nor U164 ( n32, n25, n152 );
nand U165 ( n134, n104, n128 );
nand U166 ( n128, REQUEST1, n150 );
nand U167 ( n154, n121, n122 );
nand U168 ( n122, REQUEST2, n150 );
nand U169 ( n139, n123, n127 );
nand U170 ( n127, REQUEST4, n150 );
nand U171 ( n119, n130, n133 );
nand U172 ( n133, REQUEST3, n150 );
nor U173 ( n42, n2, STATO_REG_1_ );
nand U174 ( n99, n101, n102 );
or U175 ( n102, n104, FU1_REG );
nor U176 ( n101, n16, n105 );
not U177 ( n16, n25 );
nor U178 ( n96, n100, n1 );
nor U179 ( n100, n116, RU1_REG );
nor U180 ( n105, n106, n108 );
nand U181 ( n108, n158, n148 );
nor U182 ( n106, n109, n110 );
nor U183 ( n109, FU2_REG, n145 );
nand U184 ( n92, RU3_REG, n145 );
nand U185 ( n23, n94, n95 );
nand U186 ( n95, n2, CODA0_REG_2_ );
nor U187 ( n94, n96, n97 );
nor U188 ( n97, n54, n153 );
nand U189 ( n38, n75, n76 );
nand U190 ( n76, CODA1_REG_2_, n2 );
nor U191 ( n75, n77, n79 );
nor U192 ( n79, n157, n54 );
nand U193 ( n43, n70, n71 );
nand U194 ( n71, CODA1_REG_1_, n2 );
nor U195 ( n70, n72, n74 );
nor U196 ( n74, n159, n54 );
nand U197 ( n48, n65, n66 );
nand U198 ( n66, CODA1_REG_0_, n2 );
nor U199 ( n65, n67, n69 );
nor U200 ( n69, n160, n54 );
nand U201 ( n110, n112, n113 );
nand U202 ( n113, n114, n116 );
or U203 ( n112, n92, FU3_REG );
nor U204 ( n114, FU4_REG, n147 );
nand U205 ( n28, n86, n87 );
nand U206 ( n87, n2, CODA0_REG_1_ );
nor U207 ( n86, n89, n90 );
nor U208 ( n90, n54, n155 );
nand U209 ( n33, n80, n81 );
nand U210 ( n81, n2, CODA0_REG_0_ );
nor U211 ( n80, n82, n84 );
nor U212 ( n84, n156, n54 );
nand U213 ( n63, n49, n50 );
nand U214 ( n50, n2, CODA2_REG_0_ );
nor U215 ( n49, n51, n52 );
nor U216 ( n52, n161, n54 );
nand U217 ( n53, n60, n61 );
nand U218 ( n61, CODA2_REG_2_, n2 );
nor U219 ( n60, n62, n64 );
nor U220 ( n64, n162, n54 );
nand U221 ( n58, n55, n56 );
nand U222 ( n56, CODA2_REG_1_, n2 );
nor U223 ( n55, n57, n59 );
nor U224 ( n59, n163, n54 );
nor U225 ( n116, RU3_REG, RU2_REG );
nand U226 ( n25, STATO_REG_1_, n117 );
nand U227 ( n117, n118, n120 );
nor U228 ( n118, FU2_REG, FU1_REG );
nor U229 ( n120, FU4_REG, FU3_REG );
nand U230 ( n78, n40, n41 );
nand U231 ( n40, CODA3_REG_0_, n2 );
nand U232 ( n41, CODA2_REG_0_, n42 );
nand U233 ( n68, n46, n47 );
nand U234 ( n46, CODA3_REG_2_, n2 );
nand U235 ( n47, CODA2_REG_2_, n42 );
nand U236 ( n73, n44, n45 );
nand U237 ( n44, CODA3_REG_1_, n2 );
nand U238 ( n45, CODA2_REG_1_, n42 );
nand U239 ( n104, RU1_REG, n158 );
nand U240 ( n98, n20, n21 );
nand U241 ( n20, GRANT_REG_0_, n25 );
nand U242 ( n21, n22, n24 );
nor U243 ( n22, n152, n146 );
nand U244 ( n93, n26, n27 );
nand U245 ( n26, GRANT_REG_1_, n25 );
nand U246 ( n27, n24, n29 );
nor U247 ( n29, CODA0_REG_2_, CODA0_REG_1_ );
nand U248 ( n83, n35, n36 );
nand U249 ( n35, GRANT_REG_3_, n25 );
nand U250 ( n36, n37, n39 );
nor U251 ( n39, CODA0_REG_1_, CODA0_REG_0_ );
nand U252 ( n88, n30, n31 );
nand U253 ( n30, GRANT_REG_2_, n25 );
nand U254 ( n31, n32, n34 );
nor U255 ( n34, CODA0_REG_2_, CODA0_REG_0_ );
nand U256 ( n144, n121, n126 );
nand U257 ( n126, FU2_REG, n150 );
nand U258 ( n149, n123, n125 );
nand U259 ( n125, FU4_REG, n150 );
nand U260 ( n124, n104, n132 );
nand U261 ( n132, FU1_REG, n150 );
nand U262 ( n129, n130, n131 );
nand U263 ( n131, FU3_REG, n150 );
nand U264 ( n103, n142, n143 );
nand U265 ( n142, GRANT_REG_3_, n158 );
nand U266 ( n143, GRANT_O_REG_3_, n150 );
nand U267 ( n107, n140, n141 );
nand U268 ( n140, GRANT_REG_2_, n158 );
nand U269 ( n141, GRANT_O_REG_2_, n150 );
nand U270 ( n111, n137, n138 );
nand U271 ( n137, GRANT_REG_1_, n158 );
nand U272 ( n138, GRANT_O_REG_1_, n150 );
nand U273 ( n115, n135, n136 );
nand U274 ( n135, GRANT_REG_0_, n158 );
nand U275 ( n136, GRANT_O_REG_0_, n150 );
nand U276 ( n121, RU2_REG, n158 );
nand U277 ( n123, RU4_REG, n158 );
nand U278 ( n130, RU3_REG, n158 );
endmodule


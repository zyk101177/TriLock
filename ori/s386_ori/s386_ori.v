
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


module s386_ori ( clk, reset, v6, v5, v4, v3, v2, v1, v0, v13_D_12, v13_D_11,
v13_D_10, v13_D_9, v13_D_8, v13_D_7, v13_D_6 );
input clk, reset, v6, v5, v4, v3, v2, v1, v0;
output v13_D_12, v13_D_11, v13_D_10, v13_D_9, v13_D_8, v13_D_7, v13_D_6;
wire v11, v8, v7, v12, v10, v9, new_Lv13_D_5_, new_Lv13_D_4_,
new_Lv13_D_3_, new_Lv13_D_2_, new_Lv13_D_1_, new_Lv13_D_0_, n1, n2,
n3, n4, n5, n6, n9, n11, n12, n15, n16, n17, n18, n19, n20, n21, n22,
n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
n106, n107, n108, n109, n110;

dff v7_reg ( clk, reset, v7, new_Lv13_D_0_ );
not U_inv0 ( n106, v7 );
dff v8_reg ( clk, reset, v8, new_Lv13_D_1_ );
not U_inv1 ( n108, v8 );
dff v11_reg ( clk, reset, v11, new_Lv13_D_4_ );
not U_inv2 ( n110, v11 );
dff v12_reg ( clk, reset, v12, new_Lv13_D_5_ );
dff v9_reg ( clk, reset, v9, new_Lv13_D_2_ );
not U_inv3 ( n109, v9 );
dff v10_reg ( clk, reset, v10, new_Lv13_D_3_ );
not U_inv4 ( n107, v10 );
not U121 ( n12, n80 );
not U122 ( n6, n50 );
nand U123 ( n40, n82, n25 );
not U124 ( n4, n69 );
nand U125 ( n36, n68, n69 );
nor U126 ( n68, n16, n106 );
nand U127 ( v13_D_7, n27, n28 );
or U128 ( n28, n106, n29 );
nor U129 ( n32, n49, n110 );
nand U130 ( n50, n93, n107 );
nand U131 ( n93, n94, n95 );
nand U132 ( n94, n12, n55 );
nand U133 ( n95, n96, n17 );
not U134 ( n17, n82 );
nand U135 ( v13_D_11, n85, n86 );
nand U136 ( n86, n25, n87 );
and U137 ( n85, n50, n19 );
nand U138 ( n87, n39, n88 );
not U139 ( n11, n26 );
nand U140 ( n24, n25, n26 );
nand U141 ( new_Lv13_D_1_, n63, n64 );
nor U142 ( n64, n65, n66 );
nor U143 ( n63, n72, n73 );
nand U144 ( n66, n67, n36 );
nand U145 ( new_Lv13_D_5_, n37, n38 );
or U146 ( n38, n39, n40 );
nor U147 ( n37, n32, n41 );
nor U148 ( n41, n42, n43 );
nor U149 ( n65, n16, n46 );
and U150 ( n25, n96, n107 );
nand U151 ( new_Lv13_D_4_, n44, n45 );
nor U152 ( n44, n47, n48 );
and U153 ( n45, n27, n46 );
nor U154 ( n48, n40, n106 );
nand U155 ( n80, n106, n108 );
not U156 ( n1, n59 );
nand U157 ( new_Lv13_D_0_, n102, n29 );
nor U158 ( n102, n2, n77 );
not U159 ( n2, n27 );
and U160 ( n47, n15, n32 );
nand U161 ( n23, n110, n106 );
nor U162 ( n60, n61, n62 );
nand U163 ( n62, n18, n15 );
not U164 ( n9, n55 );
not U165 ( n18, v0 );
nor U166 ( n69, n40, v11 );
nor U167 ( n82, n18, v1 );
nor U168 ( n33, n4, n34 );
nand U169 ( n34, n35, n11 );
or U170 ( n35, v7, v2 );
nand U171 ( v13_D_6, n30, n31 );
nand U172 ( n31, v5, n32 );
nor U173 ( n30, n5, n33 );
not U174 ( n5, n36 );
nand U175 ( n29, n103, v11 );
nor U176 ( n103, v8, n40 );
nand U177 ( n27, n105, n69 );
nor U178 ( n105, v4, n11 );
nand U179 ( n49, n78, n79 );
nor U180 ( n79, n80, n81 );
and U181 ( n78, n82, v12 );
nand U182 ( n81, n107, n109 );
nor U183 ( n26, n108, v3 );
nand U184 ( n55, v0, n97 );
nand U185 ( n97, v1, n109 );
not U186 ( n16, v4 );
nand U187 ( n19, n91, n92 );
nor U188 ( n92, v9, n59 );
nor U189 ( n91, n18, n107 );
nand U190 ( v13_D_9, n19, n20 );
nand U191 ( n20, n21, n22 );
nor U192 ( n22, v1, n23 );
nor U193 ( n21, n16, n24 );
nor U194 ( v13_D_8, v6, n19 );
nand U195 ( n88, n89, n26 );
nor U196 ( n89, v4, v11 );
nor U197 ( v13_D_10, n61, n98 );
nand U198 ( n98, v1, n99 );
nand U199 ( n99, v10, n100 );
nand U200 ( n100, v5, v0 );
not U201 ( n15, v5 );
nor U202 ( v13_D_12, n83, n84 );
nand U203 ( n83, v10, n18 );
or U204 ( n84, n61, n15 );
nand U205 ( n43, n76, v3 );
nor U206 ( n76, n108, n4 );
nand U207 ( n73, n74, n75 );
nand U208 ( n74, n77, v8 );
nand U209 ( n75, n3, n42 );
not U210 ( n3, n43 );
nand U211 ( n46, n71, v2 );
nor U212 ( n71, v8, n4 );
nor U213 ( n96, v9, v12 );
nand U214 ( n67, n70, v5 );
nor U215 ( n70, n29, n106 );
nand U216 ( n61, v9, n1 );
nand U217 ( n59, n101, n12 );
nor U218 ( n101, v12, v11 );
and U219 ( n77, n104, v11 );
nor U220 ( n104, v7, n40 );
nand U221 ( n39, n90, v7 );
nor U222 ( n90, n108, n110 );
nand U223 ( new_Lv13_D_2_, n56, n57 );
nand U224 ( n57, n58, v1 );
nor U225 ( n56, n6, n60 );
nor U226 ( n58, n59, n18 );
nor U227 ( n72, v11, n49 );
nand U228 ( new_Lv13_D_3_, n50, n51 );
nand U229 ( n51, n1, n52 );
nand U230 ( n52, n9, n53 );
nand U231 ( n53, n54, v1 );
nand U232 ( n42, v2, n106 );
nor U233 ( n54, v5, n107 );
endmodule


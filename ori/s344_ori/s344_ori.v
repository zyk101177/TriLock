
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


module s344_ori ( clk, reset, START, B0, B1, B2, B3, A0, A1, A2, A3, P4, P5, P6, P7,
P0, P1, P2, P3, CNTVCON2, CNTVCO2, READY );
input clk, reset, START, B0, B1, B2, B3, A0, A1, A2, A3;
output P4, P5, P6, P7, P0, P1, P2, P3, CNTVCON2, CNTVCO2, READY;
wire CT2, CT1, CT0, ACVQN3, ACVQN2, ACVQN1, ACVQN0, MRVQN3, MRVQN2, MRVQN1,
MRVQN0, AX3, AX2, AX1, AX0, n72, n67, n57, n62, n42, n47, n52, n77,
n82, n87, n92, n1, n2, n8, n10, n12, n17, n18, n19, n20, n21, n22,
n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
n37, n38, n39, n40, n41, n43, n44, n45, n46, n48, n49, n50, n51, n53,
n54, n55, n56, n58, n59, n60, n61, n63, n64, n65, n66, n68, n69, n70,
n71, n73, n74, n75, n76, n78, n79, n80, n81, n83, n84, n85, n86, n88,
n89, n90, n91, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
n114, n115, n116, n117, n118, n119, n120;

dff CT0_reg ( clk, reset, CT0, n52 );
not U_inv0 ( n120, CT0 );
dff CT2_reg ( clk, reset, CT2, n42 );
dff CT1_reg ( clk, reset, CT1, n47 );
dff AX3_reg ( clk, reset, AX3, n119 );
dff AX2_reg ( clk, reset, AX2, n118 );
dff AX1_reg ( clk, reset, AX1, n117 );
dff AX0_reg ( clk, reset, AX0, n116 );
dff MRVQN3_reg ( clk, reset, MRVQN3, n77 );
not U_inv1 ( P3, MRVQN3 );
dff MRVQN2_reg ( clk, reset, MRVQN2, n82 );
not U_inv2 ( P2, MRVQN2 );
dff MRVQN1_reg ( clk, reset, MRVQN1, n87 );
not U_inv3 ( P1, MRVQN1 );
dff MRVQN0_reg ( clk, reset, MRVQN0, n92 );
not U_inv4 ( P0, MRVQN0 );
dff ACVQN3_reg ( clk, reset, ACVQN3, n57 );
not U_inv5 ( P7, ACVQN3 );
dff ACVQN2_reg ( clk, reset, ACVQN2, n62 );
not U_inv6 ( P6, ACVQN2 );
dff ACVQN1_reg ( clk, reset, ACVQN1, n67 );
not U_inv7 ( P5, ACVQN1 );
dff ACVQN0_reg ( clk, reset, ACVQN0, n72 );
not U_inv8 ( P4, ACVQN0 );
not U123 ( n1, n29 );
not U124 ( READY, n106 );
not U125 ( CNTVCO2, CNTVCON2 );
nor U126 ( n77, n44, n45 );
nor U127 ( n44, n29, n50 );
nor U128 ( n45, n46, n48 );
nand U129 ( n50, n51, n53 );
nand U130 ( n72, n17, n55 );
nand U131 ( n55, n56, n58 );
nand U132 ( n58, n29, P4 );
nand U133 ( n56, n1, n59 );
nand U134 ( n67, n17, n69 );
nand U135 ( n69, n70, n71 );
nand U136 ( n71, n29, P5 );
nand U137 ( n70, n1, n73 );
nand U138 ( n62, n17, n83 );
nand U139 ( n83, n84, n85 );
nand U140 ( n85, n29, P6 );
nand U141 ( n84, n1, n86 );
not U142 ( n8, n76 );
not U143 ( n10, n63 );
nand U144 ( n86, n88, n89 );
nand U145 ( n88, n95, n8 );
nand U146 ( n89, n90, n91 );
nand U147 ( n91, n93, n76 );
not U148 ( n12, n53 );
nand U149 ( n73, n74, n75 );
nand U150 ( n74, n81, n10 );
nand U151 ( n75, n76, n78 );
nand U152 ( n78, n79, n63 );
nand U153 ( n29, n106, n20 );
nand U154 ( n59, n60, n61 );
nand U155 ( n60, n68, n12 );
nand U156 ( n61, n63, n64 );
nand U157 ( n64, n65, n66 );
nor U158 ( n65, P5, n12 );
not U159 ( n2, n20 );
nand U160 ( n106, n113, CT2 );
nor U161 ( n113, CT1, n120 );
nand U162 ( CNTVCON2, n115, CT2 );
and U163 ( n115, CT1, CT0 );
not U164 ( n17, START );
nand U165 ( n47, n108, n109 );
nand U166 ( n109, n110, n111 );
nand U167 ( n108, CT1, n52 );
nor U168 ( n110, READY, n120 );
and U169 ( n52, n112, n17 );
nand U170 ( n112, CT0, n106 );
nor U171 ( n46, B3, READY );
nor U172 ( n30, B0, READY );
nor U173 ( n35, B1, READY );
nor U174 ( n40, B2, READY );
nor U175 ( n92, n27, n28 );
nor U176 ( n28, MRVQN1, n29 );
nor U177 ( n27, n30, n31 );
nand U178 ( n31, n32, n29 );
nor U179 ( n87, n33, n34 );
nor U180 ( n34, MRVQN2, n29 );
nor U181 ( n33, n35, n36 );
nand U182 ( n36, n37, n29 );
nor U183 ( n82, n38, n39 );
nor U184 ( n39, MRVQN3, n29 );
nor U185 ( n38, n40, n41 );
nand U186 ( n41, n43, n29 );
nor U187 ( n111, START, CT1 );
nand U188 ( n57, n96, n97 );
nand U189 ( n97, n29, ACVQN3 );
nor U190 ( n96, START, n98 );
and U191 ( n98, n1, n90 );
nor U192 ( n42, START, n114 );
xnor U193 ( n114, n115, CT2 );
nand U194 ( n116, n18, n19 );
nand U195 ( n19, AX0, n20 );
nand U196 ( n18, A0, n2 );
nand U197 ( n117, n21, n22 );
nand U198 ( n22, AX1, n20 );
nand U199 ( n21, A1, n2 );
nand U200 ( n118, n23, n24 );
nand U201 ( n24, AX2, n20 );
nand U202 ( n23, A2, n2 );
nand U203 ( n119, n25, n26 );
nand U204 ( n26, AX3, n20 );
nand U205 ( n25, A3, n2 );
nand U206 ( n66, AX1, P0 );
nor U207 ( n63, n103, n68 );
and U208 ( n103, n12, n104 );
nand U209 ( n104, n66, ACVQN1 );
nor U210 ( n76, n101, n81 );
and U211 ( n101, n10, n102 );
nand U212 ( n102, n80, ACVQN2 );
nor U213 ( n90, n99, n95 );
and U214 ( n99, n8, n100 );
nand U215 ( n100, n94, ACVQN3 );
nand U216 ( n53, n105, AX0 );
nor U217 ( n105, MRVQN0, ACVQN0 );
nor U218 ( n68, n66, ACVQN1 );
nand U219 ( n80, AX2, P0 );
nor U220 ( n81, n80, ACVQN2 );
nand U221 ( n20, n107, n120 );
nor U222 ( n107, CT2, CT1 );
nand U223 ( n48, n49, n29 );
nand U224 ( n49, READY, MRVQN3 );
nand U225 ( n94, AX3, P0 );
nand U226 ( n32, READY, MRVQN0 );
nand U227 ( n37, READY, MRVQN1 );
nand U228 ( n43, READY, MRVQN2 );
nor U229 ( n95, n94, ACVQN3 );
and U230 ( n93, ACVQN3, n94 );
and U231 ( n79, ACVQN2, n80 );
nand U232 ( n51, n54, ACVQN0 );
nand U233 ( n54, AX0, P0 );
endmodule


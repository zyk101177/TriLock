
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

module b04_ori ( clk, reset, RESTART, AVERAGE, ENABLE, DATA_IN_7_, DATA_IN_6_,
DATA_IN_5_, DATA_IN_4_, DATA_IN_3_, DATA_IN_2_, DATA_IN_1_, DATA_IN_0_,
DATA_OUT_REG_7_, DATA_OUT_REG_6_, DATA_OUT_REG_5_, DATA_OUT_REG_4_,
DATA_OUT_REG_3_, DATA_OUT_REG_2_, DATA_OUT_REG_1_, DATA_OUT_REG_0_ );
input clk, reset, RESTART, AVERAGE, ENABLE, DATA_IN_7_, DATA_IN_6_, DATA_IN_5_,
DATA_IN_4_, DATA_IN_3_, DATA_IN_2_, DATA_IN_1_, DATA_IN_0_;
output DATA_OUT_REG_7_, DATA_OUT_REG_6_, DATA_OUT_REG_5_, DATA_OUT_REG_4_,
DATA_OUT_REG_3_, DATA_OUT_REG_2_, DATA_OUT_REG_1_, DATA_OUT_REG_0_;
wire STATO_REG_1_, n348, n344, n340, n336, n332, n328, n324, n320, n315,
n310, n305, n300, n295, n290, n285, n280, n275, n270, n265, n260,
n255, n250, n245, n240, n235, n230, n225, n220, n215, n210, n205,
n200, n195, n190, n185, n180, n175, n170, n165, n160, n155, n150,
n145, n140, n135, n130, n125, n120, n115, n110, n105, n100, n95, n90,
n85, n80, n75, n70, n65, n60, n55, n50, n45, n40, STATO_REG_0_,
RMAX_REG_7_, RMAX_REG_6_, RMAX_REG_5_, RMAX_REG_4_, RMAX_REG_3_,
RMAX_REG_2_, RMAX_REG_1_, RMAX_REG_0_, RMIN_REG_7_, RMIN_REG_6_,
RMIN_REG_5_, RMIN_REG_4_, RMIN_REG_3_, RMIN_REG_2_, RMIN_REG_1_,
RMIN_REG_0_, RLAST_REG_7_, RLAST_REG_6_, RLAST_REG_5_, RLAST_REG_4_,
RLAST_REG_3_, RLAST_REG_2_, RLAST_REG_1_, RLAST_REG_0_, REG1_REG_7_,
REG1_REG_6_, REG1_REG_5_, REG1_REG_4_, REG1_REG_3_, REG1_REG_2_,
REG1_REG_1_, REG1_REG_0_, REG2_REG_7_, REG2_REG_6_, REG2_REG_5_,
REG2_REG_4_, REG2_REG_3_, REG2_REG_2_, REG2_REG_1_, REG2_REG_0_,
REG3_REG_7_, REG3_REG_6_, REG3_REG_5_, REG3_REG_4_, REG3_REG_3_,
REG3_REG_2_, REG3_REG_1_, REG3_REG_0_, REG4_REG_7_, REG4_REG_6_,
REG4_REG_5_, REG4_REG_4_, REG4_REG_3_, REG4_REG_2_, REG4_REG_1_,
REG4_REG_0_, n1, n2, n3, n5, n7, n8, n10, n11, n12, n14, n15, n17,
n18, n22, n26, n29, n32, n34, n35, n36, n37, n38, n39, n41, n42, n43,
n44, n46, n47, n48, n49, n51, n52, n53, n54, n56, n57, n58, n59, n61,
n62, n63, n64, n66, n67, n68, n69, n71, n72, n73, n74, n76, n77, n78,
n81, n82, n83, n84, n86, n87, n88, n89, n91, n92, n93, n94, n96, n97,
n98, n99, n101, n102, n103, n104, n106, n107, n108, n109, n111, n112,
n113, n114, n116, n117, n118, n119, n121, n122, n123, n124, n126,
n127, n128, n129, n131, n132, n133, n134, n136, n137, n138, n139,
n141, n142, n143, n144, n146, n147, n148, n149, n151, n152, n153,
n154, n156, n157, n158, n159, n161, n162, n163, n164, n166, n167,
n168, n169, n171, n172, n173, n174, n176, n177, n178, n179, n181,
n182, n183, n184, n186, n187, n188, n189, n191, n192, n193, n194,
n196, n197, n198, n199, n201, n202, n203, n204, n206, n207, n208,
n209, n211, n212, n213, n214, n216, n217, n218, n219, n221, n222,
n223, n224, n226, n227, n228, n229, n231, n232, n233, n234, n236,
n237, n238, n239, n241, n242, n243, n244, n246, n247, n248, n249,
n251, n252, n253, n254, n256, n257, n258, n259, n261, n262, n263,
n264, n266, n267, n268, n269, n271, n272, n273, n274, n276, n277,
n278, n279, n281, n282, n283, n284, n286, n287, n288, n289, n291,
n292, n293, n294, n296, n297, n298, n299, n301, n302, n303, n304,
n306, n307, n308, n309, n311, n312, n313, n314, n316, n317, n318,
n319, n321, n322, n323, n325, n326, n327, n329, n330, n331, n333,
n334, n335, n337, n338, n339, n341, n342, n343, n345, n346, n347,
n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
n536, n537, n538, n539, n540, n541, n542;

dff STATO_REG_0__reg ( clk, reset, STATO_REG_0_, n521 );
not U_inv0 ( n529, STATO_REG_0_ );
dff STATO_REG_1__reg ( clk, reset, STATO_REG_1_, n537 );
not U_inv1 ( n526, STATO_REG_1_ );
dff RMAX_REG_0__reg ( clk, reset, RMAX_REG_0_, n75 );
dff RMAX_REG_1__reg ( clk, reset, RMAX_REG_1_, n70 );
not U_inv2 ( n527, RMAX_REG_1_ );
dff RMAX_REG_2__reg ( clk, reset, RMAX_REG_2_, n65 );
dff RMAX_REG_3__reg ( clk, reset, RMAX_REG_3_, n60 );
not U_inv3 ( n528, RMAX_REG_3_ );
dff RMAX_REG_4__reg ( clk, reset, RMAX_REG_4_, n55 );
not U_inv4 ( n530, RMAX_REG_4_ );
dff RMAX_REG_5__reg ( clk, reset, RMAX_REG_5_, n50 );
not U_inv5 ( n524, RMAX_REG_5_ );
dff RMAX_REG_6__reg ( clk, reset, RMAX_REG_6_, n45 );
not U_inv6 ( n531, RMAX_REG_6_ );
dff RMAX_REG_7__reg ( clk, reset, RMAX_REG_7_, n40 );
not U_inv7 ( n536, RMAX_REG_7_ );
dff RMIN_REG_4__reg ( clk, reset, RMIN_REG_4_, n95 );
not U_inv8 ( n523, RMIN_REG_4_ );
dff RMIN_REG_5__reg ( clk, reset, RMIN_REG_5_, n90 );
not U_inv9 ( n532, RMIN_REG_5_ );
dff RMIN_REG_6__reg ( clk, reset, RMIN_REG_6_, n85 );
not U_inv10 ( n534, RMIN_REG_6_ );
dff RMIN_REG_7__reg ( clk, reset, RMIN_REG_7_, n80 );
not U_inv11 ( n525, RMIN_REG_7_ );
dff RMIN_REG_0__reg ( clk, reset, RMIN_REG_0_, n115 );
dff RMIN_REG_1__reg ( clk, reset, RMIN_REG_1_, n110 );
dff RMIN_REG_2__reg ( clk, reset, RMIN_REG_2_, n105 );
dff RMIN_REG_3__reg ( clk, reset, RMIN_REG_3_, n100 );
not U_inv12 ( n522, RMIN_REG_3_ );
dff REG1_REG_0__reg ( clk, reset, REG1_REG_0_, n195 );
dff REG2_REG_0__reg ( clk, reset, REG2_REG_0_, n235 );
dff REG3_REG_0__reg ( clk, reset, REG3_REG_0_, n275 );
dff REG4_REG_0__reg ( clk, reset, REG4_REG_0_, n315 );
dff REG1_REG_1__reg ( clk, reset, REG1_REG_1_, n190 );
dff REG2_REG_1__reg ( clk, reset, REG2_REG_1_, n230 );
dff REG3_REG_1__reg ( clk, reset, REG3_REG_1_, n270 );
dff REG4_REG_1__reg ( clk, reset, REG4_REG_1_, n310 );
dff REG1_REG_2__reg ( clk, reset, REG1_REG_2_, n185 );
dff REG2_REG_2__reg ( clk, reset, REG2_REG_2_, n225 );
dff REG3_REG_2__reg ( clk, reset, REG3_REG_2_, n265 );
dff REG4_REG_2__reg ( clk, reset, REG4_REG_2_, n305 );
dff REG1_REG_3__reg ( clk, reset, REG1_REG_3_, n180 );
dff REG2_REG_3__reg ( clk, reset, REG2_REG_3_, n220 );
dff REG3_REG_3__reg ( clk, reset, REG3_REG_3_, n260 );
dff REG4_REG_3__reg ( clk, reset, REG4_REG_3_, n300 );
dff REG1_REG_4__reg ( clk, reset, REG1_REG_4_, n175 );
dff REG2_REG_4__reg ( clk, reset, REG2_REG_4_, n215 );
dff REG3_REG_4__reg ( clk, reset, REG3_REG_4_, n255 );
dff REG4_REG_4__reg ( clk, reset, REG4_REG_4_, n295 );
dff REG1_REG_5__reg ( clk, reset, REG1_REG_5_, n170 );
dff REG2_REG_5__reg ( clk, reset, REG2_REG_5_, n210 );
dff REG3_REG_5__reg ( clk, reset, REG3_REG_5_, n250 );
dff REG4_REG_5__reg ( clk, reset, REG4_REG_5_, n290 );
dff REG1_REG_6__reg ( clk, reset, REG1_REG_6_, n165 );
dff REG2_REG_6__reg ( clk, reset, REG2_REG_6_, n205 );
dff REG3_REG_6__reg ( clk, reset, REG3_REG_6_, n245 );
dff REG4_REG_6__reg ( clk, reset, REG4_REG_6_, n285 );
not U_inv13 ( n533, REG4_REG_6_ );
dff REG1_REG_7__reg ( clk, reset, REG1_REG_7_, n160 );
dff REG2_REG_7__reg ( clk, reset, REG2_REG_7_, n200 );
dff REG3_REG_7__reg ( clk, reset, REG3_REG_7_, n240 );
dff REG4_REG_7__reg ( clk, reset, REG4_REG_7_, n280 );
not U_inv14 ( n535, REG4_REG_7_ );
dff RLAST_REG_0__reg ( clk, reset, RLAST_REG_0_, n155 );
dff DATA_OUT_REG_0__reg ( clk, reset, DATA_OUT_REG_0_, n348 );
dff RLAST_REG_1__reg ( clk, reset, RLAST_REG_1_, n150 );
dff DATA_OUT_REG_1__reg ( clk, reset, DATA_OUT_REG_1_, n344 );
dff RLAST_REG_2__reg ( clk, reset, RLAST_REG_2_, n145 );
dff DATA_OUT_REG_2__reg ( clk, reset, DATA_OUT_REG_2_, n340 );
dff RLAST_REG_3__reg ( clk, reset, RLAST_REG_3_, n140 );
dff DATA_OUT_REG_3__reg ( clk, reset, DATA_OUT_REG_3_, n336 );
dff RLAST_REG_4__reg ( clk, reset, RLAST_REG_4_, n135 );
dff DATA_OUT_REG_4__reg ( clk, reset, DATA_OUT_REG_4_, n332 );
dff RLAST_REG_5__reg ( clk, reset, RLAST_REG_5_, n130 );
dff DATA_OUT_REG_5__reg ( clk, reset, DATA_OUT_REG_5_, n328 );
dff RLAST_REG_6__reg ( clk, reset, RLAST_REG_6_, n125 );
dff DATA_OUT_REG_6__reg ( clk, reset, DATA_OUT_REG_6_, n324 );
dff RLAST_REG_7__reg ( clk, reset, RLAST_REG_7_, n120 );
dff DATA_OUT_REG_7__reg ( clk, reset, DATA_OUT_REG_7_, n320 );
or U524 ( n537, n539, n435 );
not U525 ( n15, n124 );
not U526 ( n7, n189 );
or U527 ( n169, n154, n168 );
not U528 ( n11, n302 );
not U529 ( n10, n153 );
not U530 ( n17, n283 );
nand U531 ( n152, n15, n153 );
nand U532 ( n124, n126, n127 );
nor U533 ( n126, n104, n88 );
nand U534 ( n189, n11, n151 );
nand U535 ( n154, n279, n15 );
nor U536 ( n279, n10, n286 );
nor U537 ( n286, n7, n287 );
nor U538 ( n287, n11, n151 );
not U539 ( n12, n277 );
nand U540 ( n162, n163, n164 );
nand U541 ( n163, n171, n1 );
nand U542 ( n164, n166, n167 );
nand U543 ( n167, n168, n154 );
xor U544 ( n168, n189, n171 );
nor U545 ( n259, n262, n263 );
nor U546 ( n262, n8, n264 );
nand U547 ( n302, n304, n17 );
nor U548 ( n304, n14, n137 );
not U549 ( n14, n121 );
nand U550 ( n153, n303, n302 );
nand U551 ( n303, n137, n306 );
nand U552 ( n306, n17, n121 );
nand U553 ( n283, n312, n281 );
nor U554 ( n312, n106, n91 );
xnor U555 ( n127, n121, n17 );
and U556 ( n104, n282, n283 );
nand U557 ( n282, n106, n284 );
nand U558 ( n284, n281, n18 );
not U559 ( n18, n91 );
xor U560 ( n88, n281, n18 );
xor U561 ( n151, n12, n288 );
xnor U562 ( n288, n8, n276 );
nand U563 ( n318, n314, n313 );
nand U564 ( n299, n333, n334 );
nand U565 ( n333, n307, n311 );
nand U566 ( n334, n335, n309 );
or U567 ( n335, n307, n311 );
nand U568 ( n277, n294, n296 );
nand U569 ( n294, n299, n301 );
nand U570 ( n296, n297, n298 );
or U571 ( n297, n299, n301 );
nand U572 ( n321, n351, n352 );
or U573 ( n351, n318, n317 );
nand U574 ( n352, n353, n319 );
nand U575 ( n353, n317, n318 );
nand U576 ( n307, n342, n343 );
nand U577 ( n342, n321, n325 );
nand U578 ( n343, n345, n323 );
or U579 ( n345, n321, n325 );
and U580 ( n166, n89, n169 );
nor U581 ( n263, n22, n12 );
not U582 ( n22, n276 );
nor U583 ( n266, n274, n264 );
nor U584 ( n274, n263, n278 );
and U585 ( n171, n257, n258 );
nand U586 ( n258, n259, n5 );
nand U587 ( n257, n266, n261 );
not U588 ( n5, n261 );
nor U589 ( n264, n276, n277 );
nand U590 ( n144, n146, n147 );
or U591 ( n146, n151, n119 );
nand U592 ( n147, n148, n149 );
nand U593 ( n149, n151, n152 );
and U594 ( n148, n89, n154 );
xor U595 ( n137, n299, n326 );
xor U596 ( n326, n298, n301 );
nor U597 ( n186, n169, n188 );
nand U598 ( n188, n189, n89 );
xnor U599 ( n121, n307, n308 );
xor U600 ( n308, n309, n311 );
xor U601 ( n106, n321, n322 );
xor U602 ( n322, n323, n325 );
xnor U603 ( n91, n316, n317 );
xnor U604 ( n316, n318, n319 );
nand U605 ( n132, n133, n134 );
nand U606 ( n133, n137, n1 );
nand U607 ( n134, n136, n89 );
xnor U608 ( n136, n15, n10 );
nand U609 ( n123, n124, n89 );
nor U610 ( n114, n117, n118 );
nor U611 ( n118, n119, n121 );
nor U612 ( n117, n122, n123 );
nor U613 ( n122, n126, n127 );
not U614 ( n26, n178 );
not U615 ( n1, n119 );
nand U616 ( n99, n101, n102 );
nand U617 ( n102, n103, n89 );
nand U618 ( n101, n106, n1 );
xor U619 ( n103, n104, n88 );
nand U620 ( n84, n86, n87 );
nand U621 ( n87, n88, n89 );
nand U622 ( n86, n1, n91 );
not U623 ( n2, n47 );
nand U624 ( n369, n173, n34 );
nor U625 ( n173, n526, n541 );
nor U626 ( n193, n369, n35 );
not U627 ( n541, n537 );
buf U628 ( n539, n538 );
not U629 ( n3, n58 );
xnor U630 ( n281, n313, n314 );
not U631 ( n8, n278 );
not U632 ( n29, n364 );
nor U633 ( n368, n535, n364 );
nor U634 ( n271, n531, n34 );
not U635 ( n542, n537 );
nand U636 ( n439, n32, n454 );
not U637 ( n32, n521 );
nand U638 ( n454, n529, n35 );
buf U639 ( n540, n538 );
nand U640 ( n231, n536, n525 );
not U641 ( n34, RESTART );
nand U642 ( n313, n358, n359 );
nand U643 ( n358, RESTART, RMAX_REG_0_ );
nand U644 ( n359, DATA_IN_0_, n34 );
nand U645 ( n328, n158, n159 );
and U646 ( n158, n181, n182 );
nor U647 ( n159, n161, n162 );
nand U648 ( n181, DATA_OUT_REG_5_, n541 );
nand U649 ( n314, n360, n361 );
nand U650 ( n360, RMIN_REG_0_, RESTART );
nand U651 ( n361, REG4_REG_0_, n34 );
and U652 ( n317, n356, n357 );
nand U653 ( n356, RESTART, RMIN_REG_1_ );
nand U654 ( n357, REG4_REG_1_, n34 );
nand U655 ( n332, n141, n142 );
and U656 ( n141, n156, n157 );
nor U657 ( n142, n143, n144 );
nand U658 ( n156, DATA_OUT_REG_4_, n541 );
nand U659 ( n324, n183, n184 );
and U660 ( n183, n362, n363 );
nor U661 ( n184, n186, n187 );
nand U662 ( n362, DATA_OUT_REG_6_, n541 );
nand U663 ( n319, n354, n355 );
nand U664 ( n354, RESTART, RMAX_REG_1_ );
nand U665 ( n355, DATA_IN_1_, n34 );
nand U666 ( n325, n349, n350 );
nand U667 ( n349, RESTART, RMAX_REG_2_ );
nand U668 ( n350, DATA_IN_2_, n34 );
nand U669 ( n323, n346, n347 );
nand U670 ( n346, RESTART, RMIN_REG_2_ );
nand U671 ( n347, REG4_REG_2_, n34 );
nand U672 ( n311, n339, n341 );
nand U673 ( n339, RESTART, RMAX_REG_3_ );
nand U674 ( n341, DATA_IN_3_, n34 );
nand U675 ( n336, n128, n129 );
and U676 ( n128, n138, n139 );
nor U677 ( n129, n131, n132 );
nand U678 ( n138, DATA_OUT_REG_3_, n541 );
nand U679 ( n178, n196, n197 );
nand U680 ( n197, REG4_REG_7_, DATA_IN_7_ );
nand U681 ( n196, n198, n199 );
nand U682 ( n199, n36, n535 );
nand U683 ( n203, n206, n207 );
nand U684 ( n206, REG4_REG_5_, DATA_IN_5_ );
nand U685 ( n207, n208, n209 );
or U686 ( n209, REG4_REG_5_, DATA_IN_5_ );
nor U687 ( n224, REG4_REG_2_, DATA_IN_2_ );
nor U688 ( n204, DATA_IN_6_, n203 );
nand U689 ( n219, n221, n222 );
nand U690 ( n221, REG4_REG_2_, DATA_IN_2_ );
nand U691 ( n222, n223, REG4_REG_1_ );
nor U692 ( n223, n224, n43 );
nor U693 ( n213, n216, n217 );
nor U694 ( n217, REG4_REG_3_, DATA_IN_3_ );
nor U695 ( n216, n218, n219 );
and U696 ( n218, DATA_IN_3_, REG4_REG_3_ );
nor U697 ( n198, n201, n202 );
and U698 ( n202, n203, DATA_IN_6_ );
nor U699 ( n201, n204, n533 );
nand U700 ( n208, n211, n212 );
nand U701 ( n212, REG4_REG_4_, DATA_IN_4_ );
nand U702 ( n211, n213, n214 );
or U703 ( n214, DATA_IN_4_, REG4_REG_4_ );
nand U704 ( n89, n191, n192 );
nand U705 ( n191, n174, n173 );
nand U706 ( n192, n193, n194 );
nor U707 ( n194, AVERAGE, n26 );
or U708 ( n340, n109, n111 );
nand U709 ( n111, n112, n113 );
nand U710 ( n109, n114, n116 );
nand U711 ( n112, DATA_OUT_REG_2_, n541 );
nand U712 ( n119, n172, n173 );
nor U713 ( n172, n174, n176 );
nor U714 ( n176, n177, RESTART );
nor U715 ( n177, n178, n179 );
nand U716 ( n344, n96, n97 );
and U717 ( n96, n107, n108 );
nor U718 ( n97, n98, n99 );
nand U719 ( n107, DATA_OUT_REG_1_, n541 );
nand U720 ( n348, n81, n82 );
and U721 ( n81, n93, n94 );
nor U722 ( n82, n83, n84 );
nand U723 ( n93, DATA_OUT_REG_0_, n542 );
not U724 ( n43, DATA_IN_1_ );
nand U725 ( n47, n529, n463 );
nand U726 ( n463, n464, STATO_REG_1_ );
nor U727 ( n464, n465, n78 );
nor U728 ( n465, n494, n495 );
nor U729 ( n510, n512, n513 );
nor U730 ( n512, RMIN_REG_3_, n41 );
nand U731 ( n513, n514, n515 );
or U732 ( n514, n42, RMIN_REG_2_ );
nor U733 ( n502, n504, n505 );
nor U734 ( n504, RMIN_REG_5_, n38 );
nand U735 ( n505, n506, n507 );
nand U736 ( n506, DATA_IN_4_, n523 );
nor U737 ( n518, DATA_IN_0_, n520 );
nor U738 ( n520, RMIN_REG_1_, n43 );
nor U739 ( n495, n496, n497 );
nor U740 ( n496, DATA_IN_7_, n525 );
nand U741 ( n497, n498, n499 );
nand U742 ( n498, DATA_IN_6_, n534 );
nand U743 ( n515, n516, n517 );
nand U744 ( n517, RMIN_REG_2_, n42 );
nor U745 ( n516, n518, n519 );
and U746 ( n519, n43, RMIN_REG_1_ );
nand U747 ( n499, n500, n501 );
nand U748 ( n501, RMIN_REG_6_, n37 );
nor U749 ( n500, n502, n503 );
nor U750 ( n503, DATA_IN_5_, n532 );
nand U751 ( n507, n508, n509 );
nand U752 ( n509, RMIN_REG_4_, n39 );
nor U753 ( n508, n510, n511 );
nor U754 ( n511, DATA_IN_3_, n522 );
nand U755 ( n115, n455, n456 );
nand U756 ( n455, DATA_IN_0_, n47 );
nand U757 ( n456, RMIN_REG_0_, n2 );
nand U758 ( n100, n461, n462 );
nand U759 ( n461, DATA_IN_3_, n47 );
nand U760 ( n462, n2, RMIN_REG_3_ );
nand U761 ( n105, n459, n460 );
nand U762 ( n459, DATA_IN_2_, n47 );
nand U763 ( n460, n2, RMIN_REG_2_ );
nand U764 ( n110, n457, n458 );
nand U765 ( n457, DATA_IN_1_, n47 );
nand U766 ( n458, n2, RMIN_REG_1_ );
nand U767 ( n80, n53, n54 );
nand U768 ( n53, DATA_IN_7_, n47 );
nand U769 ( n54, n2, RMIN_REG_7_ );
nand U770 ( n85, n51, n52 );
nand U771 ( n51, DATA_IN_6_, n47 );
nand U772 ( n52, n2, RMIN_REG_6_ );
nand U773 ( n90, n48, n49 );
nand U774 ( n48, DATA_IN_5_, n47 );
nand U775 ( n49, n2, RMIN_REG_5_ );
nand U776 ( n95, n44, n46 );
nand U777 ( n44, DATA_IN_4_, n47 );
nand U778 ( n46, n2, RMIN_REG_4_ );
nand U779 ( n309, n337, n338 );
nand U780 ( n337, RESTART, RMIN_REG_3_ );
nand U781 ( n338, REG4_REG_3_, n34 );
nand U782 ( n78, n466, n467 );
nand U783 ( n467, RMAX_REG_7_, n36 );
nand U784 ( n466, n468, n469 );
nand U785 ( n469, DATA_IN_7_, n536 );
nor U786 ( n493, DATA_IN_1_, n527 );
nand U787 ( n481, n482, n483 );
nand U788 ( n482, DATA_IN_3_, n528 );
nand U789 ( n483, n484, n485 );
nand U790 ( n485, RMAX_REG_3_, n41 );
nand U791 ( n473, n474, n475 );
nand U792 ( n474, DATA_IN_5_, n524 );
nand U793 ( n475, n476, n477 );
nand U794 ( n477, RMAX_REG_5_, n38 );
nor U795 ( n484, n486, n487 );
and U796 ( n487, n42, RMAX_REG_2_ );
nor U797 ( n486, n488, n489 );
nor U798 ( n488, RMAX_REG_2_, n42 );
nor U799 ( n468, n470, n471 );
nor U800 ( n471, DATA_IN_6_, n531 );
nor U801 ( n470, n472, n473 );
nor U802 ( n472, RMAX_REG_6_, n37 );
nor U803 ( n476, n478, n479 );
nor U804 ( n479, DATA_IN_4_, n530 );
nor U805 ( n478, n480, n481 );
nor U806 ( n480, RMAX_REG_4_, n39 );
nand U807 ( n489, n490, n491 );
nand U808 ( n490, DATA_IN_1_, n527 );
nand U809 ( n491, n492, DATA_IN_0_ );
nor U810 ( n492, RMAX_REG_0_, n493 );
nand U811 ( n301, n327, n329 );
nand U812 ( n327, RESTART, RMAX_REG_4_ );
nand U813 ( n329, DATA_IN_4_, n34 );
nor U814 ( n435, n529, STATO_REG_1_ );
buf U815 ( n538, n372 );
nor U816 ( n372, n526, STATO_REG_0_ );
nand U817 ( n298, n330, n331 );
nand U818 ( n330, RESTART, RMIN_REG_4_ );
nand U819 ( n331, REG4_REG_4_, n34 );
nand U820 ( n58, n529, n77 );
nand U821 ( n77, STATO_REG_1_, n78 );
nand U822 ( n75, n56, n57 );
nand U823 ( n56, DATA_IN_0_, n58 );
nand U824 ( n57, RMAX_REG_0_, n3 );
nand U825 ( n65, n62, n63 );
nand U826 ( n62, DATA_IN_2_, n58 );
nand U827 ( n63, n3, RMAX_REG_2_ );
nand U828 ( n45, n72, n73 );
nand U829 ( n72, DATA_IN_6_, n58 );
nand U830 ( n73, n3, RMAX_REG_6_ );
nand U831 ( n40, n74, n76 );
nand U832 ( n74, DATA_IN_7_, n58 );
nand U833 ( n76, n3, RMAX_REG_7_ );
nand U834 ( n50, n69, n71 );
nand U835 ( n69, DATA_IN_5_, n58 );
nand U836 ( n71, n3, RMAX_REG_5_ );
nand U837 ( n55, n67, n68 );
nand U838 ( n67, DATA_IN_4_, n58 );
nand U839 ( n68, n3, RMAX_REG_4_ );
nand U840 ( n60, n64, n66 );
nand U841 ( n64, DATA_IN_3_, n58 );
nand U842 ( n66, n3, RMAX_REG_3_ );
nand U843 ( n70, n59, n61 );
nand U844 ( n59, DATA_IN_1_, n58 );
nand U845 ( n61, n3, RMAX_REG_1_ );
not U846 ( n42, DATA_IN_2_ );
nand U847 ( n278, n292, n293 );
nand U848 ( n292, RESTART, RMAX_REG_5_ );
nand U849 ( n293, DATA_IN_5_, n34 );
nand U850 ( n276, n289, n291 );
nand U851 ( n289, RESTART, RMIN_REG_5_ );
nand U852 ( n291, REG4_REG_5_, n34 );
nand U853 ( n364, n193, AVERAGE );
nand U854 ( n113, n29, REG4_REG_2_ );
nand U855 ( n139, n29, REG4_REG_3_ );
nand U856 ( n157, n29, REG4_REG_4_ );
nand U857 ( n182, n29, REG4_REG_5_ );
nand U858 ( n363, n29, REG4_REG_6_ );
nand U859 ( n108, n29, REG4_REG_1_ );
nand U860 ( n94, n29, REG4_REG_0_ );
nand U861 ( n320, n365, n366 );
nand U862 ( n366, DATA_OUT_REG_7_, n541 );
nor U863 ( n365, n367, n368 );
and U864 ( n367, n92, RLAST_REG_7_ );
not U865 ( n41, DATA_IN_3_ );
nor U866 ( n92, n369, ENABLE );
and U867 ( n187, n92, RLAST_REG_6_ );
and U868 ( n161, n92, RLAST_REG_5_ );
and U869 ( n143, n92, RLAST_REG_4_ );
and U870 ( n131, n92, RLAST_REG_3_ );
and U871 ( n98, n92, RLAST_REG_1_ );
and U872 ( n83, n92, RLAST_REG_0_ );
nand U873 ( n116, RLAST_REG_2_, n92 );
xnor U874 ( n261, n267, n268 );
nand U875 ( n267, n272, n273 );
nor U876 ( n268, n269, n271 );
nand U877 ( n272, RESTART, RMIN_REG_6_ );
not U878 ( n39, DATA_IN_4_ );
nand U879 ( n273, REG4_REG_6_, n34 );
not U880 ( n37, DATA_IN_6_ );
nor U881 ( n269, RESTART, n37 );
not U882 ( n38, DATA_IN_5_ );
not U883 ( n36, DATA_IN_7_ );
nand U884 ( n240, n401, n402 );
nand U885 ( n402, REG2_REG_7_, n539 );
nand U886 ( n401, REG3_REG_7_, n542 );
nand U887 ( n200, n417, n418 );
nand U888 ( n418, REG1_REG_7_, n540 );
nand U889 ( n417, REG2_REG_7_, n542 );
nand U890 ( n245, n399, n400 );
nand U891 ( n400, REG2_REG_6_, n539 );
nand U892 ( n399, REG3_REG_6_, n542 );
nand U893 ( n205, n415, n416 );
nand U894 ( n416, REG1_REG_6_, n540 );
nand U895 ( n415, REG2_REG_6_, n542 );
nand U896 ( n250, n397, n398 );
nand U897 ( n398, REG2_REG_5_, n539 );
nand U898 ( n397, REG3_REG_5_, n542 );
nand U899 ( n210, n413, n414 );
nand U900 ( n414, REG1_REG_5_, n540 );
nand U901 ( n413, REG2_REG_5_, n542 );
nand U902 ( n255, n395, n396 );
nand U903 ( n396, REG2_REG_4_, n539 );
nand U904 ( n395, REG3_REG_4_, n542 );
nand U905 ( n215, n411, n412 );
nand U906 ( n412, REG1_REG_4_, n540 );
nand U907 ( n411, REG2_REG_4_, n542 );
nand U908 ( n260, n393, n394 );
nand U909 ( n394, REG2_REG_3_, n539 );
nand U910 ( n393, REG3_REG_3_, n542 );
nand U911 ( n220, n409, n410 );
nand U912 ( n410, REG1_REG_3_, n540 );
nand U913 ( n409, REG2_REG_3_, n542 );
nand U914 ( n225, n407, n408 );
nand U915 ( n408, REG1_REG_2_, n539 );
nand U916 ( n407, REG2_REG_2_, n542 );
nand U917 ( n230, n405, n406 );
nand U918 ( n406, REG1_REG_1_, n539 );
nand U919 ( n405, REG2_REG_1_, n542 );
nand U920 ( n235, n403, n404 );
nand U921 ( n404, REG1_REG_0_, n539 );
nand U922 ( n403, REG2_REG_0_, n542 );
nand U923 ( n165, n431, n432 );
nand U924 ( n432, n540, DATA_IN_6_ );
nand U925 ( n431, REG1_REG_6_, n542 );
nand U926 ( n170, n429, n430 );
nand U927 ( n430, n540, DATA_IN_5_ );
nand U928 ( n429, REG1_REG_5_, n542 );
nand U929 ( n175, n427, n428 );
nand U930 ( n428, n540, DATA_IN_4_ );
nand U931 ( n427, REG1_REG_4_, n542 );
nand U932 ( n180, n425, n426 );
nand U933 ( n426, n540, DATA_IN_3_ );
nand U934 ( n425, REG1_REG_3_, n542 );
nand U935 ( n185, n423, n424 );
nand U936 ( n424, n540, DATA_IN_2_ );
nand U937 ( n423, REG1_REG_2_, n542 );
nand U938 ( n190, n421, n422 );
nand U939 ( n422, n540, DATA_IN_1_ );
nand U940 ( n421, REG1_REG_1_, n542 );
nand U941 ( n195, n419, n420 );
nand U942 ( n420, n540, DATA_IN_0_ );
nand U943 ( n419, REG1_REG_0_, n542 );
nand U944 ( n300, n377, n378 );
nand U945 ( n378, REG3_REG_3_, n539 );
nand U946 ( n377, REG4_REG_3_, n541 );
nand U947 ( n305, n375, n376 );
nand U948 ( n376, REG3_REG_2_, n539 );
nand U949 ( n375, REG4_REG_2_, n541 );
nand U950 ( n290, n381, n382 );
nand U951 ( n382, REG3_REG_5_, n539 );
nand U952 ( n381, REG4_REG_5_, n541 );
nand U953 ( n295, n379, n380 );
nand U954 ( n380, REG3_REG_4_, n539 );
nand U955 ( n379, REG4_REG_4_, n541 );
nand U956 ( n280, n385, n386 );
nand U957 ( n386, REG3_REG_7_, n539 );
nand U958 ( n385, REG4_REG_7_, n541 );
nand U959 ( n285, n383, n384 );
nand U960 ( n384, REG3_REG_6_, n539 );
nand U961 ( n383, REG4_REG_6_, n541 );
nand U962 ( n265, n391, n392 );
nand U963 ( n392, REG2_REG_2_, n539 );
nand U964 ( n391, REG3_REG_2_, n541 );
nand U965 ( n310, n373, n374 );
nand U966 ( n374, REG3_REG_1_, n539 );
nand U967 ( n373, REG4_REG_1_, n541 );
nand U968 ( n270, n389, n390 );
nand U969 ( n390, REG2_REG_1_, n539 );
nand U970 ( n389, REG3_REG_1_, n541 );
nand U971 ( n315, n370, n371 );
nand U972 ( n371, REG3_REG_0_, n539 );
nand U973 ( n370, REG4_REG_0_, n541 );
nand U974 ( n275, n387, n388 );
nand U975 ( n388, REG2_REG_0_, n539 );
nand U976 ( n387, REG3_REG_0_, n541 );
nand U977 ( n160, n433, n434 );
nand U978 ( n434, n540, DATA_IN_7_ );
nand U979 ( n433, REG1_REG_7_, n541 );
not U980 ( n35, ENABLE );
or U981 ( n179, n35, AVERAGE );
nor U982 ( n494, RMIN_REG_7_, n36 );
and U983 ( n174, RESTART, n226 );
nand U984 ( n226, n227, n228 );
nand U985 ( n227, RMIN_REG_7_, RMAX_REG_7_ );
nand U986 ( n228, n229, n231 );
nor U987 ( n256, RMIN_REG_2_, RMAX_REG_2_ );
nand U988 ( n234, n237, n238 );
nand U989 ( n237, RMIN_REG_5_, RMAX_REG_5_ );
nand U990 ( n238, n239, n241 );
nand U991 ( n241, n532, n524 );
nand U992 ( n251, n252, n253 );
nand U993 ( n252, RMIN_REG_2_, RMAX_REG_2_ );
nand U994 ( n253, n254, RMIN_REG_1_ );
nor U995 ( n254, n256, n527 );
nor U996 ( n244, n247, n248 );
nor U997 ( n248, RMIN_REG_3_, RMAX_REG_3_ );
nor U998 ( n247, n249, n251 );
nor U999 ( n249, n528, n522 );
nor U1000 ( n229, n232, n233 );
and U1001 ( n233, n234, RMAX_REG_6_ );
nor U1002 ( n232, n236, n534 );
nor U1003 ( n236, RMAX_REG_6_, n234 );
nand U1004 ( n239, n242, n243 );
nand U1005 ( n243, RMIN_REG_4_, RMAX_REG_4_ );
nand U1006 ( n242, n244, n246 );
nand U1007 ( n246, n530, n523 );
nand U1008 ( n120, n452, n453 );
nand U1009 ( n453, n438, DATA_IN_7_ );
nand U1010 ( n452, RLAST_REG_7_, n439 );
nand U1011 ( n125, n450, n451 );
nand U1012 ( n451, n438, DATA_IN_6_ );
nand U1013 ( n450, RLAST_REG_6_, n439 );
nand U1014 ( n130, n448, n449 );
nand U1015 ( n449, n438, DATA_IN_5_ );
nand U1016 ( n448, RLAST_REG_5_, n439 );
nand U1017 ( n135, n446, n447 );
nand U1018 ( n447, n438, DATA_IN_4_ );
nand U1019 ( n446, RLAST_REG_4_, n439 );
nand U1020 ( n140, n444, n445 );
nand U1021 ( n445, n438, DATA_IN_3_ );
nand U1022 ( n444, RLAST_REG_3_, n439 );
nand U1023 ( n145, n442, n443 );
nand U1024 ( n443, n438, DATA_IN_2_ );
nand U1025 ( n442, RLAST_REG_2_, n439 );
nand U1026 ( n150, n440, n441 );
nand U1027 ( n441, n438, DATA_IN_1_ );
nand U1028 ( n440, RLAST_REG_1_, n439 );
nand U1029 ( n155, n436, n437 );
nand U1030 ( n437, n438, DATA_IN_0_ );
nand U1031 ( n436, RLAST_REG_0_, n439 );
and U1032 ( n438, STATO_REG_1_, n454 );
nor U1033 ( n521, STATO_REG_0_, STATO_REG_1_ );
endmodule


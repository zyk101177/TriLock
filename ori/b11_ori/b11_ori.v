
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
module b11_ori ( clk, reset, X_IN_5_, X_IN_4_, X_IN_3_, X_IN_2_, X_IN_1_, X_IN_0_,
STBI, X_OUT_REG_5_, X_OUT_REG_4_, X_OUT_REG_3_, X_OUT_REG_2_,
X_OUT_REG_1_, X_OUT_REG_0_ );
input clk, reset, X_IN_5_, X_IN_4_, X_IN_3_, X_IN_2_, X_IN_1_, X_IN_0_, STBI;
output X_OUT_REG_5_, X_OUT_REG_4_, X_OUT_REG_3_, X_OUT_REG_2_, X_OUT_REG_1_,
X_OUT_REG_0_;
wire R_IN_REG_1_, STATO_REG_3_, CONT1_REG_5_, CONT1_REG_2_, CONT1_REG_0_,
STATO_REG_0_, STATO_REG_1_, R_IN_REG_0_, CONT1_REG_8_, STATO_REG_2_,
R_IN_REG_5_, R_IN_REG_2_, CONT_REG_5_, CONT_REG_2_, CONT_REG_0_,
CONT1_REG_7_, CONT1_REG_6_, CONT1_REG_4_, CONT1_REG_3_, CONT1_REG_1_,
R_IN_REG_3_, n157, n162, n167, n172, n153, n149, n145, n141, n137,
n133, n128, n123, n118, n113, n108, n103, n98, n93, n88, n83, n78,
n73, n68, n63, n58, R_IN_REG_4_, CONT_REG_4_, CONT_REG_3_,
CONT_REG_1_, n28, n33, n38, n43, n48, n53, n1, n3, n4, n5, n6, n7, n8,
n9, n10, n11, n13, n14, n15, n30, n36, n39, n40, n41, n46, n47, n49,
n50, n51, n52, n54, n55, n56, n57, n59, n60, n61, n62, n64, n65, n66,
n67, n69, n70, n71, n72, n74, n75, n76, n77, n79, n80, n81, n82, n84,
n85, n86, n87, n89, n90, n91, n92, n94, n95, n96, n97, n99, n100,
n101, n102, n104, n105, n106, n107, n109, n110, n111, n112, n114,
n115, n116, n117, n119, n120, n121, n122, n124, n125, n126, n127,
n129, n130, n131, n132, n134, n135, n136, n138, n139, n140, n142,
n143, n144, n146, n147, n148, n150, n151, n152, n154, n155, n156,
n158, n159, n163, n164, n165, n166, n168, n169, n170, n171, n173,
n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437,
n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459,
n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
n504, n505, n506, n507, n508, n509, n510;

dff STATO_REG_1__reg ( clk, reset, STATO_REG_1_, n167 );
not U_inv0 ( n491, STATO_REG_1_ );
dff STATO_REG_3__reg ( clk, reset, STATO_REG_3_, n157 );
not U_inv1 ( n502, STATO_REG_3_ );
dff R_IN_REG_0__reg ( clk, reset, R_IN_REG_0_, n53 );
not U_inv2 ( n488, R_IN_REG_0_ );
dff R_IN_REG_3__reg ( clk, reset, R_IN_REG_3_, n38 );
not U_inv3 ( n493, R_IN_REG_3_ );
dff R_IN_REG_4__reg ( clk, reset, R_IN_REG_4_, n33 );
not U_inv4 ( n497, R_IN_REG_4_ );
dff R_IN_REG_5__reg ( clk, reset, R_IN_REG_5_, n28 );
not U_inv5 ( n506, R_IN_REG_5_ );
dff CONT_REG_0__reg ( clk, reset, CONT_REG_0_, n83 );
not U_inv6 ( n508, CONT_REG_0_ );
dff CONT1_REG_0__reg ( clk, reset, CONT1_REG_0_, n128 );
not U_inv7 ( n494, CONT1_REG_0_ );
dff CONT_REG_1__reg ( clk, reset, CONT_REG_1_, n78 );
not U_inv8 ( n503, CONT_REG_1_ );
dff CONT_REG_2__reg ( clk, reset, CONT_REG_2_, n73 );
not U_inv9 ( n492, CONT_REG_2_ );
dff CONT_REG_3__reg ( clk, reset, CONT_REG_3_, n68 );
not U_inv10 ( n504, CONT_REG_3_ );
dff CONT_REG_4__reg ( clk, reset, CONT_REG_4_, n63 );
dff CONT_REG_5__reg ( clk, reset, CONT_REG_5_, n58 );
dff CONT1_REG_3__reg ( clk, reset, CONT1_REG_3_, n113 );
not U_inv11 ( n505, CONT1_REG_3_ );
dff CONT1_REG_7__reg ( clk, reset, CONT1_REG_7_, n93 );
not U_inv12 ( n498, CONT1_REG_7_ );
dff CONT1_REG_8__reg ( clk, reset, CONT1_REG_8_, n88 );
not U_inv13 ( n490, CONT1_REG_8_ );
dff X_OUT_REG_2__reg ( clk, reset, X_OUT_REG_2_, n145 );
dff X_OUT_REG_0__reg ( clk, reset, X_OUT_REG_0_, n153 );
dff X_OUT_REG_1__reg ( clk, reset, X_OUT_REG_1_, n149 );
dff X_OUT_REG_3__reg ( clk, reset, X_OUT_REG_3_, n141 );
dff X_OUT_REG_4__reg ( clk, reset, X_OUT_REG_4_, n137 );
dff X_OUT_REG_5__reg ( clk, reset, X_OUT_REG_5_, n133 );
dff STATO_REG_2__reg ( clk, reset, STATO_REG_2_, n162 );
not U_inv14 ( n501, STATO_REG_2_ );
dff STATO_REG_0__reg ( clk, reset, STATO_REG_0_, n172 );
not U_inv15 ( n500, STATO_REG_0_ );
dff CONT1_REG_5__reg ( clk, reset, CONT1_REG_5_, n103 );
not U_inv16 ( n507, CONT1_REG_5_ );
dff CONT1_REG_6__reg ( clk, reset, CONT1_REG_6_, n98 );
not U_inv17 ( n489, CONT1_REG_6_ );
dff CONT1_REG_4__reg ( clk, reset, CONT1_REG_4_, n108 );
not U_inv18 ( n496, CONT1_REG_4_ );
dff R_IN_REG_1__reg ( clk, reset, R_IN_REG_1_, n48 );
not U_inv19 ( n486, R_IN_REG_1_ );
dff CONT1_REG_2__reg ( clk, reset, CONT1_REG_2_, n118 );
not U_inv20 ( n487, CONT1_REG_2_ );
dff CONT1_REG_1__reg ( clk, reset, CONT1_REG_1_, n123 );
not U_inv21 ( n499, CONT1_REG_1_ );
dff R_IN_REG_2__reg ( clk, reset, R_IN_REG_2_, n43 );
not U_inv22 ( n495, R_IN_REG_2_ );
nor U488 ( n55, n386, STATO_REG_0_ );
nor U489 ( n69, n388, STATO_REG_0_ );
nand U490 ( n185, n40, n11 );
nand U491 ( n386, n211, n140 );
nand U492 ( n307, n4, n308 );
or U493 ( n308, n309, n6 );
not U494 ( n11, n223 );
nand U495 ( n151, n391, n447 );
nand U496 ( n447, n389, n392 );
nand U497 ( n71, n147, n148 );
nand U498 ( n148, n150, n151 );
nand U499 ( n389, n357, n449 );
nand U500 ( n449, n355, n358 );
not U501 ( n5, n57 );
xor U502 ( n444, n151, n445 );
nand U503 ( n445, n150, n147 );
not U504 ( n7, n319 );
not U505 ( n9, n140 );
or U506 ( n367, n264, n5 );
or U507 ( n341, n5, n257 );
not U508 ( n3, n74 );
nand U509 ( n159, n174, n154 );
not U510 ( n10, n174 );
not U511 ( n40, n208 );
nor U512 ( n221, n183, n222 );
nand U513 ( n222, n40, n223 );
nor U514 ( n268, n269, n245 );
nor U515 ( n207, n11, n208 );
and U516 ( n356, n357, n358 );
and U517 ( n390, n391, n392 );
and U518 ( n333, n334, n335 );
nor U519 ( n263, n245, n264 );
nand U520 ( n285, n286, n287 );
nor U521 ( n256, n257, n245 );
not U522 ( n41, n211 );
nor U523 ( n120, n13, n498 );
not U524 ( n14, n135 );
nand U525 ( n317, n435, n436 );
or U526 ( n435, n295, n494 );
nand U527 ( n436, n437, n493 );
nand U528 ( n437, n494, n295 );
not U529 ( n13, n125 );
nor U530 ( n104, n3, n112 );
nand U531 ( n112, n114, n115 );
nand U532 ( n115, n116, n117 );
nand U533 ( n114, n122, n15 );
nor U534 ( n122, n124, n121 );
nor U535 ( n124, n120, n493 );
nand U536 ( n88, n101, n102 );
nor U537 ( n101, n136, n138 );
nor U538 ( n102, n104, n105 );
nor U539 ( n136, n6, n143 );
nand U540 ( n93, n79, n80 );
nor U541 ( n80, n81, n82 );
nor U542 ( n79, n95, n96 );
nor U543 ( n81, n91, n5 );
nand U544 ( n65, n66, n67 );
nand U545 ( n67, n69, n70 );
nand U546 ( n66, n74, n75 );
xor U547 ( n70, n71, n72 );
nand U548 ( n98, n46, n47 );
nor U549 ( n47, n49, n50 );
nor U550 ( n46, n64, n65 );
nand U551 ( n50, n51, n52 );
nand U552 ( n418, n419, n420 );
nand U553 ( n419, n439, n500 );
nand U554 ( n420, n421, n74 );
nand U555 ( n439, n440, n441 );
nand U556 ( n103, n404, n405 );
nor U557 ( n405, n406, n407 );
nor U558 ( n404, n417, n418 );
nor U559 ( n406, n274, n5 );
not U560 ( n4, n55 );
nand U561 ( n140, n462, n239 );
nor U562 ( n462, n463, n464 );
and U563 ( n464, n11, n240 );
nor U564 ( n463, n501, n475 );
nand U565 ( n82, n84, n85 );
nand U566 ( n85, n86, n69 );
nand U567 ( n84, n90, n498 );
xor U568 ( n86, n87, n89 );
nand U569 ( n388, n140, n491 );
not U570 ( n6, n69 );
nand U571 ( n123, n297, n298 );
nor U572 ( n297, n312, n313 );
nor U573 ( n298, n299, n300 );
nor U574 ( n312, n319, n508 );
nand U575 ( n223, n465, n466 );
nor U576 ( n466, n467, n468 );
nor U577 ( n465, n471, n472 );
nand U578 ( n468, n469, n470 );
nor U579 ( n138, n100, n490 );
and U580 ( n100, n62, n139 );
nand U581 ( n139, n55, n489 );
and U582 ( n62, n140, n142 );
nand U583 ( n142, n55, n56 );
nor U584 ( n95, n100, n498 );
nor U585 ( n280, n289, n494 );
nor U586 ( n289, n9, n290 );
nand U587 ( n290, n4, n5 );
nand U588 ( n128, n278, n279 );
nor U589 ( n278, n291, n292 );
nor U590 ( n279, n280, n281 );
nor U591 ( n292, n508, n293 );
nand U592 ( n87, n72, n71 );
nand U593 ( n309, n287, n455 );
nand U594 ( n455, n286, n486 );
nand U595 ( n286, n456, n488 );
nand U596 ( n355, n334, n451 );
nand U597 ( n451, n332, n335 );
nor U598 ( n57, n388, n500 );
or U599 ( n287, n456, n488 );
nand U600 ( n380, n55, n381 );
nand U601 ( n327, n55, n499 );
nand U602 ( n359, n140, n360 );
nand U603 ( n360, n361, n55 );
nor U604 ( n361, n499, n487 );
nor U605 ( n440, n442, n443 );
nor U606 ( n442, n386, n457 );
nor U607 ( n443, n388, n444 );
nand U608 ( n457, n458, n56 );
nand U609 ( n108, n373, n374 );
nor U610 ( n373, n393, n394 );
nor U611 ( n374, n375, n376 );
nand U612 ( n394, n395, n396 );
nand U613 ( n113, n346, n347 );
nor U614 ( n346, n362, n363 );
nor U615 ( n347, n348, n349 );
nand U616 ( n362, n366, n367 );
nand U617 ( n118, n320, n321 );
nor U618 ( n320, n336, n337 );
nor U619 ( n321, n322, n323 );
nand U620 ( n336, n340, n341 );
nor U621 ( n49, n62, n489 );
nand U622 ( n172, n200, n201 );
nor U623 ( n200, n206, n207 );
nor U624 ( n201, n39, n202 );
nor U625 ( n206, n41, n209 );
nand U626 ( n311, n69, n309 );
nand U627 ( n393, n397, n398 );
or U628 ( n398, n5, n269 );
nand U629 ( n397, n401, n74 );
xor U630 ( n401, n402, n403 );
nand U631 ( n319, n411, n382 );
nor U632 ( n411, n500, n488 );
not U633 ( n8, n293 );
nor U634 ( n74, n386, n500 );
and U635 ( n288, n382, n500 );
nand U636 ( n375, n383, n384 );
nand U637 ( n383, n387, n69 );
nand U638 ( n384, n385, n55 );
xor U639 ( n387, n389, n390 );
nand U640 ( n322, n328, n329 );
nand U641 ( n328, n331, n69 );
nand U642 ( n329, n330, n55 );
xor U643 ( n331, n332, n333 );
nand U644 ( n210, n490, n478 );
nand U645 ( n478, n489, n498 );
nand U646 ( n174, n184, n185 );
nand U647 ( n184, n39, n502 );
nor U648 ( n164, n159, n158 );
not U649 ( n1, n170 );
nand U650 ( n154, n1, n508 );
nand U651 ( n171, n164, n173 );
nand U652 ( n173, n1, n492 );
nand U653 ( n51, n57, n59 );
xnor U654 ( n59, n60, n61 );
nand U655 ( n335, n452, n495 );
or U656 ( n334, n452, n495 );
nand U657 ( n183, n224, n225 );
nand U658 ( n225, n226, n223 );
nand U659 ( n224, n11, n231 );
nand U660 ( n226, n506, n227 );
nand U661 ( n358, n450, n493 );
nand U662 ( n208, n240, n500 );
or U663 ( n357, n450, n493 );
not U664 ( n39, n247 );
nor U665 ( n417, n507, n140 );
nand U666 ( n180, n174, n170 );
nand U667 ( n392, n448, n497 );
or U668 ( n391, n448, n497 );
nand U669 ( n234, n503, n492 );
or U670 ( n147, n446, n506 );
xnor U671 ( n91, n92, n94 );
nand U672 ( n111, n412, n369 );
and U673 ( n412, n400, n368 );
and U674 ( n94, n60, n61 );
and U675 ( n60, n111, n507 );
nor U676 ( n211, n501, n491 );
nand U677 ( n150, n446, n506 );
not U678 ( n30, n381 );
xor U679 ( n269, n399, n400 );
nand U680 ( n399, n369, n368 );
nor U681 ( n273, n274, n245 );
xnor U682 ( n264, n368, n369 );
nand U683 ( n258, n39, n490 );
or U684 ( n246, n258, n502 );
nor U685 ( n250, n499, n246 );
nand U686 ( n245, n275, n39 );
nor U687 ( n275, n502, n490 );
not U688 ( n15, n117 );
xnor U689 ( n257, n342, n487 );
nand U690 ( n209, n210, n500 );
not U691 ( n36, n188 );
nand U692 ( n295, n14, n438 );
nand U693 ( n438, R_IN_REG_3_, R_IN_REG_2_ );
nor U694 ( n135, R_IN_REG_2_, R_IN_REG_3_ );
nand U695 ( n134, n423, n424 );
nand U696 ( n423, CONT1_REG_4_, n402 );
nand U697 ( n424, R_IN_REG_2_, n425 );
or U698 ( n425, n402, CONT1_REG_4_ );
nand U699 ( n402, n426, n427 );
nand U700 ( n426, n371, n295 );
nand U701 ( n427, CONT1_REG_3_, n428 );
or U702 ( n428, n371, n295 );
nand U703 ( n76, n130, n131 );
nand U704 ( n130, n135, n134 );
nand U705 ( n131, CONT1_REG_5_, n132 );
or U706 ( n132, n134, n135 );
nand U707 ( n371, n429, n430 );
nand U708 ( n429, n344, n14 );
nand U709 ( n430, CONT1_REG_2_, n431 );
or U710 ( n431, n14, n344 );
nand U711 ( n125, n126, n127 );
nand U712 ( n126, CONT1_REG_6_, n76 );
nand U713 ( n127, n129, n493 );
or U714 ( n129, n76, CONT1_REG_6_ );
nand U715 ( n344, n432, n433 );
nand U716 ( n432, CONT1_REG_1_, n317 );
nand U717 ( n433, n434, n495 );
or U718 ( n434, n317, CONT1_REG_1_ );
nor U719 ( n121, CONT1_REG_7_, n125 );
nor U720 ( n116, n119, n120 );
nor U721 ( n119, R_IN_REG_3_, n121 );
nor U722 ( n96, n97, n3 );
xnor U723 ( n97, n13, n99 );
xnor U724 ( n99, n493, CONT1_REG_7_ );
xor U725 ( n75, n76, n77 );
xnor U726 ( n77, CONT1_REG_6_, R_IN_REG_3_ );
xnor U727 ( n421, n422, n134 );
xnor U728 ( n422, CONT1_REG_5_, n135 );
nor U729 ( n482, n496, n483 );
nand U730 ( n483, CONT1_REG_3_, n484 );
nand U731 ( n484, n487, n485 );
nand U732 ( n485, CONT1_REG_1_, CONT1_REG_0_ );
nand U733 ( n218, n479, n490 );
nand U734 ( n479, n480, n481 );
nor U735 ( n481, CONT1_REG_7_, CONT1_REG_6_ );
nor U736 ( n480, CONT1_REG_5_, n482 );
nand U737 ( n475, n476, n477 );
nand U738 ( n477, STATO_REG_1_, n210 );
nand U739 ( n476, STATO_REG_0_, n218 );
nand U740 ( n105, n106, n107 );
nand U741 ( n106, n110, n94 );
nand U742 ( n107, n90, CONT1_REG_7_ );
nor U743 ( n110, n92, n5 );
and U744 ( n90, n109, CONT1_REG_6_ );
nor U745 ( n109, n56, n4 );
nand U746 ( n299, n305, n306 );
nand U747 ( n305, CONT1_REG_1_, n310 );
nand U748 ( n306, n307, n499 );
nand U749 ( n310, n140, n311 );
nand U750 ( n472, n473, n474 );
nand U751 ( n474, R_IN_REG_1_, n495 );
nand U752 ( n473, R_IN_REG_5_, n493 );
xor U753 ( n143, n144, n146 );
xnor U754 ( n146, n486, CONT1_REG_8_ );
nor U755 ( n144, n89, n87 );
xnor U756 ( n456, CONT1_REG_0_, n486 );
nand U757 ( n332, n453, n454 );
nand U758 ( n453, R_IN_REG_1_, CONT1_REG_1_ );
nand U759 ( n454, n309, n499 );
nor U760 ( n467, R_IN_REG_1_, n493 );
nand U761 ( n376, n377, n378 );
nand U762 ( n377, n288, R_IN_REG_4_ );
nand U763 ( n378, CONT1_REG_4_, n379 );
nand U764 ( n379, n140, n380 );
nand U765 ( n348, n352, n353 );
nand U766 ( n353, n354, n69 );
nand U767 ( n352, CONT1_REG_3_, n359 );
xor U768 ( n354, n355, n356 );
nand U769 ( n323, n324, n325 );
nand U770 ( n324, n288, R_IN_REG_2_ );
nand U771 ( n325, CONT1_REG_2_, n326 );
nand U772 ( n326, n140, n327 );
nor U773 ( n202, n203, n204 );
nand U774 ( n204, n205, n491 );
nor U775 ( n203, STBI, STATO_REG_2_ );
nand U776 ( n205, n486, n500 );
nor U777 ( n220, n235, n236 );
nand U778 ( n236, STATO_REG_0_, n491 );
or U779 ( n235, STATO_REG_2_, STBI );
nand U780 ( n167, n212, n213 );
nand U781 ( n213, STATO_REG_2_, n214 );
nor U782 ( n212, n220, n221 );
nand U783 ( n214, n215, n216 );
nor U784 ( n382, n9, STATO_REG_2_ );
nand U785 ( n407, n408, n409 );
nand U786 ( n409, n8, CONT_REG_5_ );
nand U787 ( n408, CONT_REG_4_, n7 );
nand U788 ( n395, CONT_REG_3_, n7 );
nand U789 ( n337, n338, n339 );
nand U790 ( n339, n8, CONT_REG_2_ );
nand U791 ( n338, CONT_REG_1_, n7 );
nand U792 ( n293, n410, n382 );
nor U793 ( n410, R_IN_REG_0_, n500 );
nand U794 ( n363, n364, n365 );
nand U795 ( n365, n8, CONT_REG_3_ );
nand U796 ( n364, CONT_REG_2_, n7 );
nand U797 ( n470, R_IN_REG_2_, n488 );
nand U798 ( n300, n301, n302 );
nand U799 ( n302, n288, R_IN_REG_1_ );
or U800 ( n301, n252, n5 );
nand U801 ( n396, n8, CONT_REG_4_ );
nand U802 ( n313, n314, n315 );
nand U803 ( n315, n74, n316 );
nand U804 ( n314, n8, CONT_REG_1_ );
xor U805 ( n316, n317, n318 );
nor U806 ( n291, n3, n294 );
xor U807 ( n294, n295, n296 );
xnor U808 ( n296, CONT1_REG_0_, R_IN_REG_3_ );
and U809 ( n64, n7, CONT_REG_5_ );
nand U810 ( n469, R_IN_REG_0_, n497 );
nand U811 ( n349, n350, n351 );
nand U812 ( n350, n55, n30 );
nand U813 ( n351, n288, R_IN_REG_3_ );
nand U814 ( n441, n382, R_IN_REG_5_ );
nand U815 ( n281, n282, n283 );
nand U816 ( n283, n284, n69 );
nand U817 ( n282, n288, R_IN_REG_0_ );
xnor U818 ( n284, n285, n486 );
nand U819 ( n52, n54, n55 );
nor U820 ( n54, CONT1_REG_6_, n56 );
nand U821 ( n170, n181, n182 );
and U822 ( n181, n183, STATO_REG_1_ );
nor U823 ( n182, CONT_REG_5_, n10 );
nand U824 ( n68, n165, n166 );
nand U825 ( n166, n168, CONT_REG_2_ );
nand U826 ( n165, CONT_REG_3_, n171 );
nor U827 ( n168, CONT_REG_3_, n163 );
or U828 ( n73, n509, n510 );
nor U829 ( n509, n492, n164 );
nor U830 ( n510, n163, CONT_REG_2_ );
nand U831 ( n366, n74, n370 );
xnor U832 ( n370, n371, n372 );
xnor U833 ( n372, CONT1_REG_3_, n295 );
nand U834 ( n340, n74, n343 );
xor U835 ( n343, n344, n345 );
xnor U836 ( n345, CONT1_REG_2_, n135 );
nor U837 ( n471, R_IN_REG_5_, n497 );
xnor U838 ( n452, CONT1_REG_2_, n486 );
nand U839 ( n163, n169, CONT_REG_1_ );
nor U840 ( n169, n170, n508 );
nand U841 ( n43, n191, n192 );
nand U842 ( n191, R_IN_REG_2_, n188 );
nand U843 ( n192, X_IN_2_, n36 );
nand U844 ( n48, n189, n190 );
nand U845 ( n189, R_IN_REG_1_, n188 );
nand U846 ( n190, X_IN_1_, n36 );
nand U847 ( n38, n193, n194 );
nand U848 ( n193, R_IN_REG_3_, n188 );
nand U849 ( n194, X_IN_3_, n36 );
nand U850 ( n28, n197, n198 );
nand U851 ( n197, R_IN_REG_5_, n188 );
nand U852 ( n198, X_IN_5_, n36 );
nand U853 ( n53, n186, n187 );
nand U854 ( n186, R_IN_REG_0_, n188 );
nand U855 ( n187, X_IN_0_, n36 );
nand U856 ( n33, n195, n196 );
nand U857 ( n195, R_IN_REG_4_, n188 );
nand U858 ( n196, X_IN_4_, n36 );
nor U859 ( n158, n170, CONT_REG_1_ );
nor U860 ( n178, n508, n179 );
nand U861 ( n179, n1, CONT_REG_3_ );
nand U862 ( n63, n175, n176 );
nand U863 ( n175, CONT_REG_4_, n180 );
nand U864 ( n176, n177, n178 );
nor U865 ( n177, n503, n492 );
nand U866 ( n78, n155, n156 );
nand U867 ( n156, n158, CONT_REG_0_ );
nand U868 ( n155, CONT_REG_1_, n159 );
nor U869 ( n240, n491, STATO_REG_2_ );
nand U870 ( n227, n228, R_IN_REG_4_ );
nor U871 ( n228, n229, n493 );
nor U872 ( n229, n230, R_IN_REG_2_ );
nor U873 ( n230, n488, n486 );
xnor U874 ( n450, CONT1_REG_3_, n486 );
nand U875 ( n247, n277, n500 );
nor U876 ( n277, STATO_REG_2_, STATO_REG_1_ );
nand U877 ( n83, n152, n154 );
nand U878 ( n152, CONT_REG_0_, n10 );
and U879 ( n58, n180, CONT_REG_5_ );
xnor U880 ( n448, CONT1_REG_4_, n486 );
nand U881 ( n231, n232, CONT_REG_4_ );
nor U882 ( n232, n233, n504 );
nor U883 ( n233, CONT_REG_0_, n234 );
xnor U884 ( n446, CONT1_REG_5_, n486 );
nand U885 ( n239, STATO_REG_0_, STATO_REG_1_ );
nand U886 ( n342, n414, n415 );
nand U887 ( n415, n416, STATO_REG_3_ );
nand U888 ( n414, CONT1_REG_1_, n502 );
nor U889 ( n416, CONT1_REG_1_, CONT1_REG_0_ );
and U890 ( n369, n413, n259 );
or U891 ( n413, n342, CONT1_REG_2_ );
xnor U892 ( n368, CONT1_REG_3_, n502 );
nand U893 ( n56, CONT1_REG_5_, n459 );
nand U894 ( n459, n30, n496 );
nand U895 ( n381, n505, n461 );
nand U896 ( n461, CONT1_REG_2_, CONT1_REG_1_ );
xnor U897 ( n400, CONT1_REG_4_, n502 );
nand U898 ( n137, n265, n266 );
nand U899 ( n266, X_OUT_REG_4_, n247 );
nor U900 ( n265, n267, n268 );
nor U901 ( n267, n496, n246 );
xnor U902 ( n274, n111, CONT1_REG_5_ );
nand U903 ( n133, n270, n271 );
nand U904 ( n271, X_OUT_REG_5_, n247 );
nor U905 ( n270, n272, n273 );
nor U906 ( n272, n258, n276 );
nand U907 ( n141, n260, n261 );
nand U908 ( n261, X_OUT_REG_3_, n247 );
nor U909 ( n260, n262, n263 );
nor U910 ( n262, n505, n246 );
nand U911 ( n458, n460, n30 );
nor U912 ( n460, CONT1_REG_5_, CONT1_REG_4_ );
nand U913 ( n216, n217, STATO_REG_0_ );
and U914 ( n217, n491, n218 );
nand U915 ( n149, n248, n249 );
nand U916 ( n249, X_OUT_REG_1_, n247 );
nor U917 ( n248, n250, n251 );
nor U918 ( n251, n252, n245 );
nand U919 ( n259, STATO_REG_3_, CONT1_REG_2_ );
nand U920 ( n145, n253, n254 );
nand U921 ( n254, X_OUT_REG_2_, n247 );
nor U922 ( n253, n255, n256 );
nor U923 ( n255, n258, n259 );
nand U924 ( n153, n242, n243 );
nand U925 ( n242, X_OUT_REG_0_, n247 );
nand U926 ( n243, CONT1_REG_0_, n244 );
nand U927 ( n244, n245, n246 );
xnor U928 ( n117, CONT1_REG_8_, n493 );
nand U929 ( n157, n185, n241 );
nand U930 ( n241, n211, STATO_REG_0_ );
xnor U931 ( n72, CONT1_REG_6_, R_IN_REG_1_ );
xnor U932 ( n252, n303, n304 );
nand U933 ( n303, STATO_REG_3_, CONT1_REG_0_ );
xnor U934 ( n304, n502, CONT1_REG_1_ );
xnor U935 ( n89, n498, R_IN_REG_1_ );
nand U936 ( n61, CONT1_REG_6_, n502 );
xnor U937 ( n403, n495, CONT1_REG_4_ );
nor U938 ( n92, n498, STATO_REG_3_ );
xnor U939 ( n318, R_IN_REG_2_, CONT1_REG_1_ );
nor U940 ( n385, CONT1_REG_4_, n381 );
nor U941 ( n330, CONT1_REG_2_, n499 );
nand U942 ( n188, n199, n491 );
nor U943 ( n199, STATO_REG_3_, STATO_REG_2_ );
nand U944 ( n215, n219, n500 );
nand U945 ( n219, R_IN_REG_1_, n491 );
nand U946 ( n276, STATO_REG_3_, CONT1_REG_5_ );
nand U947 ( n162, n237, n238 );
nand U948 ( n238, STATO_REG_2_, n239 );
nand U949 ( n237, n240, STATO_REG_0_ );
endmodule


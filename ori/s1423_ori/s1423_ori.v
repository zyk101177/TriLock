
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


module s1423_ori ( clk, reset, G0, G1, G2, G3, G4, G5, G6, G7, G8, G9, G10, G11, G12,
G13, G14, G15, G16, G726, G729, G702, G727, G701BF );
input clk, reset, G0, G1, G2, G3, G4, G5, G6, G7, G8, G9, G10, G11, G12, G13, G14,
G15, G16;
output G726, G729, G702, G727, G701BF;
wire new_G332_, new_G328_, G35, G34, G92, G38, G39, G91, G65, G66, ex_wire0, ex_wire1, ex_wire2, ex_wire3, ex_wire4, ex_wire5, ex_wire6, ex_wire7, G63,
G64, G90, G94, n56, n61, G25, n66, G26, n71, n76, G28, n81, n86, G30,
n91, G31, n96, G32, n101, G33, n106, n111, n116, n121, G37, n126,
n131, n136, n141, G41, n146, G42, n151, G43, n156, G44, n161, n166,
G46, n171, n176, n181, n186, G53, n191, G51, n196, G52, n201, G56,
G54, n206, n211, G55, n216, n221, G57, n226, G58, n231, n236, G60,
n241, G61, n246, n251, n256, n261, n266, n271, G67, n276, G68, n281,
G69, n286, G70, n291, n296, n301, n306, G74, n311, G75, n316, G76,
n321, G77, n326, G78, n331, n336, n341, n346, n351, n356, n361, G87,
G88, G89, n366, n371, n376, n381, n401, n406, n411, G47, G48, G50,
G49, G83, G71, G72, G73, G79, G80, G81, G82, G85, G84, n386, n391,
n396, G22, G23, G86, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
n18, n24, n35, n36, n37, n42, n48, n54, n55, n57, n58, n59, n62, n63,
n64, n65, n67, n68, n69, n70, n72, n73, n74, n75, n77, n78, n79, n80,
n82, n83, n84, n85, n87, n88, n89, n90, n92, n93, n94, n95, n97, n98,
n99, n100, n102, n103, n104, n105, n107, n108, n109, n110, n112, n113,
n114, n115, n117, n118, n119, n120, n122, n123, n124, n125, n127,
n128, n129, n130, n132, n133, n134, n135, n137, n138, n139, n140,
n142, n143, n144, n145, n147, n148, n149, n150, n152, n153, n154,
n155, n157, n158, n159, n160, n162, n163, n164, n165, n167, n168,
n169, n170, n172, n173, n174, n175, n177, n178, n179, n180, n182,
n183, n184, n185, n187, n188, n189, n190, n192, n193, n194, n195,
n197, n198, n199, n200, n202, n203, n204, n205, n207, n208, n209,
n210, n212, n213, n214, n215, n217, n218, n219, n220, n222, n223,
n224, n225, n227, n228, n229, n230, n232, n233, n234, n235, n237,
n238, n239, n240, n242, n243, n244, n245, n247, n248, n249, n250,
n252, n253, n254, n255, n257, n259, n260, n262, n263, n264, n265,
n267, n268, n269, n270, n272, n273, n274, n275, n277, n278, n279,
n280, n282, n283, n284, n285, n287, n288, n289, n290, n292, n293,
n294, n295, n297, n298, n299, n300, n302, n303, n304, n305, n307,
n308, n309, n310, n312, n313, n314, n315, n317, n318, n319, n320,
n322, n323, n324, n325, n327, n328, n329, n330, n332, n333, n334,
n335, n337, n338, n339, n340, n342, n343, n344, n345, n347, n348,
n349, n350, n352, n353, n354, n355, n357, n358, n359, n360, n362,
n363, n364, n365, n367, n368, n369, n370, n372, n373, n374, n375,
n377, n378, n379, n380, n382, n383, n384, n385, n387, n388, n389,
n390, n392, n393, n394, n395, n397, n398, n399, n400, n402, n403,
n404, n405, n407, n408, n409, n410, n412, n413, n414, n415, n416,
n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
n439, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
n496, n497, n498, n499, n500, n501;

dff G35_reg ( clk, reset, G35, n111 );
dff G86_reg ( clk, reset, G86, n366 );
not U_inv0 ( n490, G86 );
dff G91_reg ( clk, reset, G91, n391 );
not U_inv1 ( n487, G91 );
dff G92_reg ( clk, reset, G92, n396 );
not U_inv2 ( n478, G92 );
dff G29_reg ( clk, reset, ex_wire0, n81 );
not U_inv3 ( n475, ex_wire0 );
dff G31_reg ( clk, reset, G31, n91 );
dff G32_reg ( clk, reset, G32, n96 );
not U_inv4 ( n493, G32 );
dff G33_reg ( clk, reset, G33, n101 );
not U_inv5 ( n476, G33 );
dff G34_reg ( clk, reset, G34, n106 );
not U_inv6 ( n477, G34 );
dff G54_reg ( clk, reset, G54, n206 );
dff G55_reg ( clk, reset, G55, n211 );
dff G56_reg ( clk, reset, G56, n216 );
dff G47_reg ( clk, reset, G47, n171 );
dff G48_reg ( clk, reset, G48, n176 );
dff G49_reg ( clk, reset, G49, n181 );
not U_inv7 ( n467, G49 );
dff G50_reg ( clk, reset, G50, n186 );
not U_inv8 ( n486, G50 );
dff G22_reg ( clk, reset, G22, new_G332_ );
dff G23_reg ( clk, reset, G23, new_G328_ );
dff G39_reg ( clk, reset, G39, n131 );
dff G41_reg ( clk, reset, G41, n141 );
not U_inv9 ( n485, G41 );
dff G40_reg ( clk, reset, ex_wire1, n136 );
not U_inv10 ( n480, ex_wire1 );
dff G36_reg ( clk, reset, ex_wire2, n116 );
not U_inv11 ( n481, ex_wire2 );
dff G38_reg ( clk, reset, G38, n126 );
dff G37_reg ( clk, reset, G37, n121 );
dff G57_reg ( clk, reset, G57, n221 );
dff G58_reg ( clk, reset, G58, n226 );
dff G59_reg ( clk, reset, ex_wire3, n231 );
not U_inv12 ( n482, ex_wire3 );
dff G60_reg ( clk, reset, G60, n236 );
dff G61_reg ( clk, reset, G61, n241 );
dff G62_reg ( clk, reset, ex_wire4, n246 );
not U_inv13 ( n466, ex_wire4 );
dff G51_reg ( clk, reset, G51, n191 );
dff G52_reg ( clk, reset, G52, n196 );
not U_inv14 ( n494, G52 );
dff G53_reg ( clk, reset, G53, n201 );
dff G67_reg ( clk, reset, G67, n271 );
dff G65_reg ( clk, reset, G65, n261 );
dff G66_reg ( clk, reset, G66, n266 );
dff G85_reg ( clk, reset, G85, n361 );
not U_inv15 ( n468, G85 );
dff G84_reg ( clk, reset, G84, n356 );
dff G82_reg ( clk, reset, G82, n346 );
dff G81_reg ( clk, reset, G81, n341 );
dff G80_reg ( clk, reset, G80, n336 );
dff G79_reg ( clk, reset, G79, n331 );
dff G68_reg ( clk, reset, G68, n276 );
not U_inv16 ( n492, G68 );
dff G69_reg ( clk, reset, G69, n281 );
dff G70_reg ( clk, reset, G70, n286 );
not U_inv17 ( n484, G70 );
dff G74_reg ( clk, reset, G74, n306 );
dff G83_reg ( clk, reset, G83, n351 );
not U_inv18 ( n488, G83 );
dff G75_reg ( clk, reset, G75, n311 );
not U_inv19 ( n479, G75 );
dff G76_reg ( clk, reset, G76, n316 );
dff G77_reg ( clk, reset, G77, n321 );
not U_inv20 ( n491, G77 );
dff G78_reg ( clk, reset, G78, n326 );
dff G63_reg ( clk, reset, G63, n251 );
not U_inv21 ( n489, G63 );
dff G64_reg ( clk, reset, G64, n256 );
dff G73_reg ( clk, reset, G73, n301 );
dff G72_reg ( clk, reset, G72, n296 );
dff G71_reg ( clk, reset, G71, n291 );
not U_inv22 ( n483, G71 );
dff G42_reg ( clk, reset, G42, n146 );
not U_inv23 ( n464, G42 );
dff G43_reg ( clk, reset, G43, n151 );
not U_inv24 ( n469, G43 );
dff G44_reg ( clk, reset, G44, n156 );
not U_inv25 ( n465, G44 );
dff G45_reg ( clk, reset, ex_wire5, n161 );
not U_inv26 ( n470, ex_wire5 );
dff G46_reg ( clk, reset, G46, n166 );
not U_inv27 ( n471, G46 );
dff G24_reg ( clk, reset, ex_wire6, n56 );
not U_inv28 ( n472, ex_wire6 );
dff G26_reg ( clk, reset, G26, n66 );
not U_inv29 ( n473, G26 );
dff G25_reg ( clk, reset, G25, n61 );
dff G27_reg ( clk, reset, ex_wire7, n71 );
not U_inv30 ( n474, ex_wire7 );
dff G28_reg ( clk, reset, G28, n76 );
dff G30_reg ( clk, reset, G30, n86 );
dff G93_reg ( clk, reset, G726, n401 );
dff G94_reg ( clk, reset, G94, n406 );
not U_inv31 ( n496, G94 );
dff G87_reg ( clk, reset, G87, n371 );
dff G88_reg ( clk, reset, G88, n376 );
dff G89_reg ( clk, reset, G89, n381 );
not U_inv32 ( n495, G89 );
dff G95_reg ( clk, reset, G729, n411 );
dff G90_reg ( clk, reset, G90, n386 );
not U_inv33 ( n463, G90 );
not U469 ( n11, n78 );
not U470 ( n6, n252 );
not U471 ( n9, n300 );
not U472 ( n3, n273 );
nand U473 ( n120, n122, n123 );
not U474 ( n1, n337 );
xor U475 ( n127, n439, n464 );
nor U476 ( n300, n478, n382 );
nand U477 ( n78, n82, n474 );
nand U478 ( n92, n427, n428 );
nand U479 ( n427, n452, n471 );
nand U480 ( n428, n122, n429 );
nand U481 ( n429, n430, n431 );
nor U482 ( n273, n274, n466 );
nor U483 ( n252, n284, n482 );
and U484 ( n363, n367, n480 );
and U485 ( n382, n213, n477 );
nand U486 ( n438, n127, n439 );
and U487 ( n88, n92, n472 );
and U488 ( n374, n378, n481 );
and U489 ( n72, n75, n475 );
not U490 ( n4, n280 );
not U491 ( n10, n68 );
nand U492 ( n431, n123, n432 );
nand U493 ( n432, n433, n434 );
nand U494 ( n433, n446, n465 );
nand U495 ( n434, n125, n435 );
nand U496 ( n435, n436, n437 );
nand U497 ( n436, n443, n469 );
nand U498 ( n437, n24, n438 );
not U499 ( n24, n128 );
xor U500 ( n125, n446, n465 );
xor U501 ( n123, n449, n470 );
xor U502 ( n122, n452, n471 );
nand U503 ( n430, n449, n470 );
nor U504 ( n286, n184, n234 );
nand U505 ( n234, n235, n237 );
nand U506 ( n237, n238, n2 );
nand U507 ( n235, n484, n239 );
not U508 ( n2, n240 );
nor U509 ( n246, n500, n270 );
nand U510 ( n270, n272, n3 );
nand U511 ( n272, n466, n274 );
and U512 ( n170, n204, n205 );
nor U513 ( n204, n42, n209 );
nand U514 ( n205, n35, n207 );
nor U515 ( n209, n478, n210 );
not U516 ( n7, n193 );
nor U517 ( n231, n500, n282 );
nand U518 ( n282, n283, n6 );
nand U519 ( n283, n482, n284 );
nor U520 ( n351, n167, n168 );
nor U521 ( n167, n169, n170 );
nor U522 ( n169, n172, n488 );
nor U523 ( n172, n18, n117 );
nor U524 ( n116, n375, n501 );
nor U525 ( n375, n377, n374 );
nor U526 ( n377, n378, n481 );
nor U527 ( n317, n327, n501 );
nor U528 ( n141, n362, n501 );
xor U529 ( n362, n363, n485 );
nor U530 ( n136, n364, n501 );
nor U531 ( n364, n365, n363 );
nor U532 ( n365, n367, n480 );
nor U533 ( n106, n379, n500 );
nor U534 ( n379, n380, n382 );
nor U535 ( n380, n213, n477 );
nor U536 ( n81, n73, n501 );
nor U537 ( n73, n74, n72 );
nor U538 ( n74, n75, n475 );
not U539 ( n42, n117 );
nor U540 ( n71, n79, n500 );
nor U541 ( n79, n80, n11 );
nor U542 ( n80, n82, n474 );
not U543 ( n36, n184 );
nor U544 ( n401, n102, n501 );
nor U545 ( n102, n103, n104 );
nor U546 ( n103, n108, n129 );
nor U547 ( n104, n105, n107 );
nand U548 ( n107, n92, n108 );
nor U549 ( n56, n89, n500 );
nor U550 ( n89, n90, n88 );
nor U551 ( n90, n92, n472 );
nor U552 ( n105, n109, n110 );
nor U553 ( n109, n112, n113 );
nor U554 ( n113, n114, n115 );
nor U555 ( n112, n119, n120 );
nand U556 ( n119, n124, n125 );
nor U557 ( n124, n127, n128 );
buf U558 ( n500, n59 );
buf U559 ( n501, n59 );
nor U560 ( n257, n262, n501 );
nor U561 ( n343, n348, new_G328_ );
nand U562 ( n337, n342, n343 );
nor U563 ( n342, n464, n469 );
nand U564 ( n330, n334, n1 );
nor U565 ( n334, n465, n470 );
not U566 ( n18, n110 );
not U567 ( n35, n138 );
nor U568 ( n146, n345, n329 );
xor U569 ( n345, n464, n343 );
not U570 ( n37, n163 );
nand U571 ( n391, n145, n366 );
nor U572 ( n145, n147, n148 );
nor U573 ( n148, n463, n143 );
nor U574 ( n147, n490, n149 );
nand U575 ( n396, n139, n366 );
nor U576 ( n139, n140, n142 );
nor U577 ( n142, n487, n143 );
nor U578 ( n140, n490, n144 );
nand U579 ( n386, n150, n366 );
nor U580 ( n150, n48, n152 );
nor U581 ( n152, n463, n490 );
not U582 ( n48, n143 );
nor U583 ( n135, n466, n487 );
nand U584 ( n310, G91, n6 );
nor U585 ( n367, G39, n300 );
nand U586 ( n208, G37, n374 );
nand U587 ( n378, G91, n403 );
nand U588 ( n403, G41, n363 );
nor U589 ( n213, n476, n64 );
nand U590 ( n84, G25, n88 );
nand U591 ( n64, n425, G32 );
and U592 ( n425, n10, G31 );
nand U593 ( n274, G61, n4 );
nand U594 ( n284, G58, n289 );
nand U595 ( n280, G53, n310 );
nand U596 ( n289, n399, n400 );
nand U597 ( n399, n9, n138 );
nand U598 ( n400, n402, G38 );
nor U599 ( n402, n138, n208 );
nor U600 ( n82, n473, n84 );
nand U601 ( n68, G30, n72 );
nand U602 ( n75, G92, n426 );
nand U603 ( n426, G28, n11 );
and U604 ( n442, n95, G90 );
nor U605 ( n439, n497, n498 );
and U606 ( n497, G74, n442 );
nor U607 ( n498, G90, G0 );
nor U608 ( G702, n394, n395 );
nand U609 ( n394, n420, n421 );
nand U610 ( n395, n397, n398 );
nand U611 ( n421, n422, G28 );
nand U612 ( n397, n273, G89 );
nand U613 ( n457, n458, n459 );
nand U614 ( n459, n57, n468 );
or U615 ( n458, n57, G84 );
not U616 ( n57, G8 );
and U617 ( n95, n455, n456 );
nand U618 ( n455, G90, n460 );
nand U619 ( n456, n457, n463 );
nand U620 ( n460, n461, n462 );
xor U621 ( n128, n443, G43 );
nand U622 ( n443, n444, n445 );
or U623 ( n445, G90, G1 );
nand U624 ( n444, G75, n442 );
nand U625 ( n446, n447, n448 );
or U626 ( n448, G90, G2 );
nand U627 ( n447, G76, n442 );
nand U628 ( n449, n450, n451 );
nand U629 ( n451, n463, n54 );
nand U630 ( n450, G77, n442 );
nand U631 ( n452, n453, n454 );
nand U632 ( n454, n463, n55 );
nand U633 ( n453, G78, n442 );
not U634 ( n54, G3 );
not U635 ( n55, G4 );
nand U636 ( n247, G90, n250 );
nand U637 ( n250, n252, n253 );
nand U638 ( n253, G91, n3 );
nand U639 ( n240, n245, G68 );
and U640 ( n245, n247, G67 );
nand U641 ( n239, n2, G69 );
nor U642 ( n281, n242, n184 );
xor U643 ( n242, n240, G69 );
nor U644 ( n420, G90, n423 );
nor U645 ( n423, n485, n424 );
nand U646 ( n424, n363, G88 );
nor U647 ( n276, n184, n243 );
nand U648 ( n243, n244, n240 );
nand U649 ( n244, n492, n248 );
nand U650 ( n248, G67, n247 );
nor U651 ( n271, n184, n249 );
xnor U652 ( n249, G67, n247 );
nand U653 ( n461, G64, n468 );
or U654 ( n462, G64, G84 );
nand U655 ( n277, G14, n274 );
nor U656 ( n236, n279, n277 );
xor U657 ( n279, G60, n280 );
nor U658 ( n241, n275, n277 );
nor U659 ( n275, n278, G61 );
and U660 ( n278, n4, G60 );
nand U661 ( n305, n309, G52 );
and U662 ( n309, n310, G51 );
nor U663 ( n201, n303, n304 );
nor U664 ( n303, G53, n5 );
not U665 ( n5, n305 );
nand U666 ( n398, n382, G87 );
nor U667 ( n196, n304, n307 );
nand U668 ( n307, n308, n305 );
nand U669 ( n308, n494, n312 );
nand U670 ( n304, G14, n280 );
nor U671 ( n191, n304, n313 );
xnor U672 ( n313, G51, n310 );
nand U673 ( n312, G51, n310 );
nand U674 ( n193, n198, n170 );
and U675 ( n198, G74, G75 );
nand U676 ( n187, n190, n7 );
and U677 ( n190, G76, G77 );
nor U678 ( n326, n185, n168 );
xor U679 ( n185, G78, n187 );
or U680 ( n207, n208, G38 );
nor U681 ( n321, n168, n188 );
nand U682 ( n188, n189, n187 );
nand U683 ( n189, n491, n192 );
nand U684 ( n192, n7, G76 );
nor U685 ( n316, n194, n168 );
xor U686 ( n194, n193, G76 );
nor U687 ( n311, n168, n195 );
nand U688 ( n195, n197, n193 );
nand U689 ( n197, n479, n199 );
nand U690 ( n199, n170, G74 );
nand U691 ( n287, G14, n284 );
nor U692 ( n226, n285, n287 );
nor U693 ( n285, n288, G58 );
and U694 ( n288, n289, G57 );
nor U695 ( n221, n287, n290 );
xnor U696 ( n290, G57, n289 );
nor U697 ( n306, n200, n168 );
xnor U698 ( n200, G74, n170 );
nor U699 ( n126, n370, n501 );
xor U700 ( n370, n208, G38 );
nor U701 ( n422, G94, n78 );
nor U702 ( n121, n500, n372 );
nand U703 ( n372, n373, n208 );
or U704 ( n373, G37, n374 );
nand U705 ( n210, n212, n138 );
nand U706 ( n212, G34, n213 );
nand U707 ( n327, G91, n302 );
nand U708 ( n302, G56, n298 );
and U709 ( n298, G54, n9 );
nand U710 ( n176, n322, n323 );
nand U711 ( n322, n318, G47 );
nand U712 ( n323, n317, G48 );
nand U713 ( n171, n324, n325 );
nand U714 ( n324, G12, n318 );
nand U715 ( n325, n317, G47 );
nand U716 ( n186, n314, n315 );
nand U717 ( n314, n318, G49 );
nand U718 ( n315, n317, G50 );
nand U719 ( n181, n319, n320 );
nand U720 ( n319, n318, G48 );
nand U721 ( n320, n317, G49 );
and U722 ( n318, G14, n327 );
nand U723 ( n294, G55, n298 );
nor U724 ( n216, n292, n293 );
nor U725 ( n292, G56, n8 );
not U726 ( n8, n294 );
nand U727 ( n293, G14, n302 );
nor U728 ( n206, n293, n299 );
xor U729 ( n299, G54, n300 );
nor U730 ( n211, n293, n295 );
nand U731 ( n295, n297, n294 );
or U732 ( n297, G55, n298 );
nor U733 ( n131, n368, n501 );
nor U734 ( n368, n369, n367 );
and U735 ( n369, n300, G39 );
nand U736 ( n138, G90, n404 );
nand U737 ( n404, n405, n407 );
nor U738 ( n407, G83, G66 );
and U739 ( n405, G16, n42 );
nor U740 ( n101, n383, n500 );
xor U741 ( n383, G33, n64 );
nor U742 ( n96, n500, n62 );
nand U743 ( n62, n63, n64 );
nand U744 ( n63, n493, n65 );
nand U745 ( n65, G31, n10 );
nor U746 ( n91, n67, n500 );
xor U747 ( n67, G31, n68 );
nor U748 ( n86, n500, n69 );
nand U749 ( n69, n70, n68 );
or U750 ( n70, G30, n72 );
nand U751 ( n412, n413, n414 );
xor U752 ( n414, G80, n479 );
xor U753 ( n413, n415, G78 );
nand U754 ( n415, n416, n417 );
nor U755 ( n417, G82, G81 );
nand U756 ( n117, n408, n409 );
nor U757 ( n408, n418, n419 );
nor U758 ( n409, n410, n412 );
xor U759 ( n419, G82, G77 );
nor U760 ( n416, G80, G79 );
xor U761 ( n410, G79, G74 );
xor U762 ( n418, G81, G76 );
nor U763 ( n76, n77, n500 );
xor U764 ( n77, G28, n78 );
nand U765 ( n184, G14, n262 );
nor U766 ( G727, G90, n36 );
nor U767 ( n66, n83, n501 );
xor U768 ( n83, G26, n84 );
nor U769 ( n61, n500, n85 );
nand U770 ( n85, n87, n84 );
or U771 ( n87, G25, n88 );
not U772 ( G701BF, G15 );
nor U773 ( n99, n500, G11 );
nand U774 ( n381, n153, n154 );
nand U775 ( n153, G88, n100 );
nand U776 ( n154, G89, n99 );
nand U777 ( n376, n155, n157 );
nand U778 ( n155, G87, n100 );
nand U779 ( n157, G88, n99 );
nand U780 ( n371, n158, n159 );
nand U781 ( n158, n100, n496 );
nand U782 ( n159, G87, n99 );
not U783 ( n59, G14 );
nand U784 ( n406, n97, n98 );
nand U785 ( n97, n100, n495 );
nand U786 ( n98, G94, n99 );
nand U787 ( n266, n254, n255 );
nand U788 ( n254, G66, n36 );
nand U789 ( n255, G65, n257 );
nand U790 ( n256, n259, n260 );
nand U791 ( n259, n36, G64 );
nand U792 ( n260, n257, G63 );
or U793 ( n261, n257, n499 );
and U794 ( n499, G65, G14 );
nand U795 ( new_G328_, n349, n350 );
nand U796 ( n349, G23, G701BF );
nand U797 ( n350, new_G332_, G15 );
nor U798 ( n355, G47, G15 );
nor U799 ( n166, n328, n329 );
xor U800 ( n328, G46, n330 );
nand U801 ( new_G332_, n352, n353 );
or U802 ( n353, n348, G15 );
nand U803 ( n352, G22, n354 );
nand U804 ( n354, n355, n357 );
nor U805 ( n161, n329, n332 );
nand U806 ( n332, n333, n330 );
nand U807 ( n333, n470, n335 );
nand U808 ( n335, n1, G44 );
nor U809 ( n267, n35, n269 );
nor U810 ( n269, G34, n478 );
nand U811 ( n110, n264, n265 );
or U812 ( n264, n138, G38 );
nand U813 ( n265, n267, n268 );
nand U814 ( n268, G35, n478 );
nand U815 ( n262, n384, n385 );
nor U816 ( n384, n392, n393 );
nor U817 ( n385, n387, n388 );
xor U818 ( n392, G72, G68 );
xor U819 ( n387, n484, n389 );
nand U820 ( n389, n390, n483 );
nor U821 ( n390, G73, G72 );
nor U822 ( n111, G35, n501 );
nor U823 ( n251, n263, n501 );
nor U824 ( n263, n18, G63 );
nor U825 ( n156, n338, n329 );
xor U826 ( n338, n337, G44 );
nor U827 ( n151, n329, n339 );
nand U828 ( n339, n340, n337 );
nand U829 ( n340, n469, n344 );
nand U830 ( n344, n343, G42 );
nor U831 ( n411, n93, n94 );
nand U832 ( n93, G14, n95 );
nand U833 ( n94, G83, n18 );
xor U834 ( n388, G71, G67 );
xor U835 ( n393, G73, G69 );
nand U836 ( n217, G14, n202 );
nand U837 ( n202, G90, n184 );
nand U838 ( n232, n233, n217 );
nand U839 ( n233, G0, n489 );
nand U840 ( n225, n227, n217 );
nand U841 ( n227, G1, n489 );
nand U842 ( n219, n220, n217 );
nand U843 ( n220, G2, n489 );
nor U844 ( n301, n214, n215 );
nor U845 ( n215, G73, n217 );
nor U846 ( n214, n218, n219 );
and U847 ( n218, G5, G63 );
nor U848 ( n291, n228, n229 );
nor U849 ( n229, G71, n217 );
nor U850 ( n228, n230, n232 );
nor U851 ( n230, n489, n54 );
nor U852 ( n296, n222, n223 );
nor U853 ( n223, G72, n217 );
nor U854 ( n222, n224, n225 );
nor U855 ( n224, n489, n55 );
nand U856 ( n108, n137, n138 );
or U857 ( n137, G90, G6 );
nor U858 ( n114, G5, G90 );
nand U859 ( n163, G14, n183 );
nand U860 ( n183, G91, n184 );
nand U861 ( n356, n164, n165 );
nand U862 ( n164, G10, n163 );
nand U863 ( n165, G84, n37 );
nand U864 ( n361, n160, n162 );
nand U865 ( n160, G11, n163 );
nand U866 ( n162, G85, n37 );
nand U867 ( n331, n180, n182 );
nand U868 ( n180, G6, n163 );
nand U869 ( n182, n37, G79 );
nand U870 ( n341, n175, n177 );
nand U871 ( n175, G8, n163 );
nand U872 ( n177, n37, G81 );
nand U873 ( n336, n178, n179 );
nand U874 ( n178, G7, n163 );
nand U875 ( n179, n37, G80 );
nand U876 ( n346, n173, n174 );
nand U877 ( n173, G9, n163 );
nand U878 ( n174, n37, G82 );
nand U879 ( n168, n202, n203 );
nand U880 ( n203, G9, n463 );
nand U881 ( n329, n202, n347 );
nand U882 ( n347, G7, n463 );
nand U883 ( n149, G91, n58 );
not U884 ( n58, G10 );
nand U885 ( n144, G92, n58 );
nand U886 ( n143, G10, G86 );
and U887 ( n100, G11, G14 );
and U888 ( n366, G13, G14 );
nor U889 ( n115, n117, n118 );
nand U890 ( n118, G90, n488 );
nor U891 ( n357, G48, n358 );
nand U892 ( n358, n467, n486 );
nand U893 ( n348, n359, n360 );
and U894 ( n360, G47, G48 );
nor U895 ( n359, n467, n486 );
nand U896 ( n129, n130, n132 );
or U897 ( n132, G90, G35 );
nand U898 ( n130, n133, G90 );
nor U899 ( n133, n134, n135 );
nor U900 ( n134, G91, n482 );
and U901 ( n238, G70, G69 );
endmodule


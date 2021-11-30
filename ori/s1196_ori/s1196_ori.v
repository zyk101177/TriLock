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

module s1196_ori ( clk, reset, G0, G1, G2, G3, G4, G5, G6, G7, G8, G9, G10, G11, G12,
G13, G546, G539, G550, G551, G552, G547, G548, G549, G530, G45, G542,
G532, G535, G537 );
input clk, reset, G0, G1, G2, G3, G4, G5, G6, G7, G8, G9, G10, G11, G12, G13;
output G546, G539, G550, G551, G552, G547, G548, G549, G530, G45, G542, G532,
G535, G537;
wire G30, G40, G33, G42, G43, G44, G29, G37, n103, G38, G34, G39, G35, ex_wire0, ex_wire1, G36,
G32, n98, n63, n108, n68, n73, n88, G46, n138, n58, n128, n123, n93,
n113, n133, n142, n83, n78, n118, n1, n2, n3, n4, n6, n7, n8, n9, n10,
n12, n14, n16, n17, n18, n19, n20, n21, n23, n24, n25, n26, n27, n28,
n29, n30, n31, n32, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
n59, n60, n61, n62, n64, n65, n66, n67, n69, n70, n71, n72, n74, n75,
n76, n77, n79, n80, n81, n82, n84, n85, n86, n87, n89, n90, n91, n92,
n94, n95, n96, n97, n99, n100, n101, n102, n104, n105, n106, n107,
n109, n110, n111, n112, n114, n115, n116, n117, n119, n120, n121,
n122, n124, n125, n126, n127, n129, n130, n131, n132, n134, n135,
n136, n137, n139, n140, n141, n143, n144, n145, n146, n147, n148,
n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
n303, n304, n305, n306, n307, n308, n309, n311, n312, n313, n314,
n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
n447, n448, n449, n450, n451, n452, n453, n454, n456, n457, n458,
n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
n470, n471, n472, n473, n474, n476, n477, n478, n479, n480, n481,
n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
n504, n505, n506, n507, n508, n510, n511, n512;

dff G29_reg ( clk, reset, G29, n58 );
dff G30_reg ( clk, reset, G30, n63 );
dff G31_reg ( clk, reset, ex_wire0, n68 );
not U_inv0 ( n507, ex_wire0 );
dff G32_reg ( clk, reset, G32, n73 );
dff G34_reg ( clk, reset, G34, n83 );
not U_inv1 ( n508, G34 );
dff G35_reg ( clk, reset, G35, n88 );
dff G36_reg ( clk, reset, G36, n93 );
dff G37_reg ( clk, reset, G37, n98 );
dff G38_reg ( clk, reset, G38, n103 );
dff G39_reg ( clk, reset, G39, n108 );
dff G40_reg ( clk, reset, G40, n113 );
dff G42_reg ( clk, reset, G42, n123 );
dff G43_reg ( clk, reset, G43, n128 );
dff G44_reg ( clk, reset, G44, n133 );
dff G46_reg ( clk, reset, G46, n142 );
dff G33_reg ( clk, reset, G33, n78 );
dff G45_reg ( clk, reset, G45, n138 );
dff G41_reg ( clk, reset, ex_wire1, n118 );
not U_inv2 ( G546, ex_wire1 );
not U521 ( n36, G6 );
not U522 ( n21, G1 );
not U523 ( n25, G2 );
not U524 ( n42, n311 );
not U525 ( n7, n337 );
not U526 ( n40, n59 );
not U527 ( n18, n326 );
not U528 ( n2, n163 );
nor U529 ( n334, n326, n335 );
nand U530 ( n335, n30, n336 );
nand U531 ( n311, n43, n47 );
nand U532 ( n357, n32, n42 );
not U533 ( n3, n323 );
not U534 ( n10, n201 );
nand U535 ( n148, n145, n24 );
nand U536 ( n382, n223, n218 );
not U537 ( n19, n206 );
nand U538 ( n393, n44, n27 );
not U539 ( n35, n104 );
not U540 ( n32, n189 );
not U541 ( n27, n82 );
nand U542 ( n407, n412, n38 );
nor U543 ( n412, n413, n53 );
nor U544 ( n413, n414, n415 );
nor U545 ( n414, n417, n418 );
nand U546 ( n337, n372, n8 );
nor U547 ( n372, n37, n86 );
nand U548 ( n370, n371, n337 );
nand U549 ( n371, n373, n8 );
nor U550 ( n373, n36, n377 );
nand U551 ( n416, n420, n421 );
nand U552 ( n421, n26, n145 );
nand U553 ( n420, n27, n21 );
not U554 ( n8, n328 );
nand U555 ( n317, n318, n319 );
nand U556 ( n319, n3, n320 );
nor U557 ( n318, n324, n325 );
nand U558 ( n320, n160, n321 );
nand U559 ( G535, n332, n333 );
nor U560 ( n332, n338, n339 );
nor U561 ( n333, n7, n334 );
nor U562 ( n338, n323, n346 );
nand U563 ( n59, n41, n46 );
nand U564 ( n304, n479, n480 );
nor U565 ( n479, n493, n494 );
nor U566 ( n480, n481, n482 );
nor U567 ( n493, n311, n401 );
not U568 ( n37, n65 );
nor U569 ( n498, n37, n53 );
not U570 ( n6, n126 );
nand U571 ( n326, n54, n299 );
nor U572 ( n325, n326, n327 );
nand U573 ( n327, n27, n65 );
not U574 ( n26, n422 );
nor U575 ( n145, n21, n36 );
nand U576 ( n389, n390, n391 );
nand U577 ( n390, n18, n44 );
nand U578 ( n391, n126, n392 );
nand U579 ( n392, n393, n394 );
nand U580 ( n418, n26, n21 );
nor U581 ( n273, n168, n36 );
nand U582 ( n163, n292, n50 );
nor U583 ( n292, n293, n41 );
nor U584 ( n293, n273, n294 );
nor U585 ( n294, n46, n508 );
nand U586 ( G542, n283, n284 );
nand U587 ( n284, n273, n285 );
nor U588 ( n283, n2, n289 );
nand U589 ( n285, n286, n287 );
nand U590 ( G530, n442, n443 );
nand U591 ( n443, n444, n1 );
or U592 ( n442, n6, n477 );
nor U593 ( n444, n470, n25 );
nand U594 ( n419, n416, n41 );
not U595 ( n38, n344 );
nand U596 ( n449, n450, n451 );
nand U597 ( n450, n178, n457 );
nand U598 ( n451, n452, n453 );
nand U599 ( n457, n365, n458 );
and U600 ( n452, n510, n456 );
or U601 ( n510, n46, n507 );
nor U602 ( n353, n354, n181 );
nor U603 ( n354, n355, n356 );
nor U604 ( n355, n358, n359 );
nor U605 ( n356, n16, n357 );
not U606 ( n51, n90 );
nand U607 ( n323, n347, n124 );
nor U608 ( n347, n181, n125 );
not U609 ( n47, n179 );
not U610 ( n39, n277 );
nand U611 ( n458, n39, n507 );
not U612 ( n30, n111 );
nor U613 ( n298, n299, n300 );
nand U614 ( n300, n54, n301 );
nand U615 ( G539, n295, n296 );
nand U616 ( n296, n124, n125 );
nor U617 ( n295, n297, n298 );
nor U618 ( n297, n302, n303 );
or U619 ( n303, n304, n76 );
nand U620 ( n417, n36, n46 );
not U621 ( n1, n168 );
or U622 ( n226, n229, n28 );
or U623 ( G550, n224, n225 );
nand U624 ( n224, n230, n231 );
nand U625 ( n225, n226, n227 );
nand U626 ( n231, n232, n9 );
nand U627 ( n241, n237, n229 );
nand U628 ( G549, n238, n239 );
nor U629 ( n238, n247, n248 );
nor U630 ( n239, n240, n241 );
nor U631 ( n248, n168, n249 );
nor U632 ( n430, n431, n21 );
nor U633 ( n431, n432, n433 );
nand U634 ( n432, n436, n437 );
nand U635 ( n433, n434, n435 );
nor U636 ( n201, n424, n301 );
nand U637 ( n435, n30, n28 );
nand U638 ( n301, n425, n426 );
nand U639 ( n426, n427, n428 );
and U640 ( n428, n148, n143 );
nor U641 ( n427, n146, n430 );
nand U642 ( n408, n409, n410 );
nor U643 ( n410, n90, n411 );
nor U644 ( n409, n277, n82 );
nand U645 ( n411, n21, n52 );
not U646 ( n43, n160 );
not U647 ( n4, n349 );
xor U648 ( n434, n181, n32 );
nor U649 ( n185, n186, n10 );
nor U650 ( n186, n187, n188 );
nor U651 ( n188, n84, n189 );
nor U652 ( n187, n190, n36 );
nand U653 ( n363, n364, n48 );
nor U654 ( n364, n365, n86 );
nor U655 ( n487, n25, n422 );
nor U656 ( n481, n377, n491 );
nand U657 ( n491, n27, n84 );
nand U658 ( G551, n199, n200 );
nand U659 ( n200, n201, n202 );
nor U660 ( n199, n210, n211 );
nand U661 ( n202, n203, n204 );
nor U662 ( n505, n47, n160 );
not U663 ( n50, n345 );
nor U664 ( n400, n402, n21 );
and U665 ( n402, n377, n311 );
nor U666 ( n254, n189, n34 );
not U667 ( n24, n85 );
nor U668 ( n84, n34, n25 );
not U669 ( n48, n91 );
nand U670 ( n401, n502, n32 );
nor U671 ( n502, n25, n181 );
nor U672 ( n192, n193, n194 );
and U673 ( n193, n198, n32 );
nor U674 ( n194, n195, n36 );
nor U675 ( n195, n92, n196 );
nand U676 ( n196, n197, n74 );
nand U677 ( n197, n84, n31 );
not U678 ( n9, n66 );
nor U679 ( n92, n30, n85 );
not U680 ( n29, n181 );
nor U681 ( n117, n476, n99 );
nor U682 ( n476, n31, n29 );
nor U683 ( n470, n471, n472 );
nor U684 ( n472, n473, n21 );
nor U685 ( n471, n474, n16 );
nor U686 ( n473, n34, n16 );
nand U687 ( n362, n366, n16 );
nor U688 ( n233, n25, n31 );
nand U689 ( n218, n233, n28 );
nand U690 ( n206, n233, n21 );
nand U691 ( n223, n222, n25 );
not U692 ( n17, n209 );
nor U693 ( n265, n50, n53 );
nand U694 ( n261, n262, n263 );
nand U695 ( n263, n264, n51 );
nand U696 ( n262, n265, n39 );
nor U697 ( n264, n45, n41 );
nor U698 ( n190, n191, n29 );
nor U699 ( n191, n17, n25 );
nand U700 ( n336, n344, n345 );
and U701 ( n309, n131, n511 );
or U702 ( n511, n311, n111 );
not U703 ( n44, n397 );
nand U704 ( n131, n312, n44 );
and U705 ( n312, n41, n254 );
nand U706 ( n104, n36, n41 );
nor U707 ( n204, n32, n205 );
nand U708 ( n205, n111, n206 );
nor U709 ( n282, n49, n52 );
not U710 ( n45, n167 );
xor U711 ( n236, n34, n209 );
not U712 ( n54, n424 );
nor U713 ( n260, n160, n91 );
nand U714 ( n276, n50, n277 );
nor U715 ( n232, n233, n181 );
nor U716 ( n166, n41, n49 );
or U717 ( n287, n167, n166 );
nand U718 ( n249, n17, n28 );
nor U719 ( n118, n161, n162 );
nor U720 ( n161, n168, n169 );
nand U721 ( n162, n163, n164 );
nand U722 ( n169, n43, n170 );
nand U723 ( n138, n121, n122 );
nand U724 ( n122, n124, n14 );
nor U725 ( n121, n126, n18 );
not U726 ( n14, n125 );
nand U727 ( n83, n66, n10 );
nor U728 ( n78, n67, n69 );
nor U729 ( n67, n74, n75 );
nor U730 ( n69, n70, n71 );
nand U731 ( n75, n76, n55 );
nor U732 ( n142, n100, n101 );
nand U733 ( n101, n102, n104 );
nand U734 ( n100, n112, n114 );
nand U735 ( n102, n21, n105 );
nand U736 ( n112, n116, n117 );
nor U737 ( n116, n119, n25 );
nor U738 ( n119, n120, n21 );
nor U739 ( n120, n26, n16 );
nor U740 ( n128, n136, n137 );
nand U741 ( n136, n147, n148 );
nand U742 ( n137, n139, n140 );
nand U743 ( n147, n149, n29 );
nand U744 ( n135, n42, n31 );
nand U745 ( n73, n77, n79 );
nor U746 ( n77, n80, n81 );
nor U747 ( n80, n85, n86 );
and U748 ( n81, n82, n84 );
nand U749 ( n110, n25, n28 );
nand U750 ( n93, n56, n57 );
or U751 ( n57, n59, n60 );
nand U752 ( n56, n42, n34 );
or U753 ( n173, n115, n35 );
nand U754 ( n153, n154, n45 );
nor U755 ( n154, n36, n91 );
nor U756 ( n149, n32, n21 );
nand U757 ( n134, n34, n36 );
nand U758 ( n114, n115, n52 );
xor U759 ( n108, n25, n181 );
nand U760 ( n63, n52, n91 );
nand U761 ( n82, n32, G3 );
nand U762 ( n189, G4, G6 );
nand U763 ( n299, n398, n399 );
nand U764 ( n399, n400, n23 );
nand U765 ( n398, n403, G2 );
not U766 ( n23, n401 );
nand U767 ( n328, n374, n55 );
nand U768 ( n374, n375, n376 );
nand U769 ( n376, G13, n299 );
nor U770 ( n403, G5, n404 );
nor U771 ( n404, n405, n406 );
nor U772 ( n405, n397, n419 );
nand U773 ( n406, n407, n408 );
and U774 ( n415, n416, G8 );
nand U775 ( G532, n367, n368 );
nor U776 ( n367, n388, n389 );
nor U777 ( n368, n369, n370 );
nor U778 ( n388, G43, n10 );
nor U779 ( n324, n328, n329 );
nand U780 ( n329, G8, n330 );
nand U781 ( n330, n181, n331 );
nand U782 ( n331, n38, G6 );
nand U783 ( G537, n305, n306 );
nand U784 ( n306, n126, n307 );
nand U785 ( n305, G2, n317 );
nand U786 ( n307, n308, n309 );
not U787 ( n41, G7 );
nand U788 ( n65, n499, n500 );
nand U789 ( n499, n38, G8 );
or U790 ( n500, n365, n49 );
nand U791 ( n365, G10, n40 );
nand U792 ( n375, n478, n304 );
nor U793 ( n478, G13, n76 );
nor U794 ( n482, n53, n483 );
nand U795 ( n483, n484, n34 );
nand U796 ( n484, n485, n486 );
nand U797 ( n486, n487, G35 );
nand U798 ( n485, n488, n27 );
nor U799 ( n488, G2, n489 );
nor U800 ( n489, n490, n65 );
nor U801 ( n490, n345, n277 );
nand U802 ( n477, n495, n28 );
nand U803 ( n495, n496, n497 );
nand U804 ( n496, G36, n36 );
nand U805 ( n497, n498, n254 );
nor U806 ( n494, G2, n477 );
nor U807 ( n126, n375, G12 );
nor U808 ( n339, n340, n6 );
nor U809 ( n340, n341, n342 );
nor U810 ( n342, G44, G3 );
nor U811 ( n341, n82, n343 );
not U812 ( n46, G8 );
not U813 ( n31, G4 );
nand U814 ( n422, G3, n31 );
nand U815 ( n168, n445, G12 );
nor U816 ( n445, G13, n349 );
nand U817 ( n349, n446, n447 );
nor U818 ( n447, n448, n449 );
and U819 ( n446, G46, n461 );
nor U820 ( n448, n30, n459 );
nor U821 ( n465, n466, n467 );
nand U822 ( n467, G8, n468 );
nand U823 ( n466, n456, n507 );
nand U824 ( n468, G9, n167 );
nand U825 ( n456, n469, G30 );
nor U826 ( n469, G6, n41 );
nand U827 ( n461, G11, n462 );
nand U828 ( n462, n463, n464 );
nand U829 ( n464, n40, n49 );
nor U830 ( n463, n115, n465 );
nand U831 ( n344, n501, G7 );
nor U832 ( n501, G9, G10 );
nand U833 ( n90, G11, G9 );
nand U834 ( n125, n350, G2 );
nor U835 ( n350, n351, n21 );
nor U836 ( n351, n352, n353 );
nor U837 ( n352, n362, n363 );
nand U838 ( n179, G8, n51 );
nand U839 ( n277, G8, n41 );
nor U840 ( n459, n366, n460 );
nor U841 ( n460, G0, n422 );
nand U842 ( n167, G8, G10 );
nand U843 ( n111, G4, n34 );
not U844 ( n34, G5 );
not U845 ( n52, G10 );
nand U846 ( n345, G9, n52 );
not U847 ( n49, G9 );
nand U848 ( n229, n242, n1 );
nor U849 ( n242, G0, n209 );
nor U850 ( n230, n12, n234 );
not U851 ( n12, n237 );
nor U852 ( n234, n10, n235 );
nand U853 ( n235, G2, n236 );
nand U854 ( n160, G7, G10 );
and U855 ( n124, n348, G12 );
nor U856 ( n348, G13, n4 );
nand U857 ( n268, n269, n270 );
nand U858 ( n269, G34, n272 );
nand U859 ( n270, n271, n1 );
xor U860 ( n272, n41, n167 );
nand U861 ( G547, n266, n267 );
nand U862 ( n266, n273, n274 );
nand U863 ( n267, G9, n268 );
nand U864 ( n274, n275, n276 );
nor U865 ( n453, G10, n454 );
nand U866 ( n454, n53, n49 );
not U867 ( n53, G11 );
nor U868 ( n198, n25, G3 );
nand U869 ( G552, n182, n183 );
or U870 ( n183, G40, n168 );
nor U871 ( n182, n184, n185 );
nor U872 ( n184, n192, n66 );
nand U873 ( n436, n198, G6 );
nand U874 ( n227, n228, n1 );
nor U875 ( n228, G29, n16 );
nand U876 ( n359, G37, n103 );
and U877 ( n103, n360, n361 );
nor U878 ( n361, G4, G10 );
nor U879 ( n360, G0, n41 );
and U880 ( n146, n439, n440 );
nor U881 ( n439, n441, n25 );
nor U882 ( n440, G1, n30 );
nor U883 ( n441, G6, G5 );
nor U884 ( n247, n10, n250 );
nand U885 ( n250, G1, n251 );
nand U886 ( n251, n252, n79 );
nor U887 ( n252, n254, n255 );
nand U888 ( n181, G5, G3 );
nor U889 ( n178, n49, G11 );
nor U890 ( n369, n168, n378 );
nand U891 ( n378, G0, n379 );
nand U892 ( n379, n380, n381 );
nor U893 ( n381, n19, n382 );
nor U894 ( n210, n168, n213 );
nand U895 ( n213, G5, n214 );
nand U896 ( n214, n215, n216 );
nand U897 ( n216, G0, n217 );
nor U898 ( n115, G30, G6 );
and U899 ( n76, G32, n425 );
nand U900 ( n425, n503, n504 );
nand U901 ( n504, G30, n39 );
nor U902 ( n503, n505, n506 );
nor U903 ( n506, n41, n345 );
nor U904 ( n366, G5, G3 );
nand U905 ( n377, n492, n50 );
nor U906 ( n492, G11, n59 );
or U907 ( G548, n257, n258 );
nor U908 ( n257, n259, n508 );
nor U909 ( n258, G42, n168 );
nor U910 ( n259, n260, n261 );
nand U911 ( n397, n423, n51 );
nor U912 ( n423, G8, n52 );
nand U913 ( n86, G6, n31 );
nand U914 ( n85, G3, n25 );
not U915 ( n28, G3 );
nand U916 ( n437, n438, G5 );
nor U917 ( n438, G6, G4 );
nand U918 ( n91, G11, n49 );
not U919 ( n16, G0 );
nand U920 ( n66, n246, n76 );
nor U921 ( n246, G13, G12 );
and U922 ( n211, n212, G39 );
nor U923 ( n212, n31, n66 );
nand U924 ( n74, n30, G2 );
nand U925 ( n209, G4, G1 );
nand U926 ( n143, n429, G2 );
nor U927 ( n429, G6, n209 );
nor U928 ( n240, n66, n244 );
nand U929 ( n244, n84, n245 );
nand U930 ( n245, G4, G3 );
nand U931 ( n358, G8, G11 );
nor U932 ( n308, n313, n314 );
nor U933 ( n313, G4, n132 );
nor U934 ( n314, n37, n82 );
and U935 ( n474, n512, n117 );
or U936 ( n512, G4, n181 );
and U937 ( n79, n74, n253 );
nand U938 ( n253, G5, n24 );
nor U939 ( n255, G4, n256 );
nor U940 ( n256, n198, G5 );
nor U941 ( n222, n21, G3 );
nor U942 ( n215, n20, n220 );
not U943 ( n20, n223 );
nor U944 ( n220, G0, n221 );
nor U945 ( n221, n222, n17 );
nor U946 ( n380, n383, n384 );
nor U947 ( n383, G3, n111 );
nand U948 ( n384, n385, n386 );
nand U949 ( n386, n387, n29 );
nand U950 ( n385, n26, G1 );
nor U951 ( n99, n34, G1 );
nor U952 ( n203, n207, n208 );
nor U953 ( n208, n85, n209 );
nor U954 ( n207, G5, n148 );
nand U955 ( n217, n218, n219 );
nand U956 ( n219, G3, n209 );
nor U957 ( n387, G2, n31 );
nand U958 ( n343, G11, n336 );
nand U959 ( n132, n315, n35 );
nor U960 ( n315, G8, n60 );
nand U961 ( n394, n395, n28 );
nand U962 ( n395, G4, n396 );
nand U963 ( n396, n254, n38 );
nand U964 ( n60, n316, n52 );
nor U965 ( n316, G5, G11 );
nor U966 ( n275, n278, n279 );
nor U967 ( n279, G8, n90 );
nor U968 ( n278, n280, n277 );
nor U969 ( n280, n281, n282 );
nand U970 ( n424, G13, n55 );
not U971 ( n55, G12 );
nor U972 ( n286, n44, n288 );
nor U973 ( n288, G9, G8 );
nor U974 ( n281, G10, n53 );
nand U975 ( n321, n322, G38 );
nor U976 ( n322, G9, n36 );
nor U977 ( n289, n508, n290 );
nand U978 ( n290, n43, n291 );
nand U979 ( n291, G8, G9 );
nor U980 ( n271, G6, n160 );
nand U981 ( n237, n243, G3 );
nor U982 ( n243, G33, G13 );
or U983 ( n302, G12, G13 );
nand U984 ( n70, n72, n4 );
nor U985 ( n72, G4, n21 );
nand U986 ( n139, n146, G3 );
nand U987 ( n105, G0, n106 );
nand U988 ( n106, n107, n109 );
nand U989 ( n109, n110, n111 );
nand U990 ( n107, n30, n85 );
nor U991 ( n158, G6, n50 );
nor U992 ( n123, n150, n151 );
nor U993 ( n150, n90, n159 );
nand U994 ( n151, n152, n153 );
nand U995 ( n159, G6, n160 );
nand U996 ( n152, G7, n155 );
nand U997 ( n155, n156, n157 );
nand U998 ( n156, n48, n46 );
nand U999 ( n157, n158, G11 );
nor U1000 ( n133, n127, n129 );
nand U1001 ( n129, n130, n131 );
nor U1002 ( n127, n134, n135 );
or U1003 ( n130, n132, G9 );
nand U1004 ( n140, G3, n141 );
nand U1005 ( n141, n143, n144 );
nand U1006 ( n144, n30, n145 );
nand U1007 ( n88, n61, n62 );
nand U1008 ( n62, n64, n38 );
nand U1009 ( n61, G6, n65 );
nor U1010 ( n64, G8, G6 );
nand U1011 ( n174, G8, n175 );
nand U1012 ( n175, n176, n507 );
nand U1013 ( n176, G7, n177 );
or U1014 ( n177, n36, n178 );
nor U1015 ( n113, n171, n172 );
nor U1016 ( n171, n179, n180 );
nor U1017 ( n172, n173, n174 );
nand U1018 ( n180, G6, n52 );
nor U1019 ( n58, n92, n94 );
nand U1020 ( n94, n95, n96 );
nand U1021 ( n96, n97, n99 );
nand U1022 ( n95, n19, G3 );
nand U1023 ( n164, n165, G34 );
nor U1024 ( n165, n166, n167 );
nor U1025 ( n97, G4, n25 );
nand U1026 ( n346, G38, G37 );
nand U1027 ( n170, G6, G9 );
nand U1028 ( n68, n87, n89 );
nand U1029 ( n89, G10, n90 );
nand U1030 ( n87, G11, n41 );
nand U1031 ( n71, G12, G0 );
xor U1032 ( n98, G9, G6 );
endmodule



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



module s1488_ori ( clk, reset, CLR, v6, v5, v4, v3, v2, v1, v0, v13_D_20, v13_D_21,
v13_D_16, v13_D_22, v13_D_19, v13_D_18, v13_D_11, v13_D_23, v13_D_6,
v13_D_15, v13_D_9, v13_D_10, v13_D_8, v13_D_24, v13_D_14, v13_D_7,
v13_D_17, v13_D_12, v13_D_13 );
input clk, reset, CLR, v6, v5, v4, v3, v2, v1, v0;
output v13_D_20, v13_D_21, v13_D_16, v13_D_22, v13_D_19, v13_D_18, v13_D_11,
v13_D_23, v13_D_6, v13_D_15, v13_D_9, v13_D_10, v13_D_8, v13_D_24,
v13_D_14, v13_D_7, v13_D_17, v13_D_12, v13_D_13;
wire v7, v8, v9, v10, v11, v12, n81, n66, n76, n56, n61, n71, n586, n587,
n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631,
n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642,
n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653,
n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, n664,
n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n675,
n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, n686,
n687, n688, n689, n690, n691, n692, n693, n694, n695, n696, n697,
n698, n699, n700, n701, n702, n703, n704, n705, n706, n707, n708,
n709, n710, n711, n712, n713, n714, n715, n716, n717, n718, n719,
n720, n721, n722, n723, n724, n725, n726, n727, n728, n729, n730,
n731, n732, n733, n734, n735, n736, n737, n738, n739, n740, n741,
n742, n743, n744, n745, n746, n747, n748, n749, n750, n751, n752,
n753, n754, n755, n756, n757, n758, n759, n760, n761, n762, n763,
n764, n765, n766, n767, n768, n769, n770, n771, n772, n773, n774,
n775, n776, n777, n778, n779, n780, n781, n782, n783, n784, n785,
n786, n787, n788, n789, n790, n791, n792, n793, n794, n795, n796,
n797, n798, n799, n800, n801, n802, n803, n804, n805, n806, n807,
n808, n809, n810, n811, n812, n813, n814, n815, n816, n817, n818,
n819, n820, n821, n822, n823, n824, n825, n826, n827, n828, n829,
n830, n831, n832, n833, n834, n835, n836, n837, n838, n839, n840,
n841, n842, n843, n844, n845, n846, n847, n848, n849, n850, n851,
n852, n853, n854, n855, n856, n857, n858, n859, n860, n861, n862,
n863, n864, n865, n866, n867, n868, n869, n870, n871, n872, n873,
n874, n875, n876, n877, n878, n879, n880, n881, n882, n883, n884,
n885, n886, n887, n888, n889, n890, n891, n892, n893, n894, n895,
n896, n897, n898, n899, n900, n901, n902, n903, n904, n905, n906,
n907, n908, n909, n910, n911, n912, n913, n914, n915, n916, n917,
n918, n919, n920, n921, n922, n923, n924, n925, n926, n927, n928,
n929, n930, n931, n932, n933, n934, n935, n936, n937, n938, n939,
n940, n941, n942, n943, n944, n945, n946, n947, n948, n949, n950,
n951, n952, n953, n954, n955, n956, n957, n958, n959, n960, n961,
n962, n963, n964, n965, n966, n967, n968, n969, n970, n971, n972,
n973, n974, n975, n976, n977, n978, n979, n980, n981, n982, n983,
n984, n985, n986, n987, n988, n989, n990, n991, n992, n993, n994,
n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004,
n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014,
n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024,
n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034,
n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044,
n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054,
n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064,
n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074,
n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084,
n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094,
n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104,
n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114,
n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124,
n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134,
n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144,
n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154,
n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164,
n1165, n1166, n1167;

dff v7_reg ( clk, reset, v7, n81 );
not U_inv0 ( n589, v7 );
dff v12_reg ( clk, reset, v12, n56 );
not U_inv1 ( n586, v12 );
dff v9_reg ( clk, reset, v9, n71 );
not U_inv2 ( n587, v9 );
dff v10_reg ( clk, reset, v10, n66 );
not U_inv3 ( n588, v10 );
dff v11_reg ( clk, reset, v11, n61 );
not U_inv4 ( n590, v11 );
dff v8_reg ( clk, reset, v8, n76 );
not U_inv5 ( n591, v8 );
nand U607 ( v13_D_9, n592, n593 );
nand U608 ( n593, n594, n595 );
nand U609 ( n595, n596, n597 );
nand U610 ( n597, n598, n599 );
nand U611 ( n592, n600, n586 );
nand U612 ( n600, n601, n602 );
nand U613 ( n602, n603, n604 );
nand U614 ( v13_D_8, n605, n606 );
nor U615 ( n606, n607, n608 );
nand U616 ( n608, n609, n610 );
nand U617 ( n609, n611, n612 );
nand U618 ( n612, n613, n614 );
nand U619 ( n614, n615, n616 );
nand U620 ( n607, n596, n617 );
nor U621 ( n605, n618, n619 );
nand U622 ( n619, n620, n621 );
nand U623 ( n621, n622, n623 );
nand U624 ( n623, n624, n625 );
nand U625 ( n625, v9, n590 );
nand U626 ( n620, n626, n627 );
nand U627 ( n627, n613, n628 );
or U628 ( n628, n590, n629 );
nor U629 ( n618, v7, n630 );
nor U630 ( n630, n631, n632 );
nand U631 ( n632, n633, n634 );
nor U632 ( n633, n635, n636 );
nor U633 ( n636, n594, n637 );
nor U634 ( n635, n590, n638 );
nand U635 ( n631, n639, n640 );
nor U636 ( n640, n641, n642 );
nor U637 ( n639, n643, n644 );
nor U638 ( n644, n629, n645 );
nor U639 ( n643, n646, n647 );
nand U640 ( v13_D_7, n648, n649 );
nor U641 ( n649, n650, n651 );
nor U642 ( n651, n629, n652 );
nor U643 ( n652, n653, n654 );
nor U644 ( n653, n655, n656 );
nand U645 ( n656, v10, n657 );
nor U646 ( n648, n658, n659 );
and U647 ( n659, n660, n626 );
nor U648 ( n658, n661, n589 );
nor U649 ( n661, n662, n663 );
and U650 ( n663, n664, n665 );
nor U651 ( n662, n666, n637 );
nor U652 ( n666, n667, n668 );
nor U653 ( n668, v10, n624 );
nor U654 ( n667, v12, n669 );
nand U655 ( v13_D_6, n670, n671 );
nor U656 ( n671, n672, n673 );
nor U657 ( n673, v7, n674 );
nor U658 ( n674, n675, n676 );
nand U659 ( n676, n677, n634 );
nand U660 ( n634, v9, n678 );
nor U661 ( n677, n679, n680 );
nor U662 ( n680, n590, n681 );
nand U663 ( n681, v8, n645 );
nor U664 ( n679, v11, n586 );
nand U665 ( n675, n682, n683 );
nand U666 ( n683, n684, n646 );
nor U667 ( n682, n685, n686 );
nor U668 ( n686, n629, n604 );
nor U669 ( n629, n687, v4 );
nor U670 ( n672, n587, n688 );
nand U671 ( n688, n626, n588 );
nor U672 ( n670, n689, n690 );
nand U673 ( n690, n691, n692 );
nand U674 ( n692, n693, n604 );
nor U675 ( n693, n591, n624 );
nand U676 ( n691, n694, n695 );
nor U677 ( n694, n696, n586 );
nand U678 ( v13_D_24, n697, n698 );
nor U679 ( n698, n699, n700 );
nand U680 ( n700, n701, n702 );
nor U681 ( n699, n703, n704 );
nand U682 ( n704, n611, n705 );
nor U683 ( n697, n706, n707 );
nand U684 ( n707, n708, n709 );
nand U685 ( n709, n710, n687 );
nand U686 ( n710, n711, n712 );
nand U687 ( n712, n713, n714 );
nor U688 ( n711, n715, n716 );
nor U689 ( n716, n655, n717 );
nor U690 ( n715, n678, n718 );
nand U691 ( n718, n719, n598 );
nand U692 ( n708, v7, n720 );
nand U693 ( n720, n721, n722 );
nand U694 ( n722, n689, n723 );
nor U695 ( n723, v2, v0 );
nor U696 ( n689, n664, n724 );
nor U697 ( n721, n725, n726 );
nor U698 ( n726, n696, n727 );
nor U699 ( n725, n719, n728 );
nand U700 ( n728, n729, n588 );
nor U701 ( n706, n638, n610 );
nor U702 ( v13_D_23, n730, n731 );
nor U703 ( n730, n732, n733 );
nand U704 ( n733, n734, n735 );
nand U705 ( n735, n736, v6 );
nor U706 ( n736, n624, n604 );
nand U707 ( n734, n737, n615 );
nor U708 ( n737, n657, n678 );
nor U709 ( n732, n587, n738 );
nand U710 ( v13_D_22, n739, n740 );
nand U711 ( n740, n741, n641 );
nor U712 ( n741, n731, n587 );
nor U713 ( n739, n742, n743 );
nor U714 ( n743, n744, n745 );
nand U715 ( n745, n684, n598 );
nand U716 ( v13_D_21, n746, n747 );
or U717 ( n747, n748, n696 );
nor U718 ( v13_D_20, n749, n750 );
nand U719 ( n750, n751, n752 );
not U720 ( n751, n738 );
nand U721 ( n749, n753, n589 );
nand U722 ( v13_D_19, n754, n755 );
not U723 ( n755, v13_D_16 );
nand U724 ( n754, n756, n757 );
nor U725 ( n757, n731, n586 );
and U726 ( n756, n713, n758 );
nand U727 ( v13_D_18, n746, n759 );
nand U728 ( n759, n760, n761 );
nand U729 ( n761, n762, n763 );
nand U730 ( n763, n764, n765 );
not U731 ( n765, n766 );
nor U732 ( n764, n731, n678 );
nand U733 ( n760, n687, n767 );
nand U734 ( v13_D_17, n768, n769 );
nor U735 ( n769, n650, n770 );
nand U736 ( n770, n746, n771 );
nand U737 ( n746, n772, n773 );
nor U738 ( n772, n655, n604 );
not U739 ( n650, n774 );
nor U740 ( n768, n775, n776 );
nand U741 ( n776, n777, n778 );
nand U742 ( n778, n779, n780 );
nand U743 ( n777, n729, n781 );
nand U744 ( n781, n782, n783 );
nand U745 ( n783, n784, v2 );
nand U746 ( n782, n785, n786 );
nand U747 ( n786, n587, n787 );
nand U748 ( n787, n657, n589 );
nor U749 ( n775, n705, n788 );
nand U750 ( v13_D_16, n702, n789 );
nand U751 ( n789, n790, n780 );
not U752 ( n780, n791 );
nor U753 ( n790, n616, n646 );
nand U754 ( n702, n792, n793 );
nor U755 ( n793, v7, n613 );
and U756 ( n792, n752, v6 );
nor U757 ( v13_D_15, n767, n794 );
nand U758 ( n794, n795, n687 );
not U759 ( n687, v5 );
nand U760 ( n795, n762, n796 );
nand U761 ( n796, n797, n798 );
not U762 ( n797, n655 );
not U763 ( n767, v4 );
nand U764 ( v13_D_14, n799, n800 );
nor U765 ( n800, n801, n802 );
nand U766 ( n802, n803, n788 );
nor U767 ( n801, v7, n804 );
nor U768 ( n804, n805, n806 );
not U769 ( n806, n807 );
nor U770 ( n805, v5, v4 );
nor U771 ( n799, n808, n809 );
nand U772 ( n809, n810, n811 );
nand U773 ( n811, n812, n586 );
or U774 ( n810, n813, n731 );
nand U775 ( v13_D_13, n814, n815 );
nor U776 ( n815, n816, n817 );
nand U777 ( n817, n818, n819 );
nand U778 ( n819, n669, n820 );
nand U779 ( n820, n610, n821 );
nand U780 ( n821, n611, n616 );
nand U781 ( n610, n822, n626 );
nand U782 ( n818, n773, n823 );
nand U783 ( n823, n762, n824 );
nand U784 ( n824, n714, n813 );
nand U785 ( n813, n766, n825 );
nand U786 ( n825, n590, n587 );
or U787 ( n816, n742, n826 );
nor U788 ( n742, n613, n827 );
nor U789 ( n814, n828, n829 );
nand U790 ( n829, n830, n831 );
nand U791 ( n831, n832, n589 );
nand U792 ( n832, n771, n833 );
nand U793 ( n830, v1, n834 );
nor U794 ( n828, n835, n836 );
nor U795 ( n835, n837, n838 );
nand U796 ( n838, n839, n840 );
nand U797 ( n840, n841, n842 );
nor U798 ( n841, v7, v12 );
nand U799 ( n839, v8, n843 );
nand U800 ( n843, n616, n844 );
nand U801 ( n844, v11, n842 );
nor U802 ( n837, v11, n731 );
nand U803 ( v13_D_12, n845, n846 );
nor U804 ( n846, n847, n848 );
nand U805 ( n848, n788, n701 );
nand U806 ( n701, n849, n850 );
nor U807 ( n849, v9, n731 );
nor U808 ( n847, n851, n852 );
nand U809 ( n852, n714, n669 );
nor U810 ( n845, n853, n854 );
nor U811 ( n853, n731, n855 );
nand U812 ( v13_D_11, n856, n857 );
nor U813 ( n857, n858, n859 );
nand U814 ( n859, n860, n596 );
nand U815 ( n596, n861, v11 );
nor U816 ( n861, n731, n657 );
nand U817 ( n860, n862, n626 );
nor U818 ( n858, v10, n863 );
nor U819 ( n856, n864, n808 );
nand U820 ( n808, n865, n866 );
nand U821 ( n866, v12, n589 );
nor U822 ( n865, n599, n867 );
nor U823 ( n867, n591, n604 );
nor U824 ( n864, v7, n868 );
nor U825 ( n868, n869, n870 );
nand U826 ( n870, n871, n872 );
nand U827 ( n871, n812, v11 );
nand U828 ( n869, n873, n874 );
nand U829 ( n874, n773, n637 );
nand U830 ( n873, n684, n875 );
nand U831 ( n875, v6, v3 );
nand U832 ( v13_D_10, n876, n877 );
nor U833 ( n877, n878, n879 );
nand U834 ( n879, n880, n774 );
nand U835 ( n774, n881, n882 );
nor U836 ( n882, v7, v11 );
nor U837 ( n881, n646, n724 );
nand U838 ( n880, n883, n884 );
nand U839 ( n884, n744, n885 );
nand U840 ( n885, n886, n587 );
nor U841 ( n878, n887, n678 );
nor U842 ( n887, n888, n889 );
nand U843 ( n889, n890, n891 );
nand U844 ( n891, n611, n638 );
nor U845 ( n888, n588, n872 );
nor U846 ( n876, n892, n854 );
nand U847 ( n854, n893, n894 );
nor U848 ( n894, n895, n896 );
nor U849 ( n896, n897, n898 );
nand U850 ( n898, n729, v0 );
nand U851 ( n897, n626, n587 );
not U852 ( n895, n771 );
nand U853 ( n771, n899, n812 );
nor U854 ( n812, n705, n591 );
nor U855 ( n899, n669, n678 );
nor U856 ( n893, n900, n901 );
nor U857 ( n901, n863, n638 );
nor U858 ( n900, n591, n703 );
nor U859 ( n892, n807, n655 );
nor U860 ( n807, n773, n862 );
nor U861 ( n81, n902, n903 );
nor U862 ( n902, n904, n905 );
nand U863 ( n905, n906, n907 );
nand U864 ( n907, n654, n773 );
not U865 ( n654, n762 );
nand U866 ( n762, n908, n909 );
nor U867 ( n909, v7, n591 );
nor U868 ( n908, n678, n645 );
nand U869 ( n906, n910, n589 );
nand U870 ( n910, n911, n912 );
nor U871 ( n912, n913, n914 );
nor U872 ( n914, n647, n915 );
nor U873 ( n913, n766, n916 );
nand U874 ( n916, n773, n917 );
nand U875 ( n766, n615, n657 );
nor U876 ( n911, n918, n919 );
nor U877 ( n919, n920, n587 );
nor U878 ( n920, n921, n922 );
nand U879 ( n922, n923, n924 );
nand U880 ( n923, n822, n925 );
nand U881 ( n925, v3, n753 );
nor U882 ( n921, n586, n637 );
nor U883 ( n918, n926, n872 );
nor U884 ( n926, n927, n928 );
nand U885 ( n928, n929, n613 );
nand U886 ( n929, n930, n931 );
nor U887 ( n927, n594, n590 );
nand U888 ( n904, n932, n933 );
nand U889 ( n933, n695, n603 );
not U890 ( n603, n827 );
nand U891 ( n827, v7, n719 );
nor U892 ( n932, n934, n935 );
nor U893 ( n935, n936, n937 );
nand U894 ( n937, n938, n590 );
nor U895 ( n934, n624, n939 );
or U896 ( n939, n940, n779 );
nor U897 ( n779, n705, n941 );
nor U898 ( n76, n942, n903 );
nor U899 ( n942, n943, n944 );
nand U900 ( n944, n945, n946 );
nor U901 ( n945, n947, n948 );
nor U902 ( n948, v7, n949 );
nor U903 ( n949, n950, n951 );
nand U904 ( n951, n952, n953 );
nand U905 ( n953, n822, v9 );
nor U906 ( n952, n954, n955 );
nor U907 ( n955, n591, n956 );
nand U908 ( n956, n669, n586 );
nor U909 ( n954, v8, n957 );
nor U910 ( n957, n958, n959 );
nand U911 ( n959, n960, n961 );
nand U912 ( n961, n962, n685 );
not U913 ( n685, n886 );
nor U914 ( n962, v3, n705 );
nand U915 ( n960, n963, n641 );
nand U916 ( n958, n964, n965 );
nand U917 ( n965, n966, n773 );
and U918 ( n966, n586, n798 );
nand U919 ( n798, n604, n717 );
nand U920 ( n717, n967, n657 );
nor U921 ( n964, n850, n968 );
nand U922 ( n950, n969, n970 );
nand U923 ( n970, v2, n971 );
nand U924 ( n971, n872, n972 );
nand U925 ( n972, n968, n842 );
nand U926 ( n969, n642, n613 );
nor U927 ( n947, n973, n940 );
nor U928 ( n973, n974, n975 );
nand U929 ( n975, n604, n727 );
nor U930 ( n974, n785, n624 );
nand U931 ( n943, n976, n977 );
nand U932 ( n977, n684, n978 );
nand U933 ( n978, n624, n979 );
nand U934 ( n979, n980, v3 );
nor U935 ( n976, n981, n982 );
nor U936 ( n982, n983, n984 );
nand U937 ( n984, v1, n598 );
nor U938 ( n598, v2, v7 );
nor U939 ( n981, n985, n986 );
nand U940 ( n986, n729, v8 );
nand U941 ( n985, n987, n705 );
nand U942 ( n987, n588, n988 );
nand U943 ( n988, n773, n589 );
nor U944 ( n71, n989, n903 );
nor U945 ( n989, n990, n991 );
nand U946 ( n991, n992, n993 );
nand U947 ( n993, n994, n589 );
nand U948 ( n994, n995, n996 );
nor U949 ( n996, n997, n998 );
nand U950 ( n998, n999, n1000 );
nand U951 ( n1000, n1001, v12 );
nor U952 ( n1001, n967, n696 );
nand U953 ( n999, n695, n1002 );
nand U954 ( n1002, n1003, n1004 );
nand U955 ( n1004, n1005, n586 );
nand U956 ( n1005, n915, n1006 );
nand U957 ( n1006, v3, v8 );
nand U958 ( n1003, n773, n1007 );
nor U959 ( n997, n1008, n587 );
nor U960 ( n1008, n1009, n850 );
nor U961 ( n1009, n664, n1010 );
nand U962 ( n1010, v11, n1011 );
nand U963 ( n1011, n773, n705 );
nor U964 ( n995, n1012, n1013 );
nand U965 ( n1013, n1014, n1015 );
nand U966 ( n1015, v2, n1016 );
nand U967 ( n1016, n1017, n1018 );
nand U968 ( n1018, n1019, n695 );
nor U969 ( n1019, v12, n872 );
nor U970 ( n1017, n1020, n1021 );
nor U971 ( n1021, n842, n1022 );
nand U972 ( n1022, n622, n822 );
nand U973 ( n1014, n1023, n705 );
nor U974 ( n1023, n664, n1024 );
nand U975 ( n1024, n822, n842 );
nor U976 ( n1012, v8, n1025 );
nor U977 ( n1025, n660, n1026 );
nand U978 ( n1026, n1027, n1028 );
nand U979 ( n1028, n1029, n594 );
nor U980 ( n1029, v9, n657 );
nand U981 ( n1027, n1030, n851 );
nand U982 ( n660, n833, n1031 );
nand U983 ( n1031, n669, n822 );
not U984 ( n833, n1020 );
nor U985 ( n1020, n613, v9 );
nand U986 ( n613, n594, n590 );
nor U987 ( n992, n1032, n1033 );
nor U988 ( n1033, n695, n788 );
nand U989 ( n788, n611, n586 );
nor U990 ( n1032, n836, n1034 );
nand U991 ( n990, n1035, n1036 );
nand U992 ( n1036, n669, n1037 );
nand U993 ( n1037, n1038, n1039 );
nand U994 ( n1039, n1040, n931 );
nor U995 ( n1040, n1041, n1042 );
nor U996 ( n1042, n1043, n586 );
nor U997 ( n1043, v6, n731 );
nor U998 ( n1041, v8, v12 );
nand U999 ( n1038, n684, n586 );
nor U1000 ( n1035, n1044, n1045 );
nor U1001 ( n1045, n791, n1046 );
nand U1002 ( n1046, v11, n646 );
nand U1003 ( n791, n611, n587 );
not U1004 ( n1044, n803 );
nand U1005 ( n803, n1047, n729 );
nor U1006 ( n1047, n615, n589 );
nor U1007 ( n66, n1048, n903 );
nor U1008 ( n1048, n1049, n1050 );
nand U1009 ( n1050, n1051, n1052 );
nand U1010 ( n1052, n665, v7 );
nand U1011 ( n1051, n1053, n589 );
nand U1012 ( n1053, n1054, n1055 );
nor U1013 ( n1055, n1056, n1057 );
nand U1014 ( n1057, n1058, n1059 );
nand U1015 ( n1059, n1060, n684 );
nor U1016 ( n1060, v9, v2 );
nand U1017 ( n1058, n642, n1061 );
nand U1018 ( n1061, n924, n1062 );
nand U1019 ( n1062, v2, n594 );
nor U1020 ( n594, n588, v12 );
nand U1021 ( n1056, n1063, n1064 );
nand U1022 ( n1064, n1065, n930 );
not U1023 ( n930, n647 );
nand U1024 ( n647, n590, n586 );
nor U1025 ( n1065, v6, n696 );
nand U1026 ( n1063, n1066, n752 );
nor U1027 ( n1066, n1067, n616 );
nor U1028 ( n1054, n1068, n1069 );
nand U1029 ( n1069, n1070, n1071 );
nand U1030 ( n1071, n622, n851 );
nor U1031 ( n1070, n1072, n1073 );
nor U1032 ( n1073, n1074, n591 );
nor U1033 ( n1074, n669, n968 );
not U1034 ( n669, n638 );
nor U1035 ( n1072, v8, n703 );
nand U1036 ( n703, n1075, n967 );
nand U1037 ( n1068, n1076, n1077 );
nand U1038 ( n1077, n1078, n586 );
nand U1039 ( n1078, n1079, n1080 );
nand U1040 ( n1080, v2, n622 );
nor U1041 ( n1079, n1081, n1082 );
and U1042 ( n1082, n713, n773 );
nor U1043 ( n713, n638, v11 );
nand U1044 ( n638, n587, n588 );
nor U1045 ( n1081, n696, n1083 );
nand U1046 ( n1083, n590, n931 );
nand U1047 ( n1076, n1084, v12 );
nor U1048 ( n1084, n758, n604 );
nor U1049 ( n758, n931, v6 );
nor U1050 ( n1049, n1085, n637 );
nor U1051 ( n1085, n1086, n1087 );
nor U1052 ( n1087, n586, n836 );
nor U1053 ( n1086, v10, n1075 );
not U1054 ( n1075, n624 );
nor U1055 ( n61, n1088, n903 );
nor U1056 ( n1088, n1089, n1090 );
nand U1057 ( n1090, n1091, n1092 );
nand U1058 ( n1092, n641, n684 );
not U1059 ( n641, n924 );
nand U1060 ( n924, v12, n588 );
nor U1061 ( n1091, n1093, n1094 );
nor U1062 ( n1094, n941, n655 );
nand U1063 ( n655, n1007, n626 );
nor U1064 ( n1093, n587, n748 );
nand U1065 ( n748, n1095, n980 );
not U1066 ( n980, n744 );
nor U1067 ( n1095, v7, n705 );
nand U1068 ( n1089, n1096, n1097 );
nor U1069 ( n1097, n826, n1098 );
nor U1070 ( n1098, n678, n1099 );
nand U1071 ( n1099, n642, n588 );
not U1072 ( n826, n617 );
nor U1073 ( n1096, n1100, n1101 );
nor U1074 ( n1101, v7, n1102 );
nor U1075 ( n1102, n1103, n1104 );
nand U1076 ( n1104, n1105, n1106 );
nor U1077 ( n1106, n1107, n1108 );
nor U1078 ( n1108, n586, n1109 );
nand U1079 ( n1109, n752, n1110 );
not U1080 ( n1110, n1067 );
nor U1081 ( n1067, n753, n657 );
nor U1082 ( n752, n931, n696 );
nor U1083 ( n1107, v12, n1111 );
nand U1084 ( n1111, n1112, n705 );
nand U1085 ( n1112, n1113, n890 );
nand U1086 ( n890, n773, n719 );
not U1087 ( n719, n696 );
nand U1088 ( n696, v9, v8 );
nand U1089 ( n1113, n615, v8 );
not U1090 ( n615, n836 );
nor U1091 ( n1105, n1114, n1115 );
nor U1092 ( n1115, n744, n915 );
or U1093 ( n915, n872, n1116 );
nand U1094 ( n744, n586, n588 );
nor U1095 ( n1114, n1117, n587 );
nor U1096 ( n1117, n862, n968 );
not U1097 ( n968, n983 );
nand U1098 ( n983, n822, n588 );
nor U1099 ( n862, n588, v11 );
nand U1100 ( n1103, n1118, n1119 );
nand U1101 ( n1119, n622, n1120 );
nand U1102 ( n1120, n729, n1121 );
nand U1103 ( n1121, n931, n587 );
not U1104 ( n931, v3 );
nor U1105 ( n1118, n850, n1122 );
nor U1106 ( n1122, n624, n1123 );
nand U1107 ( n1123, n590, n1124 );
nor U1108 ( n850, n886, v11 );
nand U1109 ( n886, v12, v10 );
nor U1110 ( n1100, n1125, n836 );
nor U1111 ( n1125, n1126, n1127 );
nor U1112 ( n1127, v12, n1034 );
nor U1113 ( n1126, n705, n1128 );
nand U1114 ( n1128, n611, n822 );
not U1115 ( n611, n940 );
nand U1116 ( n940, v7, v8 );
nor U1117 ( n56, n1129, n903 );
not U1118 ( n903, CLR );
nor U1119 ( n1129, n1130, n1131 );
nand U1120 ( n1131, n1132, n946 );
and U1121 ( n946, n617, n1133 );
nand U1122 ( n1133, n834, v7 );
not U1123 ( n834, n855 );
nand U1124 ( n855, n665, v10 );
nand U1125 ( n617, n784, n917 );
not U1126 ( n917, n863 );
nand U1127 ( n863, n729, n591 );
nor U1128 ( n784, v10, n589 );
nor U1129 ( n1132, n1134, n1135 );
nor U1130 ( n1135, v7, n1136 );
nor U1131 ( n1136, n1137, n1138 );
nand U1132 ( n1138, n1139, n601 );
nand U1133 ( n601, n967, n642 );
not U1134 ( n642, n872 );
nand U1135 ( n872, v9, n591 );
nor U1136 ( n1139, n1140, n1141 );
nor U1137 ( n1141, v8, n1142 );
nand U1138 ( n1142, n1143, n695 );
nor U1139 ( n1143, n963, n624 );
nand U1140 ( n624, v12, n587 );
nor U1141 ( n963, v6, v3 );
nor U1142 ( n1140, n1144, n591 );
nor U1143 ( n1144, n1145, n1146 );
nand U1144 ( n1146, n1147, n1148 );
or U1145 ( n1148, n851, n727 );
nand U1146 ( n727, n729, v10 );
nand U1147 ( n1147, n785, n729 );
not U1148 ( n729, n678 );
not U1149 ( n785, n646 );
nand U1150 ( n646, v2, v10 );
nand U1151 ( n1145, n1149, n836 );
nand U1152 ( n836, v10, n587 );
nand U1153 ( n1149, n1150, v3 );
nor U1154 ( n1150, n1151, n1152 );
nor U1155 ( n1152, v0, n1153 );
nor U1156 ( n1153, n738, n753 );
nand U1157 ( n738, n822, v10 );
not U1158 ( n822, n616 );
nand U1159 ( n616, v12, v11 );
nor U1160 ( n1151, n1154, n657 );
nor U1161 ( n1154, n586, n1155 );
nand U1162 ( n1155, n967, n753 );
nand U1163 ( n753, v6, n842 );
not U1164 ( n967, n941 );
nand U1165 ( n1137, n1156, n1157 );
nand U1166 ( n1157, n1030, n1158 );
nand U1167 ( n1158, v11, n1159 );
nand U1168 ( n1159, n773, n657 );
not U1169 ( n657, v0 );
not U1170 ( n773, n851 );
nand U1171 ( n851, v4, v5 );
nand U1172 ( n1156, n665, n622 );
not U1173 ( n622, n664 );
nand U1174 ( n664, v8, n588 );
nor U1175 ( n665, n678, n587 );
nand U1176 ( n678, v11, n586 );
and U1177 ( n1134, v8, n1030 );
nor U1178 ( n1030, n724, n588 );
nand U1179 ( n1130, n1160, n1161 );
nand U1180 ( n1161, n1162, n883 );
not U1181 ( n883, n1034 );
nand U1182 ( n1034, n684, v7 );
not U1183 ( n684, n637 );
nand U1184 ( n637, v8, n590 );
nor U1185 ( n1162, v10, n1007 );
not U1186 ( n1007, n724 );
nand U1187 ( n724, n587, n586 );
nor U1188 ( n1160, n1163, n1164 );
nor U1189 ( n1164, n941, n1165 );
nand U1190 ( n1165, n599, n705 );
nor U1191 ( n599, n591, v9 );
nand U1192 ( n941, v11, v10 );
nor U1193 ( n1163, n1166, n1167 );
nand U1194 ( n1167, n1116, n714 );
not U1195 ( n714, n936 );
nand U1196 ( n936, n626, n586 );
not U1197 ( n626, n731 );
nand U1198 ( n731, n591, n589 );
nor U1199 ( n1116, n842, n1124 );
not U1200 ( n1124, v6 );
not U1201 ( n842, v1 );
nand U1202 ( n1166, n695, n938 );
not U1203 ( n938, n645 );
nand U1204 ( n645, v9, n705 );
not U1205 ( n705, v2 );
not U1206 ( n695, n604 );
nand U1207 ( n604, n590, n588 );
endmodule


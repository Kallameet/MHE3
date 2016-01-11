//`include "/eda/ams/verilog/c35b3/c35_CORELIB.v"
//`include "/eda/ams/verilog/udp.v"

module alu_16_DW01_add_0 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   carry_16_, carry_15_, carry_14_, carry_13_, carry_12_, carry_11_,
         carry_10_, carry_9_, carry_8_, carry_7_, carry_6_, carry_5_, carry_4_,
         carry_3_, carry_2_;

  ADD32 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry_16_), .CO(SUM[17]), .S(SUM[16]) );
  ADD32 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry_15_), .CO(carry_16_), .S(
        SUM[15]) );
  ADD32 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry_14_), .CO(carry_15_), .S(
        SUM[14]) );
  ADD32 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry_13_), .CO(carry_14_), .S(
        SUM[13]) );
  ADD32 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry_12_), .CO(carry_13_), .S(
        SUM[12]) );
  ADD32 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry_11_), .CO(carry_12_), .S(
        SUM[11]) );
  ADD32 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry_10_), .CO(carry_11_), .S(
        SUM[10]) );
  ADD32 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry_9_), .CO(carry_10_), .S(SUM[9])
         );
  ADD32 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry_8_), .CO(carry_9_), .S(SUM[8]) );
  ADD32 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry_7_), .CO(carry_8_), .S(SUM[7]) );
  ADD32 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry_6_), .CO(carry_7_), .S(SUM[6]) );
  ADD32 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry_5_), .CO(carry_6_), .S(SUM[5]) );
  ADD32 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry_4_), .CO(carry_5_), .S(SUM[4]) );
  ADD32 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry_3_), .CO(carry_4_), .S(SUM[3]) );
  ADD32 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry_2_), .CO(carry_3_), .S(SUM[2]) );
  ADD32 U1_1 ( .A(A[1]), .B(B[1]), .CI(B[0]), .CO(carry_2_), .S(SUM[1]) );
endmodule


module reg_file_8_0 ( clk_i, reg_a_idx_i, reg_b_idx_i, clk_en_reg_file_i, 
        reg_i, reg_a_o, reg_b_o );
  input [3:0] reg_a_idx_i;
  input [3:0] reg_b_idx_i;
  input [15:0] reg_i;
  output [15:0] reg_a_o;
  output [15:0] reg_b_o;
  input clk_i, clk_en_reg_file_i;
  wire   n288, n289, n290, n291, n292, n293, n294, n295, n711, n712, n713,
         n714, n715, n716, n717, n718, n719, n720, n721, n722, n723, n724,
         n725, n726, n727, n728, n729, n730, n731, n732, n733, n734, n735,
         n736, n737, n738, n739, n740, n741, n742, n743, n744, n745, n746,
         n747, n748, n749, n750, n751, n752, n753, n754, n755, n756, n757,
         n758, n759, n760, n761, n762, n763, n764, n765, n766, n767, n768,
         n769, n770, n771, n772, n773, n774, n775, n776, n777, n778, n779,
         n780, n781, n782, n783, n784, n785, n786, n787, n788, n789, n790,
         n791, n792, n793, n794, n795, n796, n797, n798, n799, n800, n801,
         n802, n803, n804, n805, n806, n807, n808, n809, n810, n811, n812,
         n813, n814, n815, n816, n817, n818, n819, n820, n821, n822, n823,
         n824, n825, n826, n827, n828, n829, n830, n831, n832, n833, n834,
         n835, n836, n837, n838, n839, n840, n841, n842, n843, n844, n845,
         n846, n847, n848, n849, n850, n851, n852, n853, n854, n855, n856,
         n857, n858, n859, n860, n861, n862, n863, n864, n865, n866, n867,
         n868, n869;
  wire   [127:0] registers;

  DFE1 registers_reg_7__15_ ( .D(reg_i[15]), .E(n288), .C(clk_i), .Q(
        registers[127]) );
  DFE1 registers_reg_7__14_ ( .D(reg_i[14]), .E(n288), .C(clk_i), .Q(
        registers[126]) );
  DFE1 registers_reg_7__13_ ( .D(reg_i[13]), .E(n288), .C(clk_i), .Q(
        registers[125]) );
  DFE1 registers_reg_7__12_ ( .D(reg_i[12]), .E(n288), .C(clk_i), .Q(
        registers[124]) );
  DFE1 registers_reg_7__11_ ( .D(reg_i[11]), .E(n288), .C(clk_i), .Q(
        registers[123]) );
  DFE1 registers_reg_7__10_ ( .D(reg_i[10]), .E(n288), .C(clk_i), .Q(
        registers[122]) );
  DFE1 registers_reg_7__9_ ( .D(reg_i[9]), .E(n288), .C(clk_i), .Q(
        registers[121]) );
  DFE1 registers_reg_7__8_ ( .D(reg_i[8]), .E(n288), .C(clk_i), .Q(
        registers[120]) );
  DFE1 registers_reg_7__7_ ( .D(reg_i[7]), .E(n288), .C(clk_i), .Q(
        registers[119]) );
  DFE1 registers_reg_7__6_ ( .D(reg_i[6]), .E(n288), .C(clk_i), .Q(
        registers[118]) );
  DFE1 registers_reg_7__5_ ( .D(reg_i[5]), .E(n288), .C(clk_i), .Q(
        registers[117]) );
  DFE1 registers_reg_7__4_ ( .D(reg_i[4]), .E(n288), .C(clk_i), .Q(
        registers[116]) );
  DFE1 registers_reg_7__3_ ( .D(reg_i[3]), .E(n288), .C(clk_i), .Q(
        registers[115]) );
  DFE1 registers_reg_7__2_ ( .D(reg_i[2]), .E(n288), .C(clk_i), .Q(
        registers[114]) );
  DFE1 registers_reg_7__1_ ( .D(reg_i[1]), .E(n288), .C(clk_i), .Q(
        registers[113]) );
  DFE1 registers_reg_7__0_ ( .D(reg_i[0]), .E(n288), .C(clk_i), .Q(
        registers[112]) );
  DFE1 registers_reg_6__15_ ( .D(reg_i[15]), .E(n289), .C(clk_i), .Q(
        registers[111]) );
  DFE1 registers_reg_6__14_ ( .D(reg_i[14]), .E(n289), .C(clk_i), .Q(
        registers[110]) );
  DFE1 registers_reg_6__13_ ( .D(reg_i[13]), .E(n289), .C(clk_i), .Q(
        registers[109]) );
  DFE1 registers_reg_6__12_ ( .D(reg_i[12]), .E(n289), .C(clk_i), .Q(
        registers[108]) );
  DFE1 registers_reg_6__11_ ( .D(reg_i[11]), .E(n289), .C(clk_i), .Q(
        registers[107]) );
  DFE1 registers_reg_6__10_ ( .D(reg_i[10]), .E(n289), .C(clk_i), .Q(
        registers[106]) );
  DFE1 registers_reg_6__9_ ( .D(reg_i[9]), .E(n289), .C(clk_i), .Q(
        registers[105]) );
  DFE1 registers_reg_6__8_ ( .D(reg_i[8]), .E(n289), .C(clk_i), .Q(
        registers[104]) );
  DFE1 registers_reg_6__7_ ( .D(reg_i[7]), .E(n289), .C(clk_i), .Q(
        registers[103]) );
  DFE1 registers_reg_6__6_ ( .D(reg_i[6]), .E(n289), .C(clk_i), .Q(
        registers[102]) );
  DFE1 registers_reg_6__5_ ( .D(reg_i[5]), .E(n289), .C(clk_i), .Q(
        registers[101]) );
  DFE1 registers_reg_6__4_ ( .D(reg_i[4]), .E(n289), .C(clk_i), .Q(
        registers[100]) );
  DFE1 registers_reg_6__3_ ( .D(reg_i[3]), .E(n289), .C(clk_i), .Q(
        registers[99]) );
  DFE1 registers_reg_6__2_ ( .D(reg_i[2]), .E(n289), .C(clk_i), .Q(
        registers[98]) );
  DFE1 registers_reg_6__1_ ( .D(reg_i[1]), .E(n289), .C(clk_i), .Q(
        registers[97]) );
  DFE1 registers_reg_6__0_ ( .D(reg_i[0]), .E(n289), .C(clk_i), .Q(
        registers[96]) );
  DFE1 registers_reg_5__15_ ( .D(reg_i[15]), .E(n290), .C(clk_i), .Q(
        registers[95]) );
  DFE1 registers_reg_5__14_ ( .D(reg_i[14]), .E(n290), .C(clk_i), .Q(
        registers[94]) );
  DFE1 registers_reg_5__13_ ( .D(reg_i[13]), .E(n290), .C(clk_i), .Q(
        registers[93]) );
  DFE1 registers_reg_5__12_ ( .D(reg_i[12]), .E(n290), .C(clk_i), .Q(
        registers[92]) );
  DFE1 registers_reg_5__11_ ( .D(reg_i[11]), .E(n290), .C(clk_i), .Q(
        registers[91]) );
  DFE1 registers_reg_5__10_ ( .D(reg_i[10]), .E(n290), .C(clk_i), .Q(
        registers[90]) );
  DFE1 registers_reg_5__9_ ( .D(reg_i[9]), .E(n290), .C(clk_i), .Q(
        registers[89]) );
  DFE1 registers_reg_5__8_ ( .D(reg_i[8]), .E(n290), .C(clk_i), .Q(
        registers[88]) );
  DFE1 registers_reg_5__7_ ( .D(reg_i[7]), .E(n290), .C(clk_i), .Q(
        registers[87]) );
  DFE1 registers_reg_5__6_ ( .D(reg_i[6]), .E(n290), .C(clk_i), .Q(
        registers[86]) );
  DFE1 registers_reg_5__5_ ( .D(reg_i[5]), .E(n290), .C(clk_i), .Q(
        registers[85]) );
  DFE1 registers_reg_5__4_ ( .D(reg_i[4]), .E(n290), .C(clk_i), .Q(
        registers[84]) );
  DFE1 registers_reg_5__3_ ( .D(reg_i[3]), .E(n290), .C(clk_i), .Q(
        registers[83]) );
  DFE1 registers_reg_5__2_ ( .D(reg_i[2]), .E(n290), .C(clk_i), .Q(
        registers[82]) );
  DFE1 registers_reg_5__1_ ( .D(reg_i[1]), .E(n290), .C(clk_i), .Q(
        registers[81]) );
  DFE1 registers_reg_5__0_ ( .D(reg_i[0]), .E(n290), .C(clk_i), .Q(
        registers[80]) );
  DFE1 registers_reg_4__15_ ( .D(reg_i[15]), .E(n291), .C(clk_i), .Q(
        registers[79]) );
  DFE1 registers_reg_4__14_ ( .D(reg_i[14]), .E(n291), .C(clk_i), .Q(
        registers[78]) );
  DFE1 registers_reg_4__13_ ( .D(reg_i[13]), .E(n291), .C(clk_i), .Q(
        registers[77]) );
  DFE1 registers_reg_4__12_ ( .D(reg_i[12]), .E(n291), .C(clk_i), .Q(
        registers[76]) );
  DFE1 registers_reg_4__11_ ( .D(reg_i[11]), .E(n291), .C(clk_i), .Q(
        registers[75]) );
  DFE1 registers_reg_4__10_ ( .D(reg_i[10]), .E(n291), .C(clk_i), .Q(
        registers[74]) );
  DFE1 registers_reg_4__9_ ( .D(reg_i[9]), .E(n291), .C(clk_i), .Q(
        registers[73]) );
  DFE1 registers_reg_4__8_ ( .D(reg_i[8]), .E(n291), .C(clk_i), .Q(
        registers[72]) );
  DFE1 registers_reg_4__7_ ( .D(reg_i[7]), .E(n291), .C(clk_i), .Q(
        registers[71]) );
  DFE1 registers_reg_4__6_ ( .D(reg_i[6]), .E(n291), .C(clk_i), .Q(
        registers[70]) );
  DFE1 registers_reg_4__5_ ( .D(reg_i[5]), .E(n291), .C(clk_i), .Q(
        registers[69]) );
  DFE1 registers_reg_4__4_ ( .D(reg_i[4]), .E(n291), .C(clk_i), .Q(
        registers[68]) );
  DFE1 registers_reg_4__3_ ( .D(reg_i[3]), .E(n291), .C(clk_i), .Q(
        registers[67]) );
  DFE1 registers_reg_4__2_ ( .D(reg_i[2]), .E(n291), .C(clk_i), .Q(
        registers[66]) );
  DFE1 registers_reg_4__1_ ( .D(reg_i[1]), .E(n291), .C(clk_i), .Q(
        registers[65]) );
  DFE1 registers_reg_4__0_ ( .D(reg_i[0]), .E(n291), .C(clk_i), .Q(
        registers[64]) );
  DFE1 registers_reg_3__15_ ( .D(reg_i[15]), .E(n292), .C(clk_i), .Q(
        registers[63]) );
  DFE1 registers_reg_3__14_ ( .D(reg_i[14]), .E(n292), .C(clk_i), .Q(
        registers[62]) );
  DFE1 registers_reg_3__13_ ( .D(reg_i[13]), .E(n292), .C(clk_i), .Q(
        registers[61]) );
  DFE1 registers_reg_3__12_ ( .D(reg_i[12]), .E(n292), .C(clk_i), .Q(
        registers[60]) );
  DFE1 registers_reg_3__11_ ( .D(reg_i[11]), .E(n292), .C(clk_i), .Q(
        registers[59]) );
  DFE1 registers_reg_3__10_ ( .D(reg_i[10]), .E(n292), .C(clk_i), .Q(
        registers[58]) );
  DFE1 registers_reg_3__9_ ( .D(reg_i[9]), .E(n292), .C(clk_i), .Q(
        registers[57]) );
  DFE1 registers_reg_3__8_ ( .D(reg_i[8]), .E(n292), .C(clk_i), .Q(
        registers[56]) );
  DFE1 registers_reg_3__7_ ( .D(reg_i[7]), .E(n292), .C(clk_i), .Q(
        registers[55]) );
  DFE1 registers_reg_3__6_ ( .D(reg_i[6]), .E(n292), .C(clk_i), .Q(
        registers[54]) );
  DFE1 registers_reg_3__5_ ( .D(reg_i[5]), .E(n292), .C(clk_i), .Q(
        registers[53]) );
  DFE1 registers_reg_3__4_ ( .D(reg_i[4]), .E(n292), .C(clk_i), .Q(
        registers[52]) );
  DFE1 registers_reg_3__3_ ( .D(reg_i[3]), .E(n292), .C(clk_i), .Q(
        registers[51]) );
  DFE1 registers_reg_3__2_ ( .D(reg_i[2]), .E(n292), .C(clk_i), .Q(
        registers[50]) );
  DFE1 registers_reg_3__1_ ( .D(reg_i[1]), .E(n292), .C(clk_i), .Q(
        registers[49]) );
  DFE1 registers_reg_3__0_ ( .D(reg_i[0]), .E(n292), .C(clk_i), .Q(
        registers[48]) );
  DFE1 registers_reg_2__15_ ( .D(reg_i[15]), .E(n293), .C(clk_i), .Q(
        registers[47]) );
  DFE1 registers_reg_2__14_ ( .D(reg_i[14]), .E(n293), .C(clk_i), .Q(
        registers[46]) );
  DFE1 registers_reg_2__13_ ( .D(reg_i[13]), .E(n293), .C(clk_i), .Q(
        registers[45]) );
  DFE1 registers_reg_2__12_ ( .D(reg_i[12]), .E(n293), .C(clk_i), .Q(
        registers[44]) );
  DFE1 registers_reg_2__11_ ( .D(reg_i[11]), .E(n293), .C(clk_i), .Q(
        registers[43]) );
  DFE1 registers_reg_2__10_ ( .D(reg_i[10]), .E(n293), .C(clk_i), .Q(
        registers[42]) );
  DFE1 registers_reg_2__9_ ( .D(reg_i[9]), .E(n293), .C(clk_i), .Q(
        registers[41]) );
  DFE1 registers_reg_2__8_ ( .D(reg_i[8]), .E(n293), .C(clk_i), .Q(
        registers[40]) );
  DFE1 registers_reg_2__7_ ( .D(reg_i[7]), .E(n293), .C(clk_i), .Q(
        registers[39]) );
  DFE1 registers_reg_2__6_ ( .D(reg_i[6]), .E(n293), .C(clk_i), .Q(
        registers[38]) );
  DFE1 registers_reg_2__5_ ( .D(reg_i[5]), .E(n293), .C(clk_i), .Q(
        registers[37]) );
  DFE1 registers_reg_2__4_ ( .D(reg_i[4]), .E(n293), .C(clk_i), .Q(
        registers[36]) );
  DFE1 registers_reg_2__3_ ( .D(reg_i[3]), .E(n293), .C(clk_i), .Q(
        registers[35]) );
  DFE1 registers_reg_2__2_ ( .D(reg_i[2]), .E(n293), .C(clk_i), .Q(
        registers[34]) );
  DFE1 registers_reg_2__1_ ( .D(reg_i[1]), .E(n293), .C(clk_i), .Q(
        registers[33]) );
  DFE1 registers_reg_2__0_ ( .D(reg_i[0]), .E(n293), .C(clk_i), .Q(
        registers[32]) );
  DFE1 registers_reg_1__15_ ( .D(reg_i[15]), .E(n294), .C(clk_i), .Q(
        registers[31]) );
  DFE1 registers_reg_1__14_ ( .D(reg_i[14]), .E(n294), .C(clk_i), .Q(
        registers[30]) );
  DFE1 registers_reg_1__13_ ( .D(reg_i[13]), .E(n294), .C(clk_i), .Q(
        registers[29]) );
  DFE1 registers_reg_1__12_ ( .D(reg_i[12]), .E(n294), .C(clk_i), .Q(
        registers[28]) );
  DFE1 registers_reg_1__11_ ( .D(reg_i[11]), .E(n294), .C(clk_i), .Q(
        registers[27]) );
  DFE1 registers_reg_1__10_ ( .D(reg_i[10]), .E(n294), .C(clk_i), .Q(
        registers[26]) );
  DFE1 registers_reg_1__9_ ( .D(reg_i[9]), .E(n294), .C(clk_i), .Q(
        registers[25]) );
  DFE1 registers_reg_1__8_ ( .D(reg_i[8]), .E(n294), .C(clk_i), .Q(
        registers[24]) );
  DFE1 registers_reg_1__7_ ( .D(reg_i[7]), .E(n294), .C(clk_i), .Q(
        registers[23]) );
  DFE1 registers_reg_1__6_ ( .D(reg_i[6]), .E(n294), .C(clk_i), .Q(
        registers[22]) );
  DFE1 registers_reg_1__5_ ( .D(reg_i[5]), .E(n294), .C(clk_i), .Q(
        registers[21]) );
  DFE1 registers_reg_1__4_ ( .D(reg_i[4]), .E(n294), .C(clk_i), .Q(
        registers[20]) );
  DFE1 registers_reg_1__3_ ( .D(reg_i[3]), .E(n294), .C(clk_i), .Q(
        registers[19]) );
  DFE1 registers_reg_1__2_ ( .D(reg_i[2]), .E(n294), .C(clk_i), .Q(
        registers[18]) );
  DFE1 registers_reg_1__1_ ( .D(reg_i[1]), .E(n294), .C(clk_i), .Q(
        registers[17]) );
  DFE1 registers_reg_1__0_ ( .D(reg_i[0]), .E(n294), .C(clk_i), .Q(
        registers[16]) );
  DFE1 registers_reg_0__15_ ( .D(reg_i[15]), .E(n295), .C(clk_i), .Q(
        registers[15]) );
  DFE1 registers_reg_0__14_ ( .D(reg_i[14]), .E(n295), .C(clk_i), .Q(
        registers[14]) );
  DFE1 registers_reg_0__13_ ( .D(reg_i[13]), .E(n295), .C(clk_i), .Q(
        registers[13]) );
  DFE1 registers_reg_0__12_ ( .D(reg_i[12]), .E(n295), .C(clk_i), .Q(
        registers[12]) );
  DFE1 registers_reg_0__11_ ( .D(reg_i[11]), .E(n295), .C(clk_i), .Q(
        registers[11]) );
  DFE1 registers_reg_0__10_ ( .D(reg_i[10]), .E(n295), .C(clk_i), .Q(
        registers[10]) );
  DFE1 registers_reg_0__9_ ( .D(reg_i[9]), .E(n295), .C(clk_i), .Q(
        registers[9]) );
  DFE1 registers_reg_0__8_ ( .D(reg_i[8]), .E(n295), .C(clk_i), .Q(
        registers[8]) );
  DFE1 registers_reg_0__7_ ( .D(reg_i[7]), .E(n295), .C(clk_i), .Q(
        registers[7]) );
  DFE1 registers_reg_0__6_ ( .D(reg_i[6]), .E(n295), .C(clk_i), .Q(
        registers[6]) );
  DFE1 registers_reg_0__5_ ( .D(reg_i[5]), .E(n295), .C(clk_i), .Q(
        registers[5]) );
  DFE1 registers_reg_0__4_ ( .D(reg_i[4]), .E(n295), .C(clk_i), .Q(
        registers[4]) );
  DFE1 registers_reg_0__3_ ( .D(reg_i[3]), .E(n295), .C(clk_i), .Q(
        registers[3]) );
  DFE1 registers_reg_0__2_ ( .D(reg_i[2]), .E(n295), .C(clk_i), .Q(
        registers[2]) );
  DFE1 registers_reg_0__1_ ( .D(reg_i[1]), .E(n295), .C(clk_i), .Q(
        registers[1]) );
  DFE1 registers_reg_0__0_ ( .D(reg_i[0]), .E(n295), .C(clk_i), .Q(
        registers[0]) );
  INV3 U2 ( .A(reg_a_idx_i[1]), .Q(n867) );
  NOR22 U3 ( .A(n860), .B(n863), .Q(n288) );
  INV3 U4 ( .A(n860), .Q(n797) );
  NOR22 U5 ( .A(n859), .B(n863), .Q(n291) );
  NOR32 U6 ( .A(reg_b_idx_i[0]), .B(reg_b_idx_i[2]), .C(n784), .Q(n719) );
  CLKIN2 U7 ( .A(reg_b_idx_i[1]), .Q(n784) );
  INV3 U8 ( .A(n861), .Q(n796) );
  NOR32 U9 ( .A(reg_b_idx_i[1]), .B(reg_b_idx_i[2]), .C(n785), .Q(n722) );
  CLKIN2 U10 ( .A(reg_b_idx_i[0]), .Q(n785) );
  NOR22 U11 ( .A(n868), .B(n863), .Q(n292) );
  NOR32 U12 ( .A(n865), .B(reg_a_idx_i[2]), .C(n867), .Q(n793) );
  INV2 U13 ( .A(reg_a_idx_i[0]), .Q(n865) );
  NOR22 U14 ( .A(n866), .B(n863), .Q(n293) );
  NOR32 U15 ( .A(n783), .B(reg_b_idx_i[1]), .C(n785), .Q(n718) );
  NOR32 U16 ( .A(reg_a_idx_i[0]), .B(reg_a_idx_i[2]), .C(n867), .Q(n792) );
  NOR22 U17 ( .A(n864), .B(n863), .Q(n294) );
  NOR32 U18 ( .A(n784), .B(reg_b_idx_i[2]), .C(n785), .Q(n720) );
  NOR32 U19 ( .A(n784), .B(reg_b_idx_i[0]), .C(n783), .Q(n715) );
  INV3 U20 ( .A(n858), .Q(n795) );
  NOR32 U21 ( .A(reg_a_idx_i[1]), .B(reg_a_idx_i[2]), .C(n865), .Q(n791) );
  NOR22 U22 ( .A(n862), .B(n863), .Q(n295) );
  NOR32 U23 ( .A(reg_b_idx_i[0]), .B(reg_b_idx_i[1]), .C(n783), .Q(n717) );
  INV2 U24 ( .A(reg_b_idx_i[2]), .Q(n783) );
  INV3 U25 ( .A(n859), .Q(n794) );
  NOR32 U26 ( .A(reg_a_idx_i[1]), .B(reg_a_idx_i[2]), .C(reg_a_idx_i[0]), .Q(
        n790) );
  NOR32 U27 ( .A(n783), .B(n784), .C(n785), .Q(n716) );
  NOR22 U28 ( .A(n858), .B(n863), .Q(n290) );
  NOR22 U29 ( .A(n861), .B(n863), .Q(n289) );
  OAI212 U30 ( .A(n860), .B(n869), .C(clk_en_reg_file_i), .Q(n863) );
  NOR32 U31 ( .A(reg_b_idx_i[1]), .B(reg_b_idx_i[2]), .C(reg_b_idx_i[0]), .Q(
        n721) );
  NAND40 U32 ( .A(n711), .B(n712), .C(n713), .D(n714), .Q(reg_b_o[9]) );
  AOI220 U33 ( .A(registers[105]), .B(n715), .C(registers[121]), .D(n716), .Q(
        n714) );
  AOI220 U34 ( .A(registers[73]), .B(n717), .C(registers[89]), .D(n718), .Q(
        n713) );
  AOI220 U35 ( .A(registers[41]), .B(n719), .C(registers[57]), .D(n720), .Q(
        n712) );
  AOI220 U36 ( .A(registers[9]), .B(n721), .C(registers[25]), .D(n722), .Q(
        n711) );
  NAND40 U37 ( .A(n723), .B(n724), .C(n725), .D(n726), .Q(reg_b_o[8]) );
  AOI220 U38 ( .A(registers[104]), .B(n715), .C(registers[120]), .D(n716), .Q(
        n726) );
  AOI220 U39 ( .A(registers[72]), .B(n717), .C(registers[88]), .D(n718), .Q(
        n725) );
  AOI220 U40 ( .A(registers[40]), .B(n719), .C(registers[56]), .D(n720), .Q(
        n724) );
  AOI220 U41 ( .A(registers[8]), .B(n721), .C(registers[24]), .D(n722), .Q(
        n723) );
  NAND40 U42 ( .A(n727), .B(n728), .C(n729), .D(n730), .Q(reg_b_o[7]) );
  AOI220 U43 ( .A(registers[103]), .B(n715), .C(registers[119]), .D(n716), .Q(
        n730) );
  AOI220 U44 ( .A(registers[71]), .B(n717), .C(registers[87]), .D(n718), .Q(
        n729) );
  AOI220 U45 ( .A(registers[39]), .B(n719), .C(registers[55]), .D(n720), .Q(
        n728) );
  AOI220 U46 ( .A(registers[7]), .B(n721), .C(registers[23]), .D(n722), .Q(
        n727) );
  NAND40 U47 ( .A(n731), .B(n732), .C(n733), .D(n734), .Q(reg_b_o[6]) );
  AOI220 U48 ( .A(registers[102]), .B(n715), .C(registers[118]), .D(n716), .Q(
        n734) );
  AOI220 U49 ( .A(registers[70]), .B(n717), .C(registers[86]), .D(n718), .Q(
        n733) );
  AOI220 U50 ( .A(registers[38]), .B(n719), .C(registers[54]), .D(n720), .Q(
        n732) );
  AOI220 U51 ( .A(registers[6]), .B(n721), .C(registers[22]), .D(n722), .Q(
        n731) );
  NAND40 U52 ( .A(n735), .B(n736), .C(n737), .D(n738), .Q(reg_b_o[5]) );
  AOI220 U53 ( .A(registers[101]), .B(n715), .C(registers[117]), .D(n716), .Q(
        n738) );
  AOI220 U54 ( .A(registers[69]), .B(n717), .C(registers[85]), .D(n718), .Q(
        n737) );
  AOI220 U55 ( .A(registers[37]), .B(n719), .C(registers[53]), .D(n720), .Q(
        n736) );
  AOI220 U56 ( .A(registers[5]), .B(n721), .C(registers[21]), .D(n722), .Q(
        n735) );
  NAND40 U57 ( .A(n739), .B(n740), .C(n741), .D(n742), .Q(reg_b_o[4]) );
  AOI220 U58 ( .A(registers[100]), .B(n715), .C(registers[116]), .D(n716), .Q(
        n742) );
  AOI220 U59 ( .A(registers[68]), .B(n717), .C(registers[84]), .D(n718), .Q(
        n741) );
  AOI220 U60 ( .A(registers[36]), .B(n719), .C(registers[52]), .D(n720), .Q(
        n740) );
  AOI220 U61 ( .A(registers[4]), .B(n721), .C(registers[20]), .D(n722), .Q(
        n739) );
  NAND40 U62 ( .A(n743), .B(n744), .C(n745), .D(n746), .Q(reg_b_o[3]) );
  AOI220 U63 ( .A(registers[99]), .B(n715), .C(registers[115]), .D(n716), .Q(
        n746) );
  AOI220 U64 ( .A(registers[67]), .B(n717), .C(registers[83]), .D(n718), .Q(
        n745) );
  AOI220 U65 ( .A(registers[35]), .B(n719), .C(registers[51]), .D(n720), .Q(
        n744) );
  AOI220 U66 ( .A(registers[3]), .B(n721), .C(registers[19]), .D(n722), .Q(
        n743) );
  NAND40 U67 ( .A(n747), .B(n748), .C(n749), .D(n750), .Q(reg_b_o[2]) );
  AOI220 U68 ( .A(registers[98]), .B(n715), .C(registers[114]), .D(n716), .Q(
        n750) );
  AOI220 U69 ( .A(registers[66]), .B(n717), .C(registers[82]), .D(n718), .Q(
        n749) );
  AOI220 U70 ( .A(registers[34]), .B(n719), .C(registers[50]), .D(n720), .Q(
        n748) );
  AOI220 U71 ( .A(registers[2]), .B(n721), .C(registers[18]), .D(n722), .Q(
        n747) );
  NAND40 U72 ( .A(n751), .B(n752), .C(n753), .D(n754), .Q(reg_b_o[1]) );
  AOI220 U73 ( .A(registers[97]), .B(n715), .C(registers[113]), .D(n716), .Q(
        n754) );
  AOI220 U74 ( .A(registers[65]), .B(n717), .C(registers[81]), .D(n718), .Q(
        n753) );
  AOI220 U75 ( .A(registers[33]), .B(n719), .C(registers[49]), .D(n720), .Q(
        n752) );
  AOI220 U76 ( .A(registers[1]), .B(n721), .C(registers[17]), .D(n722), .Q(
        n751) );
  NAND40 U77 ( .A(n755), .B(n756), .C(n757), .D(n758), .Q(reg_b_o[15]) );
  AOI220 U78 ( .A(registers[111]), .B(n715), .C(registers[127]), .D(n716), .Q(
        n758) );
  AOI220 U79 ( .A(registers[79]), .B(n717), .C(registers[95]), .D(n718), .Q(
        n757) );
  AOI220 U80 ( .A(registers[47]), .B(n719), .C(registers[63]), .D(n720), .Q(
        n756) );
  AOI220 U81 ( .A(registers[15]), .B(n721), .C(registers[31]), .D(n722), .Q(
        n755) );
  NAND40 U82 ( .A(n759), .B(n760), .C(n761), .D(n762), .Q(reg_b_o[14]) );
  AOI220 U83 ( .A(registers[110]), .B(n715), .C(registers[126]), .D(n716), .Q(
        n762) );
  AOI220 U84 ( .A(registers[78]), .B(n717), .C(registers[94]), .D(n718), .Q(
        n761) );
  AOI220 U85 ( .A(registers[46]), .B(n719), .C(registers[62]), .D(n720), .Q(
        n760) );
  AOI220 U86 ( .A(registers[14]), .B(n721), .C(registers[30]), .D(n722), .Q(
        n759) );
  NAND40 U87 ( .A(n763), .B(n764), .C(n765), .D(n766), .Q(reg_b_o[13]) );
  AOI220 U88 ( .A(registers[109]), .B(n715), .C(registers[125]), .D(n716), .Q(
        n766) );
  AOI220 U89 ( .A(registers[77]), .B(n717), .C(registers[93]), .D(n718), .Q(
        n765) );
  AOI220 U90 ( .A(registers[45]), .B(n719), .C(registers[61]), .D(n720), .Q(
        n764) );
  AOI220 U91 ( .A(registers[13]), .B(n721), .C(registers[29]), .D(n722), .Q(
        n763) );
  NAND40 U92 ( .A(n767), .B(n768), .C(n769), .D(n770), .Q(reg_b_o[12]) );
  AOI220 U93 ( .A(registers[108]), .B(n715), .C(registers[124]), .D(n716), .Q(
        n770) );
  AOI220 U94 ( .A(registers[76]), .B(n717), .C(registers[92]), .D(n718), .Q(
        n769) );
  AOI220 U95 ( .A(registers[44]), .B(n719), .C(registers[60]), .D(n720), .Q(
        n768) );
  AOI220 U96 ( .A(registers[12]), .B(n721), .C(registers[28]), .D(n722), .Q(
        n767) );
  NAND40 U97 ( .A(n771), .B(n772), .C(n773), .D(n774), .Q(reg_b_o[11]) );
  AOI220 U98 ( .A(registers[107]), .B(n715), .C(registers[123]), .D(n716), .Q(
        n774) );
  AOI220 U99 ( .A(registers[75]), .B(n717), .C(registers[91]), .D(n718), .Q(
        n773) );
  AOI220 U100 ( .A(registers[43]), .B(n719), .C(registers[59]), .D(n720), .Q(
        n772) );
  AOI220 U101 ( .A(registers[11]), .B(n721), .C(registers[27]), .D(n722), .Q(
        n771) );
  NAND40 U102 ( .A(n775), .B(n776), .C(n777), .D(n778), .Q(reg_b_o[10]) );
  AOI220 U103 ( .A(registers[106]), .B(n715), .C(registers[122]), .D(n716), 
        .Q(n778) );
  AOI220 U104 ( .A(registers[74]), .B(n717), .C(registers[90]), .D(n718), .Q(
        n777) );
  AOI220 U105 ( .A(registers[42]), .B(n719), .C(registers[58]), .D(n720), .Q(
        n776) );
  AOI220 U106 ( .A(registers[10]), .B(n721), .C(registers[26]), .D(n722), .Q(
        n775) );
  NAND40 U107 ( .A(n779), .B(n780), .C(n781), .D(n782), .Q(reg_b_o[0]) );
  AOI220 U108 ( .A(registers[96]), .B(n715), .C(registers[112]), .D(n716), .Q(
        n782) );
  AOI220 U109 ( .A(registers[64]), .B(n717), .C(registers[80]), .D(n718), .Q(
        n781) );
  AOI220 U110 ( .A(registers[32]), .B(n719), .C(registers[48]), .D(n720), .Q(
        n780) );
  AOI220 U111 ( .A(registers[0]), .B(n721), .C(registers[16]), .D(n722), .Q(
        n779) );
  NAND40 U112 ( .A(n786), .B(n787), .C(n788), .D(n789), .Q(reg_a_o[9]) );
  AOI220 U113 ( .A(n790), .B(registers[9]), .C(n791), .D(registers[25]), .Q(
        n789) );
  AOI220 U114 ( .A(n792), .B(registers[41]), .C(n793), .D(registers[57]), .Q(
        n788) );
  AOI220 U115 ( .A(n794), .B(registers[73]), .C(n795), .D(registers[89]), .Q(
        n787) );
  AOI220 U116 ( .A(n796), .B(registers[105]), .C(n797), .D(registers[121]), 
        .Q(n786) );
  NAND40 U117 ( .A(n798), .B(n799), .C(n800), .D(n801), .Q(reg_a_o[8]) );
  AOI220 U118 ( .A(n790), .B(registers[8]), .C(n791), .D(registers[24]), .Q(
        n801) );
  AOI220 U119 ( .A(n792), .B(registers[40]), .C(n793), .D(registers[56]), .Q(
        n800) );
  AOI220 U120 ( .A(n794), .B(registers[72]), .C(n795), .D(registers[88]), .Q(
        n799) );
  AOI220 U121 ( .A(n796), .B(registers[104]), .C(n797), .D(registers[120]), 
        .Q(n798) );
  NAND40 U122 ( .A(n802), .B(n803), .C(n804), .D(n805), .Q(reg_a_o[7]) );
  AOI220 U123 ( .A(n790), .B(registers[7]), .C(n791), .D(registers[23]), .Q(
        n805) );
  AOI220 U124 ( .A(n792), .B(registers[39]), .C(n793), .D(registers[55]), .Q(
        n804) );
  AOI220 U125 ( .A(n794), .B(registers[71]), .C(n795), .D(registers[87]), .Q(
        n803) );
  AOI220 U126 ( .A(n796), .B(registers[103]), .C(n797), .D(registers[119]), 
        .Q(n802) );
  NAND40 U127 ( .A(n806), .B(n807), .C(n808), .D(n809), .Q(reg_a_o[6]) );
  AOI220 U128 ( .A(n790), .B(registers[6]), .C(n791), .D(registers[22]), .Q(
        n809) );
  AOI220 U129 ( .A(n792), .B(registers[38]), .C(n793), .D(registers[54]), .Q(
        n808) );
  AOI220 U130 ( .A(n794), .B(registers[70]), .C(n795), .D(registers[86]), .Q(
        n807) );
  AOI220 U131 ( .A(n796), .B(registers[102]), .C(n797), .D(registers[118]), 
        .Q(n806) );
  NAND40 U132 ( .A(n810), .B(n811), .C(n812), .D(n813), .Q(reg_a_o[5]) );
  AOI220 U133 ( .A(n790), .B(registers[5]), .C(n791), .D(registers[21]), .Q(
        n813) );
  AOI220 U134 ( .A(n792), .B(registers[37]), .C(n793), .D(registers[53]), .Q(
        n812) );
  AOI220 U135 ( .A(n794), .B(registers[69]), .C(n795), .D(registers[85]), .Q(
        n811) );
  AOI220 U136 ( .A(n796), .B(registers[101]), .C(n797), .D(registers[117]), 
        .Q(n810) );
  NAND40 U137 ( .A(n814), .B(n815), .C(n816), .D(n817), .Q(reg_a_o[4]) );
  AOI220 U138 ( .A(n790), .B(registers[4]), .C(n791), .D(registers[20]), .Q(
        n817) );
  AOI220 U139 ( .A(n792), .B(registers[36]), .C(n793), .D(registers[52]), .Q(
        n816) );
  AOI220 U140 ( .A(n794), .B(registers[68]), .C(n795), .D(registers[84]), .Q(
        n815) );
  AOI220 U141 ( .A(n796), .B(registers[100]), .C(n797), .D(registers[116]), 
        .Q(n814) );
  NAND40 U142 ( .A(n818), .B(n819), .C(n820), .D(n821), .Q(reg_a_o[3]) );
  AOI220 U143 ( .A(n790), .B(registers[3]), .C(n791), .D(registers[19]), .Q(
        n821) );
  AOI220 U144 ( .A(n792), .B(registers[35]), .C(n793), .D(registers[51]), .Q(
        n820) );
  AOI220 U145 ( .A(n794), .B(registers[67]), .C(n795), .D(registers[83]), .Q(
        n819) );
  AOI220 U146 ( .A(n796), .B(registers[99]), .C(n797), .D(registers[115]), .Q(
        n818) );
  NAND40 U147 ( .A(n822), .B(n823), .C(n824), .D(n825), .Q(reg_a_o[2]) );
  AOI220 U148 ( .A(n790), .B(registers[2]), .C(n791), .D(registers[18]), .Q(
        n825) );
  AOI220 U149 ( .A(n792), .B(registers[34]), .C(n793), .D(registers[50]), .Q(
        n824) );
  AOI220 U150 ( .A(n794), .B(registers[66]), .C(n795), .D(registers[82]), .Q(
        n823) );
  AOI220 U151 ( .A(n796), .B(registers[98]), .C(n797), .D(registers[114]), .Q(
        n822) );
  NAND40 U152 ( .A(n826), .B(n827), .C(n828), .D(n829), .Q(reg_a_o[1]) );
  AOI220 U153 ( .A(n790), .B(registers[1]), .C(n791), .D(registers[17]), .Q(
        n829) );
  AOI220 U154 ( .A(n792), .B(registers[33]), .C(n793), .D(registers[49]), .Q(
        n828) );
  AOI220 U155 ( .A(n794), .B(registers[65]), .C(n795), .D(registers[81]), .Q(
        n827) );
  AOI220 U156 ( .A(n796), .B(registers[97]), .C(n797), .D(registers[113]), .Q(
        n826) );
  NAND40 U157 ( .A(n830), .B(n831), .C(n832), .D(n833), .Q(reg_a_o[15]) );
  AOI220 U158 ( .A(n790), .B(registers[15]), .C(n791), .D(registers[31]), .Q(
        n833) );
  AOI220 U159 ( .A(n792), .B(registers[47]), .C(n793), .D(registers[63]), .Q(
        n832) );
  AOI220 U160 ( .A(n794), .B(registers[79]), .C(n795), .D(registers[95]), .Q(
        n831) );
  AOI220 U161 ( .A(n796), .B(registers[111]), .C(n797), .D(registers[127]), 
        .Q(n830) );
  NAND40 U162 ( .A(n834), .B(n835), .C(n836), .D(n837), .Q(reg_a_o[14]) );
  AOI220 U163 ( .A(n790), .B(registers[14]), .C(n791), .D(registers[30]), .Q(
        n837) );
  AOI220 U164 ( .A(n792), .B(registers[46]), .C(n793), .D(registers[62]), .Q(
        n836) );
  AOI220 U165 ( .A(n794), .B(registers[78]), .C(n795), .D(registers[94]), .Q(
        n835) );
  AOI220 U166 ( .A(n796), .B(registers[110]), .C(n797), .D(registers[126]), 
        .Q(n834) );
  NAND40 U167 ( .A(n838), .B(n839), .C(n840), .D(n841), .Q(reg_a_o[13]) );
  AOI220 U168 ( .A(n790), .B(registers[13]), .C(n791), .D(registers[29]), .Q(
        n841) );
  AOI220 U169 ( .A(n792), .B(registers[45]), .C(n793), .D(registers[61]), .Q(
        n840) );
  AOI220 U170 ( .A(n794), .B(registers[77]), .C(n795), .D(registers[93]), .Q(
        n839) );
  AOI220 U171 ( .A(n796), .B(registers[109]), .C(n797), .D(registers[125]), 
        .Q(n838) );
  NAND40 U172 ( .A(n842), .B(n843), .C(n844), .D(n845), .Q(reg_a_o[12]) );
  AOI220 U173 ( .A(n790), .B(registers[12]), .C(n791), .D(registers[28]), .Q(
        n845) );
  AOI220 U174 ( .A(n792), .B(registers[44]), .C(n793), .D(registers[60]), .Q(
        n844) );
  AOI220 U175 ( .A(n794), .B(registers[76]), .C(n795), .D(registers[92]), .Q(
        n843) );
  AOI220 U176 ( .A(n796), .B(registers[108]), .C(n797), .D(registers[124]), 
        .Q(n842) );
  NAND40 U177 ( .A(n846), .B(n847), .C(n848), .D(n849), .Q(reg_a_o[11]) );
  AOI220 U178 ( .A(n790), .B(registers[11]), .C(n791), .D(registers[27]), .Q(
        n849) );
  AOI220 U179 ( .A(n792), .B(registers[43]), .C(n793), .D(registers[59]), .Q(
        n848) );
  AOI220 U180 ( .A(n794), .B(registers[75]), .C(n795), .D(registers[91]), .Q(
        n847) );
  AOI220 U181 ( .A(n796), .B(registers[107]), .C(n797), .D(registers[123]), 
        .Q(n846) );
  NAND40 U182 ( .A(n850), .B(n851), .C(n852), .D(n853), .Q(reg_a_o[10]) );
  AOI220 U183 ( .A(n790), .B(registers[10]), .C(n791), .D(registers[26]), .Q(
        n853) );
  AOI220 U184 ( .A(n792), .B(registers[42]), .C(n793), .D(registers[58]), .Q(
        n852) );
  AOI220 U185 ( .A(n794), .B(registers[74]), .C(n795), .D(registers[90]), .Q(
        n851) );
  AOI220 U186 ( .A(n796), .B(registers[106]), .C(n797), .D(registers[122]), 
        .Q(n850) );
  NAND40 U187 ( .A(n854), .B(n855), .C(n856), .D(n857), .Q(reg_a_o[0]) );
  AOI220 U188 ( .A(n790), .B(registers[0]), .C(n791), .D(registers[16]), .Q(
        n857) );
  AOI220 U189 ( .A(n792), .B(registers[32]), .C(n793), .D(registers[48]), .Q(
        n856) );
  AOI220 U190 ( .A(n794), .B(registers[64]), .C(n795), .D(registers[80]), .Q(
        n855) );
  AOI220 U191 ( .A(n796), .B(registers[96]), .C(n797), .D(registers[112]), .Q(
        n854) );
  CLKIN0 U192 ( .A(n790), .Q(n862) );
  CLKIN0 U193 ( .A(n791), .Q(n864) );
  CLKIN0 U194 ( .A(n792), .Q(n866) );
  CLKIN0 U195 ( .A(n793), .Q(n868) );
  NAND30 U196 ( .A(n865), .B(n867), .C(reg_a_idx_i[2]), .Q(n859) );
  NAND30 U197 ( .A(reg_a_idx_i[0]), .B(n867), .C(reg_a_idx_i[2]), .Q(n858) );
  NAND30 U198 ( .A(reg_a_idx_i[1]), .B(n865), .C(reg_a_idx_i[2]), .Q(n861) );
  CLKIN0 U199 ( .A(reg_a_idx_i[3]), .Q(n869) );
  NAND30 U200 ( .A(reg_a_idx_i[1]), .B(reg_a_idx_i[0]), .C(reg_a_idx_i[2]), 
        .Q(n860) );
endmodule


module alu_16 ( side_a_i, side_b_i, carry_i, alu_func_i, result_o, carry_o, 
        zero_o );
  input [15:0] side_a_i;
  input [15:0] side_b_i;
  input [3:0] alu_func_i;
  output [15:0] result_o;
  input carry_i;
  output carry_o, zero_o;
  wire   add_cin, res_v_17_, res_v_16_, res_v_15_, res_v_14_, res_v_13_,
         res_v_12_, res_v_11_, res_v_10_, res_v_9_, res_v_8_, res_v_7_,
         res_v_6_, res_v_5_, res_v_4_, res_v_3_, res_v_2_, res_v_1_, n1, n2,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532;
  wire   [15:0] add_b;
  wire   SYNOPSYS_UNCONNECTED__0;

  alu_16_DW01_add_0 add_110 ( .A({n2, side_a_i, n1}), .B({n2, add_b, add_cin}), 
        .CI(n2), .SUM({res_v_17_, res_v_16_, res_v_15_, res_v_14_, res_v_13_, 
        res_v_12_, res_v_11_, res_v_10_, res_v_9_, res_v_8_, res_v_7_, 
        res_v_6_, res_v_5_, res_v_4_, res_v_3_, res_v_2_, res_v_1_, 
        SYNOPSYS_UNCONNECTED__0}) );
  INV3 U3 ( .A(alu_func_i[2]), .Q(n506) );
  NAND31 U4 ( .A(n508), .B(n506), .C(alu_func_i[3]), .Q(n504) );
  NOR22 U5 ( .A(n504), .B(alu_func_i[1]), .Q(n517) );
  NOR32 U6 ( .A(n506), .B(n507), .C(n508), .Q(n378) );
  INV3 U7 ( .A(n374), .Q(n380) );
  NAND22 U8 ( .A(n516), .B(alu_func_i[1]), .Q(n515) );
  INV3 U9 ( .A(n510), .Q(n364) );
  NOR32 U10 ( .A(n507), .B(alu_func_i[0]), .C(n506), .Q(n374) );
  INV3 U11 ( .A(n503), .Q(n516) );
  INV3 U12 ( .A(n502), .Q(n376) );
  IMUX22 U13 ( .A(n501), .B(n375), .S(alu_func_i[0]), .Q(n381) );
  OAI212 U14 ( .A(n501), .B(n375), .C(alu_func_i[0]), .Q(n372) );
  NOR32 U15 ( .A(alu_func_i[1]), .B(alu_func_i[3]), .C(n506), .Q(n375) );
  NAND22 U16 ( .A(n503), .B(n504), .Q(n368) );
  LOGIC0 U17 ( .Q(n2) );
  LOGIC1 U18 ( .Q(n1) );
  CLKIN0 U19 ( .A(n359), .Q(zero_o) );
  NAND40 U20 ( .A(n360), .B(n361), .C(n362), .D(n363), .Q(n359) );
  NOR40 U21 ( .A(result_o[9]), .B(result_o[8]), .C(result_o[7]), .D(
        result_o[6]), .Q(n363) );
  OAI2110 U22 ( .A(n364), .B(n365), .C(n366), .D(n367), .Q(result_o[6]) );
  AOI2110 U23 ( .A(res_v_7_), .B(n368), .C(n369), .D(n370), .Q(n367) );
  AOI210 U24 ( .A(n371), .B(n372), .C(n373), .Q(n370) );
  CLKIN0 U25 ( .A(side_b_i[6]), .Q(n373) );
  IMUX20 U26 ( .A(n374), .B(n375), .S(side_a_i[6]), .Q(n371) );
  NOR20 U27 ( .A(n376), .B(n377), .Q(n369) );
  IMUX20 U28 ( .A(n378), .B(n379), .S(side_a_i[6]), .Q(n366) );
  OAI210 U29 ( .A(side_b_i[6]), .B(n380), .C(n381), .Q(n379) );
  OAI2110 U30 ( .A(n364), .B(n382), .C(n383), .D(n384), .Q(result_o[7]) );
  AOI2110 U31 ( .A(res_v_8_), .B(n368), .C(n385), .D(n386), .Q(n384) );
  AOI210 U32 ( .A(n387), .B(n372), .C(n388), .Q(n386) );
  CLKIN0 U33 ( .A(side_b_i[7]), .Q(n388) );
  IMUX20 U34 ( .A(n374), .B(n375), .S(side_a_i[7]), .Q(n387) );
  NOR20 U35 ( .A(n376), .B(n389), .Q(n385) );
  IMUX20 U36 ( .A(n378), .B(n390), .S(side_a_i[7]), .Q(n383) );
  OAI210 U37 ( .A(side_b_i[7]), .B(n380), .C(n381), .Q(n390) );
  OAI2110 U38 ( .A(n364), .B(n377), .C(n391), .D(n392), .Q(result_o[8]) );
  AOI2110 U39 ( .A(res_v_9_), .B(n368), .C(n393), .D(n394), .Q(n392) );
  AOI210 U40 ( .A(n395), .B(n372), .C(n396), .Q(n394) );
  CLKIN0 U41 ( .A(side_b_i[8]), .Q(n396) );
  IMUX20 U42 ( .A(n374), .B(n375), .S(side_a_i[8]), .Q(n395) );
  NOR20 U43 ( .A(n397), .B(n376), .Q(n393) );
  IMUX20 U44 ( .A(n378), .B(n398), .S(side_a_i[8]), .Q(n391) );
  OAI210 U45 ( .A(side_b_i[8]), .B(n380), .C(n381), .Q(n398) );
  CLKIN0 U46 ( .A(side_a_i[7]), .Q(n377) );
  OAI2110 U47 ( .A(n364), .B(n389), .C(n399), .D(n400), .Q(result_o[9]) );
  AOI2110 U48 ( .A(res_v_10_), .B(n368), .C(n401), .D(n402), .Q(n400) );
  AOI210 U49 ( .A(n403), .B(n372), .C(n404), .Q(n402) );
  CLKIN0 U50 ( .A(side_b_i[9]), .Q(n404) );
  IMUX20 U51 ( .A(n374), .B(n375), .S(side_a_i[9]), .Q(n403) );
  NOR20 U52 ( .A(n376), .B(n405), .Q(n401) );
  IMUX20 U53 ( .A(n378), .B(n406), .S(side_a_i[9]), .Q(n399) );
  OAI210 U54 ( .A(side_b_i[9]), .B(n380), .C(n381), .Q(n406) );
  CLKIN0 U55 ( .A(side_a_i[8]), .Q(n389) );
  NOR40 U56 ( .A(result_o[5]), .B(result_o[4]), .C(result_o[3]), .D(
        result_o[2]), .Q(n362) );
  OAI2110 U57 ( .A(n364), .B(n407), .C(n408), .D(n409), .Q(result_o[2]) );
  AOI2110 U58 ( .A(res_v_3_), .B(n368), .C(n410), .D(n411), .Q(n409) );
  AOI210 U59 ( .A(n412), .B(n372), .C(n413), .Q(n411) );
  CLKIN0 U60 ( .A(side_b_i[2]), .Q(n413) );
  IMUX20 U61 ( .A(n374), .B(n375), .S(side_a_i[2]), .Q(n412) );
  NOR20 U62 ( .A(n376), .B(n414), .Q(n410) );
  IMUX20 U63 ( .A(n378), .B(n415), .S(side_a_i[2]), .Q(n408) );
  OAI210 U64 ( .A(side_b_i[2]), .B(n380), .C(n381), .Q(n415) );
  OAI2110 U65 ( .A(n364), .B(n416), .C(n417), .D(n418), .Q(result_o[3]) );
  AOI2110 U66 ( .A(res_v_4_), .B(n368), .C(n419), .D(n420), .Q(n418) );
  AOI210 U67 ( .A(n421), .B(n372), .C(n422), .Q(n420) );
  CLKIN0 U68 ( .A(side_b_i[3]), .Q(n422) );
  IMUX20 U69 ( .A(n374), .B(n375), .S(side_a_i[3]), .Q(n421) );
  NOR20 U70 ( .A(n376), .B(n423), .Q(n419) );
  IMUX20 U71 ( .A(n378), .B(n424), .S(side_a_i[3]), .Q(n417) );
  OAI210 U72 ( .A(side_b_i[3]), .B(n380), .C(n381), .Q(n424) );
  OAI2110 U73 ( .A(n364), .B(n414), .C(n425), .D(n426), .Q(result_o[4]) );
  AOI2110 U74 ( .A(res_v_5_), .B(n368), .C(n427), .D(n428), .Q(n426) );
  AOI210 U75 ( .A(n429), .B(n372), .C(n430), .Q(n428) );
  CLKIN0 U76 ( .A(side_b_i[4]), .Q(n430) );
  IMUX20 U77 ( .A(n374), .B(n375), .S(side_a_i[4]), .Q(n429) );
  NOR20 U78 ( .A(n376), .B(n365), .Q(n427) );
  CLKIN0 U79 ( .A(side_a_i[5]), .Q(n365) );
  IMUX20 U80 ( .A(n378), .B(n431), .S(side_a_i[4]), .Q(n425) );
  OAI210 U81 ( .A(side_b_i[4]), .B(n380), .C(n381), .Q(n431) );
  CLKIN0 U82 ( .A(side_a_i[3]), .Q(n414) );
  OAI2110 U83 ( .A(n364), .B(n423), .C(n432), .D(n433), .Q(result_o[5]) );
  AOI2110 U84 ( .A(res_v_6_), .B(n368), .C(n434), .D(n435), .Q(n433) );
  AOI210 U85 ( .A(n436), .B(n372), .C(n437), .Q(n435) );
  CLKIN0 U86 ( .A(side_b_i[5]), .Q(n437) );
  IMUX20 U87 ( .A(n374), .B(n375), .S(side_a_i[5]), .Q(n436) );
  NOR20 U88 ( .A(n376), .B(n382), .Q(n434) );
  CLKIN0 U89 ( .A(side_a_i[6]), .Q(n382) );
  IMUX20 U90 ( .A(n378), .B(n438), .S(side_a_i[5]), .Q(n432) );
  OAI210 U91 ( .A(side_b_i[5]), .B(n380), .C(n381), .Q(n438) );
  CLKIN0 U92 ( .A(side_a_i[4]), .Q(n423) );
  NOR40 U93 ( .A(result_o[1]), .B(result_o[15]), .C(result_o[14]), .D(
        result_o[13]), .Q(n361) );
  OAI2110 U94 ( .A(n364), .B(n439), .C(n440), .D(n441), .Q(result_o[13]) );
  AOI2110 U95 ( .A(res_v_14_), .B(n368), .C(n442), .D(n443), .Q(n441) );
  AOI210 U96 ( .A(n444), .B(n372), .C(n445), .Q(n443) );
  CLKIN0 U97 ( .A(side_b_i[13]), .Q(n445) );
  IMUX20 U98 ( .A(n374), .B(n375), .S(side_a_i[13]), .Q(n444) );
  NOR20 U99 ( .A(n376), .B(n446), .Q(n442) );
  IMUX20 U100 ( .A(n378), .B(n447), .S(side_a_i[13]), .Q(n440) );
  OAI210 U101 ( .A(side_b_i[13]), .B(n380), .C(n381), .Q(n447) );
  OAI2110 U102 ( .A(n364), .B(n448), .C(n449), .D(n450), .Q(result_o[14]) );
  AOI2110 U103 ( .A(res_v_15_), .B(n368), .C(n451), .D(n452), .Q(n450) );
  AOI210 U104 ( .A(n453), .B(n372), .C(n454), .Q(n452) );
  CLKIN0 U105 ( .A(side_b_i[14]), .Q(n454) );
  IMUX20 U106 ( .A(n374), .B(n375), .S(side_a_i[14]), .Q(n453) );
  NOR20 U107 ( .A(n376), .B(n455), .Q(n451) );
  IMUX20 U108 ( .A(n378), .B(n456), .S(side_a_i[14]), .Q(n449) );
  OAI210 U109 ( .A(side_b_i[14]), .B(n380), .C(n381), .Q(n456) );
  OAI2110 U110 ( .A(n364), .B(n446), .C(n457), .D(n458), .Q(result_o[15]) );
  AOI2110 U111 ( .A(res_v_16_), .B(n368), .C(n459), .D(n460), .Q(n458) );
  AOI210 U112 ( .A(n461), .B(n372), .C(n462), .Q(n460) );
  CLKIN0 U113 ( .A(side_b_i[15]), .Q(n462) );
  IMUX20 U114 ( .A(n375), .B(n374), .S(n455), .Q(n461) );
  NOR20 U115 ( .A(n376), .B(n463), .Q(n459) );
  IMUX20 U116 ( .A(n464), .B(n378), .S(n455), .Q(n457) );
  CLKIN0 U117 ( .A(side_a_i[15]), .Q(n455) );
  OAI210 U118 ( .A(side_b_i[15]), .B(n380), .C(n381), .Q(n464) );
  CLKIN0 U119 ( .A(side_a_i[14]), .Q(n446) );
  OAI2110 U120 ( .A(n364), .B(n465), .C(n466), .D(n467), .Q(result_o[1]) );
  AOI2110 U121 ( .A(res_v_2_), .B(n368), .C(n468), .D(n469), .Q(n467) );
  AOI210 U122 ( .A(n470), .B(n372), .C(n471), .Q(n469) );
  CLKIN0 U123 ( .A(side_b_i[1]), .Q(n471) );
  IMUX20 U124 ( .A(n374), .B(n375), .S(side_a_i[1]), .Q(n470) );
  NOR20 U125 ( .A(n376), .B(n416), .Q(n468) );
  CLKIN0 U126 ( .A(side_a_i[2]), .Q(n416) );
  IMUX20 U127 ( .A(n378), .B(n472), .S(side_a_i[1]), .Q(n466) );
  OAI210 U128 ( .A(side_b_i[1]), .B(n380), .C(n381), .Q(n472) );
  CLKIN0 U129 ( .A(side_a_i[0]), .Q(n465) );
  NOR40 U130 ( .A(result_o[12]), .B(result_o[11]), .C(result_o[10]), .D(
        result_o[0]), .Q(n360) );
  OAI2110 U131 ( .A(n364), .B(n463), .C(n473), .D(n474), .Q(result_o[0]) );
  AOI2110 U132 ( .A(res_v_1_), .B(n368), .C(n475), .D(n476), .Q(n474) );
  AOI210 U133 ( .A(n477), .B(n372), .C(n478), .Q(n476) );
  CLKIN0 U134 ( .A(side_b_i[0]), .Q(n478) );
  IMUX20 U135 ( .A(n374), .B(n375), .S(side_a_i[0]), .Q(n477) );
  NOR20 U136 ( .A(n376), .B(n407), .Q(n475) );
  CLKIN0 U137 ( .A(side_a_i[1]), .Q(n407) );
  IMUX20 U138 ( .A(n378), .B(n479), .S(side_a_i[0]), .Q(n473) );
  OAI210 U139 ( .A(side_b_i[0]), .B(n380), .C(n381), .Q(n479) );
  CLKIN0 U140 ( .A(carry_i), .Q(n463) );
  OAI2110 U141 ( .A(n397), .B(n364), .C(n480), .D(n481), .Q(result_o[10]) );
  AOI2110 U142 ( .A(res_v_11_), .B(n368), .C(n482), .D(n483), .Q(n481) );
  AOI210 U143 ( .A(n484), .B(n372), .C(n485), .Q(n483) );
  CLKIN0 U144 ( .A(side_b_i[10]), .Q(n485) );
  IMUX20 U145 ( .A(n374), .B(n375), .S(side_a_i[10]), .Q(n484) );
  NOR20 U146 ( .A(n376), .B(n486), .Q(n482) );
  IMUX20 U147 ( .A(n378), .B(n487), .S(side_a_i[10]), .Q(n480) );
  OAI210 U148 ( .A(side_b_i[10]), .B(n380), .C(n381), .Q(n487) );
  CLKIN0 U149 ( .A(side_a_i[9]), .Q(n397) );
  OAI2110 U150 ( .A(n405), .B(n364), .C(n488), .D(n489), .Q(result_o[11]) );
  AOI2110 U151 ( .A(res_v_12_), .B(n368), .C(n490), .D(n491), .Q(n489) );
  AOI210 U152 ( .A(n492), .B(n372), .C(n493), .Q(n491) );
  CLKIN0 U153 ( .A(side_b_i[11]), .Q(n493) );
  IMUX20 U154 ( .A(n374), .B(n375), .S(side_a_i[11]), .Q(n492) );
  NOR20 U155 ( .A(n376), .B(n439), .Q(n490) );
  CLKIN0 U156 ( .A(side_a_i[12]), .Q(n439) );
  IMUX20 U157 ( .A(n378), .B(n494), .S(side_a_i[11]), .Q(n488) );
  OAI210 U158 ( .A(side_b_i[11]), .B(n380), .C(n381), .Q(n494) );
  CLKIN0 U159 ( .A(side_a_i[10]), .Q(n405) );
  OAI2110 U160 ( .A(n364), .B(n486), .C(n495), .D(n496), .Q(result_o[12]) );
  AOI2110 U161 ( .A(res_v_13_), .B(n368), .C(n497), .D(n498), .Q(n496) );
  AOI210 U162 ( .A(n499), .B(n372), .C(n500), .Q(n498) );
  CLKIN0 U163 ( .A(side_b_i[12]), .Q(n500) );
  IMUX20 U164 ( .A(n374), .B(n375), .S(side_a_i[12]), .Q(n499) );
  NOR20 U165 ( .A(n376), .B(n448), .Q(n497) );
  CLKIN0 U166 ( .A(side_a_i[13]), .Q(n448) );
  IMUX20 U167 ( .A(n378), .B(n505), .S(side_a_i[12]), .Q(n495) );
  OAI210 U168 ( .A(side_b_i[12]), .B(n380), .C(n381), .Q(n505) );
  NOR20 U169 ( .A(alu_func_i[2]), .B(n507), .Q(n501) );
  NAND20 U170 ( .A(alu_func_i[1]), .B(n509), .Q(n507) );
  CLKIN0 U171 ( .A(side_a_i[11]), .Q(n486) );
  NAND20 U172 ( .A(n511), .B(n512), .Q(carry_o) );
  MUX21 U173 ( .A(n503), .B(n504), .S(res_v_17_), .Q(n512) );
  AOI220 U174 ( .A(side_a_i[0]), .B(n502), .C(side_a_i[15]), .D(n510), .Q(n511) );
  NOR40 U175 ( .A(n509), .B(n506), .C(alu_func_i[0]), .D(alu_func_i[1]), .Q(
        n510) );
  NOR40 U176 ( .A(n509), .B(n508), .C(n506), .D(alu_func_i[1]), .Q(n502) );
  CLKIN0 U177 ( .A(alu_func_i[3]), .Q(n509) );
  IMUX20 U178 ( .A(n504), .B(n503), .S(n513), .Q(add_cin) );
  NOR20 U179 ( .A(alu_func_i[1]), .B(carry_i), .Q(n513) );
  NAND20 U180 ( .A(n514), .B(n515), .Q(add_b[9]) );
  IMUX20 U181 ( .A(n516), .B(n517), .S(side_b_i[9]), .Q(n514) );
  NAND20 U182 ( .A(n518), .B(n515), .Q(add_b[8]) );
  IMUX20 U183 ( .A(n516), .B(n517), .S(side_b_i[8]), .Q(n518) );
  NAND20 U184 ( .A(n519), .B(n515), .Q(add_b[7]) );
  IMUX20 U185 ( .A(n516), .B(n517), .S(side_b_i[7]), .Q(n519) );
  NAND20 U186 ( .A(n520), .B(n515), .Q(add_b[6]) );
  IMUX20 U187 ( .A(n516), .B(n517), .S(side_b_i[6]), .Q(n520) );
  NAND20 U188 ( .A(n521), .B(n515), .Q(add_b[5]) );
  IMUX20 U189 ( .A(n516), .B(n517), .S(side_b_i[5]), .Q(n521) );
  NAND20 U190 ( .A(n522), .B(n515), .Q(add_b[4]) );
  IMUX20 U191 ( .A(n516), .B(n517), .S(side_b_i[4]), .Q(n522) );
  NAND20 U192 ( .A(n523), .B(n515), .Q(add_b[3]) );
  IMUX20 U193 ( .A(n516), .B(n517), .S(side_b_i[3]), .Q(n523) );
  NAND20 U194 ( .A(n524), .B(n515), .Q(add_b[2]) );
  IMUX20 U195 ( .A(n516), .B(n517), .S(side_b_i[2]), .Q(n524) );
  NAND20 U196 ( .A(n525), .B(n515), .Q(add_b[1]) );
  IMUX20 U197 ( .A(n516), .B(n517), .S(side_b_i[1]), .Q(n525) );
  NAND20 U198 ( .A(n526), .B(n515), .Q(add_b[15]) );
  IMUX20 U199 ( .A(n516), .B(n517), .S(side_b_i[15]), .Q(n526) );
  NAND20 U200 ( .A(n527), .B(n515), .Q(add_b[14]) );
  IMUX20 U201 ( .A(n516), .B(n517), .S(side_b_i[14]), .Q(n527) );
  NAND20 U202 ( .A(n528), .B(n515), .Q(add_b[13]) );
  IMUX20 U203 ( .A(n516), .B(n517), .S(side_b_i[13]), .Q(n528) );
  NAND20 U204 ( .A(n529), .B(n515), .Q(add_b[12]) );
  IMUX20 U205 ( .A(n516), .B(n517), .S(side_b_i[12]), .Q(n529) );
  NAND20 U206 ( .A(n530), .B(n515), .Q(add_b[11]) );
  IMUX20 U207 ( .A(n516), .B(n517), .S(side_b_i[11]), .Q(n530) );
  NAND20 U208 ( .A(n531), .B(n515), .Q(add_b[10]) );
  IMUX20 U209 ( .A(n516), .B(n517), .S(side_b_i[10]), .Q(n531) );
  NAND20 U210 ( .A(n532), .B(n515), .Q(add_b[0]) );
  IMUX20 U211 ( .A(n516), .B(n517), .S(side_b_i[0]), .Q(n532) );
  CLKIN0 U212 ( .A(alu_func_i[0]), .Q(n508) );
  NAND30 U213 ( .A(alu_func_i[0]), .B(n506), .C(alu_func_i[3]), .Q(n503) );
endmodule


module control ( clk_i, res_i, op_code_i, reg_decode_error_i, sel_pc_o, 
        sel_load_o, sel_addr_o, clk_en_pc_o, clk_en_reg_file_o, 
        clk_en_op_code_o, alu_func_o, carry_o, carry_i, zero_i, mem_rd_stb_o, 
        mem_wr_stb_o, illegal_inst_o, cpu_halt_o );
  input [5:0] op_code_i;
  output [3:0] alu_func_o;
  input clk_i, res_i, reg_decode_error_i, carry_i, zero_i;
  output sel_pc_o, sel_load_o, sel_addr_o, clk_en_pc_o, clk_en_reg_file_o,
         clk_en_op_code_o, carry_o, mem_rd_stb_o, mem_wr_stb_o, illegal_inst_o,
         cpu_halt_o;
  wire   NextMemRead, n49, n98, n99, n100, n11, n12, n186, n187, n188, n189,
         n190, n191, n192, n193, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n264, n265, n266;

  DFC3 Cycle_reg_0_ ( .D(n100), .C(clk_i), .RN(res_i), .Q(n262) );
  DFC3 IllegalInst_reg ( .D(n266), .C(clk_i), .RN(res_i), .Q(illegal_inst_o), 
        .QN(n12) );
  DFC3 Cycle_reg_2_ ( .D(n99), .C(clk_i), .RN(res_i), .Q(n261), .QN(n186) );
  DFC3 Cycle_reg_1_ ( .D(n98), .C(clk_i), .RN(res_i), .Q(n260), .QN(n188) );
  DFC3 mem_rd_stb_o_reg ( .D(NextMemRead), .C(clk_i), .RN(res_i), .Q(
        mem_rd_stb_o) );
  DFC3 mem_wr_stb_o_reg ( .D(n264), .C(clk_i), .RN(res_i), .Q(mem_wr_stb_o) );
  DFC3 cpu_halt_o_reg ( .D(n265), .C(clk_i), .RN(res_i), .Q(cpu_halt_o) );
  DFEC1 Zero_reg ( .D(zero_i), .E(n49), .C(clk_i), .RN(res_i), .QN(n11) );
  DFEC1 Carry_reg ( .D(carry_i), .E(n49), .C(clk_i), .RN(res_i), .QN(n187) );
  OAI222 U3 ( .A(n186), .B(n232), .C(n227), .D(n221), .Q(clk_en_op_code_o) );
  OAI212 U4 ( .A(n249), .B(n240), .C(n247), .Q(alu_func_o[0]) );
  NAND41 U5 ( .A(n246), .B(n247), .C(n197), .D(n196), .Q(alu_func_o[1]) );
  OAI2111 U6 ( .A(n243), .B(n240), .C(n197), .D(n196), .Q(alu_func_o[3]) );
  OAI212 U7 ( .A(n224), .B(n196), .C(n197), .Q(clk_en_pc_o) );
  NAND20 U8 ( .A(sel_load_o), .B(n205), .Q(n197) );
  OAI212 U9 ( .A(n205), .B(n206), .C(n207), .Q(sel_addr_o) );
  INV3 U10 ( .A(n206), .Q(sel_load_o) );
  INV6 U11 ( .A(n189), .Q(sel_pc_o) );
  NOR20 U12 ( .A(n195), .B(n196), .Q(n190) );
  CLKIN0 U13 ( .A(n197), .Q(n191) );
  NOR20 U14 ( .A(n191), .B(n192), .Q(n189) );
  NOR20 U15 ( .A(n190), .B(n266), .Q(n193) );
  CLKIN0 U16 ( .A(n193), .Q(n192) );
  NAND31 U17 ( .A(n186), .B(n188), .C(n262), .Q(n196) );
  NOR40 U18 ( .A(n199), .B(n200), .C(n201), .D(n202), .Q(n195) );
  NOR20 U19 ( .A(n203), .B(n204), .Q(n201) );
  IMUX20 U20 ( .A(n11), .B(n187), .S(n205), .Q(n204) );
  CLKIN0 U21 ( .A(n208), .Q(clk_en_reg_file_o) );
  OAI210 U22 ( .A(n209), .B(n210), .C(n211), .Q(n208) );
  CLKIN0 U23 ( .A(n212), .Q(n211) );
  NOR30 U24 ( .A(n213), .B(op_code_i[5]), .C(n196), .Q(n264) );
  CLKIN0 U25 ( .A(n214), .Q(n265) );
  CLKIN0 U26 ( .A(n198), .Q(n266) );
  OAI210 U27 ( .A(reg_decode_error_i), .B(n215), .C(n216), .Q(n198) );
  OAI310 U28 ( .A(n212), .B(op_code_i[5]), .C(n217), .D(n218), .Q(n99) );
  IMUX20 U29 ( .A(n219), .B(n220), .S(n186), .Q(n218) );
  NOR20 U30 ( .A(n199), .B(n210), .Q(n217) );
  OAI210 U31 ( .A(n12), .B(n221), .C(n222), .Q(n98) );
  AOI220 U32 ( .A(n219), .B(n260), .C(n216), .D(n223), .Q(n222) );
  CLKIN0 U33 ( .A(n224), .Q(n223) );
  AOI210 U34 ( .A(n225), .B(n226), .C(n212), .Q(n49) );
  OAI2110 U35 ( .A(n227), .B(n212), .C(n214), .D(n228), .Q(n100) );
  AOI220 U36 ( .A(n219), .B(n262), .C(n220), .D(n261), .Q(n228) );
  AOI210 U37 ( .A(n229), .B(n186), .C(n220), .Q(n219) );
  NAND20 U38 ( .A(n262), .B(n260), .Q(n229) );
  NAND30 U39 ( .A(n216), .B(n230), .C(n200), .Q(n214) );
  CLKIN0 U40 ( .A(n196), .Q(n216) );
  NAND20 U41 ( .A(n12), .B(n231), .Q(n212) );
  NOR40 U42 ( .A(n202), .B(n215), .C(n199), .D(op_code_i[3]), .Q(n224) );
  AOI2110 U43 ( .A(n233), .B(n234), .C(op_code_i[3]), .D(n209), .Q(n227) );
  NAND30 U44 ( .A(n235), .B(n236), .C(n225), .Q(n209) );
  AOI2110 U45 ( .A(op_code_i[2]), .B(op_code_i[1]), .C(n237), .D(op_code_i[5]), 
        .Q(n225) );
  OAI210 U46 ( .A(op_code_i[1]), .B(n238), .C(op_code_i[4]), .Q(n235) );
  NOR40 U47 ( .A(op_code_i[5]), .B(n239), .C(n187), .D(n240), .Q(carry_o) );
  AOI220 U48 ( .A(n241), .B(op_code_i[0]), .C(n242), .D(op_code_i[1]), .Q(n239) );
  AOI2110 U49 ( .A(op_code_i[3]), .B(n244), .C(n242), .D(n241), .Q(n243) );
  AOI210 U50 ( .A(n236), .B(n245), .C(n240), .Q(alu_func_o[2]) );
  NAND30 U51 ( .A(op_code_i[1]), .B(n233), .C(n248), .Q(n246) );
  NAND40 U52 ( .A(n242), .B(n234), .C(n231), .D(n226), .Q(n247) );
  CLKIN0 U53 ( .A(n248), .Q(n240) );
  NOR20 U54 ( .A(n226), .B(n221), .Q(n248) );
  CLKIN0 U55 ( .A(n231), .Q(n221) );
  AOI210 U56 ( .A(n242), .B(op_code_i[0]), .C(n250), .Q(n249) );
  OAI220 U57 ( .A(op_code_i[2]), .B(n251), .C(n203), .D(n252), .Q(n250) );
  CLKIN0 U58 ( .A(n241), .Q(n252) );
  AOI210 U59 ( .A(op_code_i[1]), .B(op_code_i[0]), .C(n253), .Q(n251) );
  MUX21 U60 ( .A(n237), .B(n234), .S(op_code_i[3]), .Q(n253) );
  NAND30 U61 ( .A(n207), .B(n206), .C(n254), .Q(NextMemRead) );
  CLKIN0 U62 ( .A(n255), .Q(n254) );
  OAI220 U63 ( .A(n196), .B(n256), .C(n232), .D(n261), .Q(n255) );
  CLKIN0 U64 ( .A(n220), .Q(n232) );
  NOR20 U65 ( .A(n262), .B(n260), .Q(n220) );
  NOR40 U66 ( .A(n202), .B(n215), .C(n200), .D(op_code_i[3]), .Q(n256) );
  NOR30 U67 ( .A(n244), .B(op_code_i[4]), .C(n245), .Q(n200) );
  NAND20 U68 ( .A(n257), .B(n230), .Q(n215) );
  IMUX20 U69 ( .A(n258), .B(n259), .S(n233), .Q(n257) );
  NOR20 U70 ( .A(n244), .B(n238), .Q(n259) );
  CLKIN0 U71 ( .A(n237), .Q(n244) );
  NOR20 U72 ( .A(op_code_i[4]), .B(n234), .Q(n258) );
  OAI2110 U73 ( .A(n237), .B(n245), .C(n236), .D(n226), .Q(n202) );
  CLKIN0 U74 ( .A(n242), .Q(n236) );
  NOR20 U75 ( .A(n233), .B(n238), .Q(n242) );
  NOR20 U76 ( .A(n205), .B(op_code_i[1]), .Q(n237) );
  CLKIN0 U77 ( .A(op_code_i[0]), .Q(n205) );
  NAND30 U78 ( .A(n210), .B(n230), .C(n231), .Q(n206) );
  NOR30 U79 ( .A(n245), .B(op_code_i[4]), .C(n203), .Q(n210) );
  CLKIN0 U80 ( .A(op_code_i[1]), .Q(n203) );
  NAND20 U81 ( .A(n233), .B(n238), .Q(n245) );
  CLKIN0 U82 ( .A(op_code_i[3]), .Q(n238) );
  NAND30 U83 ( .A(n231), .B(n230), .C(n199), .Q(n207) );
  CLKIN0 U84 ( .A(n213), .Q(n199) );
  NAND30 U85 ( .A(n241), .B(n226), .C(n234), .Q(n213) );
  NOR20 U86 ( .A(op_code_i[0]), .B(op_code_i[1]), .Q(n234) );
  CLKIN0 U87 ( .A(op_code_i[4]), .Q(n226) );
  NOR20 U88 ( .A(n233), .B(op_code_i[3]), .Q(n241) );
  CLKIN0 U89 ( .A(op_code_i[2]), .Q(n233) );
  CLKIN0 U90 ( .A(op_code_i[5]), .Q(n230) );
  NOR30 U91 ( .A(n262), .B(n261), .C(n188), .Q(n231) );
endmodule


module datapath ( clk_i, res_i, op_code_o, reg_decode_error_o, sel_pc_i, 
        sel_load_i, sel_addr_i, clk_en_pc_i, clk_en_reg_file_i, 
        clk_en_op_code_i, alu_func_i, carry_i, carry_o, zero_o, mem_addr_o, 
        mem_data_o, mem_data_i );
  output [5:0] op_code_o;
  input [3:0] alu_func_i;
  output [15:0] mem_addr_o;
  output [15:0] mem_data_o;
  input [15:0] mem_data_i;
  input clk_i, res_i, sel_pc_i, sel_load_i, sel_addr_i, clk_en_pc_i,
         clk_en_reg_file_i, clk_en_op_code_i, carry_i;
  output reg_decode_error_o, carry_o, zero_o;
  wire   N11, N12, N13, N17, N18, N19, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217;
  wire   [15:0] AluSideA;
  wire   [15:0] RegTmpB;
  wire   [15:0] AluResult;
  wire   [3:0] RegAIdx;
  wire   [3:0] RegBIdx;
  wire   [15:0] Load;
  wire   [15:0] RaValue;
  wire   [15:0] RbValue;

  DF3 RegTmpB_reg_0_ ( .D(RbValue[0]), .C(clk_i), .Q(RegTmpB[0]), .QN(n46) );
  DF3 RegTmpB_reg_1_ ( .D(RbValue[1]), .C(clk_i), .Q(RegTmpB[1]), .QN(n45) );
  DF3 RegTmpB_reg_2_ ( .D(RbValue[2]), .C(clk_i), .Q(RegTmpB[2]), .QN(n44) );
  DF3 RegTmpB_reg_3_ ( .D(RbValue[3]), .C(clk_i), .Q(RegTmpB[3]), .QN(n43) );
  DF3 RegTmpB_reg_4_ ( .D(RbValue[4]), .C(clk_i), .Q(RegTmpB[4]), .QN(n42) );
  DF3 RegTmpB_reg_5_ ( .D(RbValue[5]), .C(clk_i), .Q(RegTmpB[5]), .QN(n41) );
  DF3 RegTmpB_reg_6_ ( .D(RbValue[6]), .C(clk_i), .Q(RegTmpB[6]), .QN(n40) );
  DF3 RegTmpB_reg_7_ ( .D(RbValue[7]), .C(clk_i), .Q(RegTmpB[7]), .QN(n39) );
  DF3 RegTmpB_reg_8_ ( .D(RbValue[8]), .C(clk_i), .Q(RegTmpB[8]), .QN(n38) );
  DF3 RegTmpB_reg_9_ ( .D(RbValue[9]), .C(clk_i), .Q(RegTmpB[9]), .QN(n37) );
  DF3 RegTmpB_reg_10_ ( .D(RbValue[10]), .C(clk_i), .Q(RegTmpB[10]), .QN(n36)
         );
  DF3 RegTmpB_reg_11_ ( .D(RbValue[11]), .C(clk_i), .Q(RegTmpB[11]), .QN(n35)
         );
  DF3 RegTmpB_reg_12_ ( .D(RbValue[12]), .C(clk_i), .Q(RegTmpB[12]), .QN(n34)
         );
  DF3 RegTmpB_reg_13_ ( .D(RbValue[13]), .C(clk_i), .Q(RegTmpB[13]), .QN(n33)
         );
  DF3 RegTmpB_reg_14_ ( .D(RbValue[14]), .C(clk_i), .Q(RegTmpB[14]), .QN(n32)
         );
  DF3 RegTmpB_reg_15_ ( .D(RbValue[15]), .C(clk_i), .Q(RegTmpB[15]), .QN(n31)
         );
  DF3 RegTmpA_reg_0_ ( .D(RaValue[0]), .C(clk_i), .Q(mem_data_o[0]), .QN(n103)
         );
  DF3 RegTmpA_reg_1_ ( .D(RaValue[1]), .C(clk_i), .Q(mem_data_o[1]), .QN(n102)
         );
  DF3 RegTmpA_reg_2_ ( .D(RaValue[2]), .C(clk_i), .Q(mem_data_o[2]), .QN(n101)
         );
  DF3 RegTmpA_reg_3_ ( .D(RaValue[3]), .C(clk_i), .Q(mem_data_o[3]), .QN(n100)
         );
  DF3 RegTmpA_reg_4_ ( .D(RaValue[4]), .C(clk_i), .Q(mem_data_o[4]), .QN(n99)
         );
  DF3 RegTmpA_reg_5_ ( .D(RaValue[5]), .C(clk_i), .Q(mem_data_o[5]), .QN(n98)
         );
  DF3 RegTmpA_reg_6_ ( .D(RaValue[6]), .C(clk_i), .Q(mem_data_o[6]), .QN(n97)
         );
  DF3 RegTmpA_reg_7_ ( .D(RaValue[7]), .C(clk_i), .Q(mem_data_o[7]), .QN(n96)
         );
  DF3 RegTmpA_reg_8_ ( .D(RaValue[8]), .C(clk_i), .Q(mem_data_o[8]), .QN(n95)
         );
  DF3 RegTmpA_reg_9_ ( .D(RaValue[9]), .C(clk_i), .Q(mem_data_o[9]), .QN(n94)
         );
  DF3 RegTmpA_reg_10_ ( .D(RaValue[10]), .C(clk_i), .Q(mem_data_o[10]), .QN(
        n93) );
  DF3 RegTmpA_reg_11_ ( .D(RaValue[11]), .C(clk_i), .Q(mem_data_o[11]), .QN(
        n92) );
  DF3 RegTmpA_reg_12_ ( .D(RaValue[12]), .C(clk_i), .Q(mem_data_o[12]), .QN(
        n91) );
  DF3 RegTmpA_reg_13_ ( .D(RaValue[13]), .C(clk_i), .Q(mem_data_o[13]), .QN(
        n90) );
  DF3 RegTmpA_reg_14_ ( .D(RaValue[14]), .C(clk_i), .Q(mem_data_o[14]), .QN(
        n89) );
  DF3 RegTmpA_reg_15_ ( .D(RaValue[15]), .C(clk_i), .Q(mem_data_o[15]), .QN(
        n88) );
  alu_16 thealu ( .side_a_i(AluSideA), .side_b_i(RegTmpB), .carry_i(carry_i), 
        .alu_func_i(alu_func_i), .result_o(AluResult), .carry_o(carry_o), 
        .zero_o(zero_o) );
  reg_file_8_0 thereg_file ( .clk_i(clk_i), .reg_a_idx_i(RegAIdx), 
        .reg_b_idx_i(RegBIdx), .clk_en_reg_file_i(clk_en_reg_file_i), .reg_i({
        Load[15:10], n214, n215, Load[7:5], n212, n213, Load[2:0]}), .reg_a_o(
        RaValue), .reg_b_o(RbValue) );
  DFEC1 RegPC_reg_15_ ( .D(n196), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(
        n171) );
  DFEC1 RegPC_reg_0_ ( .D(n211), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(
        n170) );
  DFEC1 RegPC_reg_1_ ( .D(n210), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(
        n164) );
  DFEC1 RegPC_reg_2_ ( .D(n209), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(
        n163) );
  DFEC1 RegPC_reg_3_ ( .D(n208), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(
        n162) );
  DFEC1 RegPC_reg_4_ ( .D(n207), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(
        n161) );
  DFEC1 RegPC_reg_5_ ( .D(n206), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(
        n160) );
  DFEC1 RegPC_reg_6_ ( .D(n205), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(
        n159) );
  DFEC1 RegPC_reg_7_ ( .D(n204), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(
        n158) );
  DFEC1 RegPC_reg_8_ ( .D(n203), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(
        n157) );
  DFEC1 RegPC_reg_9_ ( .D(n202), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(
        n156) );
  DFEC1 RegPC_reg_10_ ( .D(n201), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(
        n169) );
  DFEC1 RegPC_reg_11_ ( .D(n200), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(
        n168) );
  DFEC1 RegPC_reg_14_ ( .D(n197), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(
        n165) );
  DFEC1 RegPC_reg_12_ ( .D(n199), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(
        n167) );
  DFEC1 RegPC_reg_13_ ( .D(n198), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(
        n166) );
  DFEP1 RegBIdx_reg_3_ ( .D(n217), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegBIdx[3]) );
  DFEP1 RegAIdx_reg_3_ ( .D(n216), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegAIdx[3]) );
  DFEC1 RegOpcode_reg_2_ ( .D(mem_data_i[12]), .E(clk_en_op_code_i), .C(clk_i), 
        .RN(res_i), .Q(op_code_o[2]) );
  DFEC1 RegOpcode_reg_0_ ( .D(mem_data_i[10]), .E(clk_en_op_code_i), .C(clk_i), 
        .RN(res_i), .Q(op_code_o[0]) );
  DFEC1 RegOpcode_reg_4_ ( .D(mem_data_i[14]), .E(clk_en_op_code_i), .C(clk_i), 
        .RN(res_i), .Q(op_code_o[4]) );
  DFEC1 RegOpcode_reg_5_ ( .D(mem_data_i[15]), .E(clk_en_op_code_i), .C(clk_i), 
        .RN(res_i), .Q(op_code_o[5]) );
  DFEP1 RegAIdx_reg_1_ ( .D(N12), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegAIdx[1]) );
  DFEP1 RegAIdx_reg_0_ ( .D(N11), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegAIdx[0]) );
  DFEP1 RegBIdx_reg_0_ ( .D(N17), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegBIdx[0]) );
  DFEP1 RegBIdx_reg_1_ ( .D(N18), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegBIdx[1]) );
  DFEP1 RegBIdx_reg_2_ ( .D(N19), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegBIdx[2]) );
  DFEC1 RegOpcode_reg_3_ ( .D(mem_data_i[13]), .E(clk_en_op_code_i), .C(clk_i), 
        .RN(res_i), .Q(op_code_o[3]) );
  DFEC1 RegOpcode_reg_1_ ( .D(mem_data_i[11]), .E(clk_en_op_code_i), .C(clk_i), 
        .RN(res_i), .Q(op_code_o[1]) );
  DFEP3 RegAIdx_reg_2_ ( .D(N13), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegAIdx[2]) );
  IMUX21 U3 ( .A(n102), .B(n164), .S(sel_pc_i), .Q(AluSideA[1]) );
  IMUX21 U4 ( .A(n92), .B(n168), .S(sel_pc_i), .Q(AluSideA[11]) );
  IMUX21 U5 ( .A(n93), .B(n169), .S(sel_pc_i), .Q(AluSideA[10]) );
  IMUX21 U6 ( .A(n91), .B(n167), .S(sel_pc_i), .Q(AluSideA[12]) );
  IMUX21 U7 ( .A(n89), .B(n165), .S(sel_pc_i), .Q(AluSideA[14]) );
  IMUX21 U8 ( .A(n90), .B(n166), .S(sel_pc_i), .Q(AluSideA[13]) );
  IMUX21 U9 ( .A(n98), .B(n160), .S(sel_pc_i), .Q(AluSideA[5]) );
  IMUX21 U10 ( .A(n99), .B(n161), .S(sel_pc_i), .Q(AluSideA[4]) );
  IMUX21 U11 ( .A(n100), .B(n162), .S(sel_pc_i), .Q(AluSideA[3]) );
  IMUX21 U12 ( .A(n101), .B(n163), .S(sel_pc_i), .Q(AluSideA[2]) );
  IMUX21 U13 ( .A(n94), .B(n156), .S(sel_pc_i), .Q(AluSideA[9]) );
  IMUX21 U14 ( .A(n95), .B(n157), .S(sel_pc_i), .Q(AluSideA[8]) );
  IMUX21 U15 ( .A(n96), .B(n158), .S(sel_pc_i), .Q(AluSideA[7]) );
  IMUX21 U16 ( .A(n97), .B(n159), .S(sel_pc_i), .Q(AluSideA[6]) );
  IMUX21 U17 ( .A(n103), .B(n170), .S(sel_pc_i), .Q(AluSideA[0]) );
  NAND20 U18 ( .A(n186), .B(n187), .Q(reg_decode_error_o) );
  NAND40 U19 ( .A(RegAIdx[3]), .B(RegAIdx[1]), .C(RegAIdx[2]), .D(RegAIdx[0]), 
        .Q(n187) );
  NAND40 U20 ( .A(RegBIdx[3]), .B(RegBIdx[2]), .C(RegBIdx[0]), .D(RegBIdx[1]), 
        .Q(n186) );
  MUX21 U21 ( .A(RaValue[15]), .B(AluResult[15]), .S(sel_pc_i), .Q(n196) );
  MUX21 U22 ( .A(RaValue[14]), .B(AluResult[14]), .S(sel_pc_i), .Q(n197) );
  MUX21 U23 ( .A(RaValue[13]), .B(AluResult[13]), .S(sel_pc_i), .Q(n198) );
  MUX21 U24 ( .A(RaValue[12]), .B(AluResult[12]), .S(sel_pc_i), .Q(n199) );
  MUX21 U25 ( .A(RaValue[11]), .B(AluResult[11]), .S(sel_pc_i), .Q(n200) );
  MUX21 U26 ( .A(RaValue[10]), .B(AluResult[10]), .S(sel_pc_i), .Q(n201) );
  MUX21 U27 ( .A(RaValue[9]), .B(AluResult[9]), .S(sel_pc_i), .Q(n202) );
  MUX21 U28 ( .A(RaValue[8]), .B(AluResult[8]), .S(sel_pc_i), .Q(n203) );
  MUX21 U29 ( .A(RaValue[7]), .B(AluResult[7]), .S(sel_pc_i), .Q(n204) );
  MUX21 U30 ( .A(RaValue[6]), .B(AluResult[6]), .S(sel_pc_i), .Q(n205) );
  MUX21 U31 ( .A(RaValue[5]), .B(AluResult[5]), .S(sel_pc_i), .Q(n206) );
  MUX21 U32 ( .A(RaValue[4]), .B(AluResult[4]), .S(sel_pc_i), .Q(n207) );
  MUX21 U33 ( .A(RaValue[3]), .B(AluResult[3]), .S(sel_pc_i), .Q(n208) );
  MUX21 U34 ( .A(RaValue[2]), .B(AluResult[2]), .S(sel_pc_i), .Q(n209) );
  MUX21 U35 ( .A(RaValue[1]), .B(AluResult[1]), .S(sel_pc_i), .Q(n210) );
  MUX21 U36 ( .A(RaValue[0]), .B(AluResult[0]), .S(sel_pc_i), .Q(n211) );
  MUX21 U37 ( .A(AluResult[4]), .B(mem_data_i[4]), .S(sel_load_i), .Q(n212) );
  MUX21 U38 ( .A(AluResult[3]), .B(mem_data_i[3]), .S(sel_load_i), .Q(n213) );
  MUX21 U39 ( .A(AluResult[9]), .B(mem_data_i[9]), .S(sel_load_i), .Q(n214) );
  MUX21 U40 ( .A(AluResult[8]), .B(mem_data_i[8]), .S(sel_load_i), .Q(n215) );
  CLKIN0 U41 ( .A(n188), .Q(n216) );
  CLKIN0 U42 ( .A(n189), .Q(n217) );
  IMUX20 U43 ( .A(n156), .B(n37), .S(sel_addr_i), .Q(mem_addr_o[9]) );
  IMUX20 U44 ( .A(n157), .B(n38), .S(sel_addr_i), .Q(mem_addr_o[8]) );
  IMUX20 U45 ( .A(n158), .B(n39), .S(sel_addr_i), .Q(mem_addr_o[7]) );
  IMUX20 U46 ( .A(n159), .B(n40), .S(sel_addr_i), .Q(mem_addr_o[6]) );
  IMUX20 U47 ( .A(n160), .B(n41), .S(sel_addr_i), .Q(mem_addr_o[5]) );
  IMUX20 U48 ( .A(n161), .B(n42), .S(sel_addr_i), .Q(mem_addr_o[4]) );
  IMUX20 U49 ( .A(n162), .B(n43), .S(sel_addr_i), .Q(mem_addr_o[3]) );
  IMUX20 U50 ( .A(n163), .B(n44), .S(sel_addr_i), .Q(mem_addr_o[2]) );
  IMUX20 U51 ( .A(n164), .B(n45), .S(sel_addr_i), .Q(mem_addr_o[1]) );
  IMUX20 U52 ( .A(n171), .B(n31), .S(sel_addr_i), .Q(mem_addr_o[15]) );
  IMUX20 U53 ( .A(n165), .B(n32), .S(sel_addr_i), .Q(mem_addr_o[14]) );
  IMUX20 U54 ( .A(n166), .B(n33), .S(sel_addr_i), .Q(mem_addr_o[13]) );
  IMUX20 U55 ( .A(n167), .B(n34), .S(sel_addr_i), .Q(mem_addr_o[12]) );
  IMUX20 U56 ( .A(n168), .B(n35), .S(sel_addr_i), .Q(mem_addr_o[11]) );
  IMUX20 U57 ( .A(n169), .B(n36), .S(sel_addr_i), .Q(mem_addr_o[10]) );
  IMUX20 U58 ( .A(n170), .B(n46), .S(sel_addr_i), .Q(mem_addr_o[0]) );
  NAND20 U59 ( .A(n189), .B(n190), .Q(N19) );
  CLKIN0 U60 ( .A(mem_data_i[2]), .Q(n190) );
  NAND20 U61 ( .A(n189), .B(n191), .Q(N18) );
  CLKIN0 U62 ( .A(mem_data_i[1]), .Q(n191) );
  NAND20 U63 ( .A(n189), .B(n192), .Q(N17) );
  CLKIN0 U64 ( .A(mem_data_i[0]), .Q(n192) );
  NOR20 U65 ( .A(mem_data_i[4]), .B(mem_data_i[3]), .Q(n189) );
  NAND20 U66 ( .A(n188), .B(n193), .Q(N13) );
  CLKIN0 U67 ( .A(mem_data_i[7]), .Q(n193) );
  NAND20 U68 ( .A(n188), .B(n194), .Q(N12) );
  CLKIN0 U69 ( .A(mem_data_i[6]), .Q(n194) );
  NAND20 U70 ( .A(n188), .B(n195), .Q(N11) );
  CLKIN0 U71 ( .A(mem_data_i[5]), .Q(n195) );
  NOR20 U72 ( .A(mem_data_i[9]), .B(mem_data_i[8]), .Q(n188) );
  MUX21 U73 ( .A(AluResult[7]), .B(mem_data_i[7]), .S(sel_load_i), .Q(Load[7])
         );
  MUX21 U74 ( .A(AluResult[6]), .B(mem_data_i[6]), .S(sel_load_i), .Q(Load[6])
         );
  MUX21 U75 ( .A(AluResult[5]), .B(mem_data_i[5]), .S(sel_load_i), .Q(Load[5])
         );
  MUX21 U76 ( .A(AluResult[2]), .B(mem_data_i[2]), .S(sel_load_i), .Q(Load[2])
         );
  MUX21 U77 ( .A(AluResult[1]), .B(mem_data_i[1]), .S(sel_load_i), .Q(Load[1])
         );
  MUX21 U78 ( .A(AluResult[15]), .B(mem_data_i[15]), .S(sel_load_i), .Q(
        Load[15]) );
  MUX21 U79 ( .A(AluResult[14]), .B(mem_data_i[14]), .S(sel_load_i), .Q(
        Load[14]) );
  MUX21 U80 ( .A(AluResult[13]), .B(mem_data_i[13]), .S(sel_load_i), .Q(
        Load[13]) );
  MUX21 U81 ( .A(AluResult[12]), .B(mem_data_i[12]), .S(sel_load_i), .Q(
        Load[12]) );
  MUX21 U82 ( .A(AluResult[11]), .B(mem_data_i[11]), .S(sel_load_i), .Q(
        Load[11]) );
  MUX21 U83 ( .A(AluResult[10]), .B(mem_data_i[10]), .S(sel_load_i), .Q(
        Load[10]) );
  MUX21 U84 ( .A(AluResult[0]), .B(mem_data_i[0]), .S(sel_load_i), .Q(Load[0])
         );
  IMUX20 U85 ( .A(n88), .B(n171), .S(sel_pc_i), .Q(AluSideA[15]) );
endmodule


module cpu ( clk_i, res_i, test_mode_i, scan_enable_i, mem_addr_o, mem_data_o, 
        mem_data_i, mem_ce_no, mem_oe_no, mem_we_no, illegal_inst_o, 
        cpu_halt_o );
  output [15:0] mem_addr_o;
  output [15:0] mem_data_o;
  input [15:0] mem_data_i;
  input clk_i, res_i, test_mode_i, scan_enable_i;
  output mem_ce_no, mem_oe_no, mem_we_no, illegal_inst_o, cpu_halt_o;
  wire   reg_decode_error, sel_pc, sel_load, sel_addr, clk_en_pc,
         clk_en_reg_file, clk_en_op_code, carry_in, carry_out, zero,
         mem_rd_stb, mem_wr_stb, n7, n8, n9, n10;
  wire   [5:0] op_code;
  wire   [3:0] alu_func;

  datapath datapath_inst ( .clk_i(clk_i), .res_i(res_i), .op_code_o(op_code), 
        .reg_decode_error_o(reg_decode_error), .sel_pc_i(sel_pc), .sel_load_i(
        sel_load), .sel_addr_i(sel_addr), .clk_en_pc_i(clk_en_pc), 
        .clk_en_reg_file_i(clk_en_reg_file), .clk_en_op_code_i(clk_en_op_code), 
        .alu_func_i(alu_func), .carry_i(carry_in), .carry_o(carry_out), 
        .zero_o(zero), .mem_addr_o(mem_addr_o), .mem_data_o(mem_data_o), 
        .mem_data_i(mem_data_i) );
  control control_inst ( .clk_i(clk_i), .res_i(res_i), .op_code_i(op_code), 
        .reg_decode_error_i(reg_decode_error), .sel_pc_o(sel_pc), .sel_load_o(
        sel_load), .sel_addr_o(sel_addr), .clk_en_pc_o(clk_en_pc), 
        .clk_en_reg_file_o(clk_en_reg_file), .clk_en_op_code_o(clk_en_op_code), 
        .alu_func_o(alu_func), .carry_o(carry_in), .carry_i(carry_out), 
        .zero_i(zero), .mem_rd_stb_o(mem_rd_stb), .mem_wr_stb_o(mem_wr_stb), 
        .illegal_inst_o(illegal_inst_o), .cpu_halt_o(cpu_halt_o) );
  IMUX20 U9 ( .A(n7), .B(n8), .S(test_mode_i), .Q(mem_we_no) );
  NOR20 U10 ( .A(clk_i), .B(n8), .Q(n7) );
  CLKIN0 U11 ( .A(mem_wr_stb), .Q(n8) );
  IMUX20 U12 ( .A(n9), .B(n10), .S(test_mode_i), .Q(mem_oe_no) );
  NOR20 U13 ( .A(clk_i), .B(n10), .Q(n9) );
  CLKIN0 U14 ( .A(mem_rd_stb), .Q(n10) );
  NOR20 U15 ( .A(mem_wr_stb), .B(mem_rd_stb), .Q(mem_ce_no) );
endmodule


`include "/eda/ams/verilog/c35b3/c35_CORELIB.v"
`include "/eda/ams/verilog/udp.v"

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
  wire   n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295;
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
  NOR21 U2 ( .A(n130), .B(n134), .Q(n292) );
  NOR21 U3 ( .A(n130), .B(n140), .Q(n295) );
  NOR31 U4 ( .A(n216), .B(reg_b_idx_i[2]), .C(n217), .Q(n152) );
  NOR31 U5 ( .A(n286), .B(reg_a_idx_i[2]), .C(n287), .Q(n135) );
  NOR21 U6 ( .A(n130), .B(n136), .Q(n293) );
  NOR31 U7 ( .A(n215), .B(reg_b_idx_i[1]), .C(n217), .Q(n150) );
  INV3 U8 ( .A(n129), .Q(n224) );
  NOR21 U9 ( .A(n130), .B(n138), .Q(n294) );
  NOR21 U10 ( .A(n129), .B(n130), .Q(n288) );
  OAI211 U11 ( .A(n129), .B(n142), .C(clk_en_reg_file_i), .Q(n130) );
  NOR31 U12 ( .A(n216), .B(reg_b_idx_i[0]), .C(n215), .Q(n147) );
  NOR31 U13 ( .A(reg_b_idx_i[1]), .B(reg_b_idx_i[2]), .C(n217), .Q(n154) );
  INV3 U14 ( .A(n131), .Q(n225) );
  NOR21 U15 ( .A(n130), .B(n133), .Q(n291) );
  NOR31 U16 ( .A(reg_b_idx_i[0]), .B(reg_b_idx_i[2]), .C(n216), .Q(n151) );
  NOR31 U17 ( .A(reg_a_idx_i[0]), .B(reg_a_idx_i[2]), .C(n287), .Q(n137) );
  NOR21 U18 ( .A(n130), .B(n132), .Q(n290) );
  NOR31 U19 ( .A(reg_b_idx_i[0]), .B(reg_b_idx_i[1]), .C(n215), .Q(n149) );
  INV3 U20 ( .A(n133), .Q(n223) );
  NOR31 U21 ( .A(reg_a_idx_i[1]), .B(reg_a_idx_i[2]), .C(n286), .Q(n139) );
  NOR31 U22 ( .A(n215), .B(n216), .C(n217), .Q(n148) );
  NOR21 U23 ( .A(n130), .B(n131), .Q(n289) );
  NOR31 U24 ( .A(reg_b_idx_i[1]), .B(reg_b_idx_i[2]), .C(reg_b_idx_i[0]), .Q(
        n153) );
  INV3 U25 ( .A(n132), .Q(n222) );
  NOR31 U26 ( .A(reg_a_idx_i[1]), .B(reg_a_idx_i[2]), .C(reg_a_idx_i[0]), .Q(
        n141) );
  CLKIN0 U27 ( .A(n135), .Q(n134) );
  CLKIN0 U28 ( .A(n137), .Q(n136) );
  CLKIN0 U29 ( .A(n139), .Q(n138) );
  CLKIN0 U30 ( .A(n141), .Q(n140) );
  CLKIN0 U31 ( .A(reg_a_idx_i[3]), .Q(n142) );
  NAND40 U32 ( .A(n143), .B(n144), .C(n145), .D(n146), .Q(reg_b_o[0]) );
  AOI220 U33 ( .A(registers[96]), .B(n147), .C(registers[112]), .D(n148), .Q(
        n146) );
  AOI220 U34 ( .A(registers[64]), .B(n149), .C(registers[80]), .D(n150), .Q(
        n145) );
  AOI220 U35 ( .A(registers[32]), .B(n151), .C(registers[48]), .D(n152), .Q(
        n144) );
  AOI220 U36 ( .A(registers[0]), .B(n153), .C(registers[16]), .D(n154), .Q(
        n143) );
  NAND40 U37 ( .A(n155), .B(n156), .C(n157), .D(n158), .Q(reg_b_o[1]) );
  AOI220 U38 ( .A(registers[97]), .B(n147), .C(registers[113]), .D(n148), .Q(
        n158) );
  AOI220 U39 ( .A(registers[65]), .B(n149), .C(registers[81]), .D(n150), .Q(
        n157) );
  AOI220 U40 ( .A(registers[33]), .B(n151), .C(registers[49]), .D(n152), .Q(
        n156) );
  AOI220 U41 ( .A(registers[1]), .B(n153), .C(registers[17]), .D(n154), .Q(
        n155) );
  NAND40 U42 ( .A(n159), .B(n160), .C(n161), .D(n162), .Q(reg_b_o[2]) );
  AOI220 U43 ( .A(registers[98]), .B(n147), .C(registers[114]), .D(n148), .Q(
        n162) );
  AOI220 U44 ( .A(registers[66]), .B(n149), .C(registers[82]), .D(n150), .Q(
        n161) );
  AOI220 U45 ( .A(registers[34]), .B(n151), .C(registers[50]), .D(n152), .Q(
        n160) );
  AOI220 U46 ( .A(registers[2]), .B(n153), .C(registers[18]), .D(n154), .Q(
        n159) );
  NAND40 U47 ( .A(n163), .B(n164), .C(n165), .D(n166), .Q(reg_b_o[3]) );
  AOI220 U48 ( .A(registers[99]), .B(n147), .C(registers[115]), .D(n148), .Q(
        n166) );
  AOI220 U49 ( .A(registers[67]), .B(n149), .C(registers[83]), .D(n150), .Q(
        n165) );
  AOI220 U50 ( .A(registers[35]), .B(n151), .C(registers[51]), .D(n152), .Q(
        n164) );
  AOI220 U51 ( .A(registers[3]), .B(n153), .C(registers[19]), .D(n154), .Q(
        n163) );
  NAND40 U52 ( .A(n167), .B(n168), .C(n169), .D(n170), .Q(reg_b_o[4]) );
  AOI220 U53 ( .A(registers[100]), .B(n147), .C(registers[116]), .D(n148), .Q(
        n170) );
  AOI220 U54 ( .A(registers[68]), .B(n149), .C(registers[84]), .D(n150), .Q(
        n169) );
  AOI220 U55 ( .A(registers[36]), .B(n151), .C(registers[52]), .D(n152), .Q(
        n168) );
  AOI220 U56 ( .A(registers[4]), .B(n153), .C(registers[20]), .D(n154), .Q(
        n167) );
  NAND40 U57 ( .A(n171), .B(n172), .C(n173), .D(n174), .Q(reg_b_o[5]) );
  AOI220 U58 ( .A(registers[101]), .B(n147), .C(registers[117]), .D(n148), .Q(
        n174) );
  AOI220 U59 ( .A(registers[69]), .B(n149), .C(registers[85]), .D(n150), .Q(
        n173) );
  AOI220 U60 ( .A(registers[37]), .B(n151), .C(registers[53]), .D(n152), .Q(
        n172) );
  AOI220 U61 ( .A(registers[5]), .B(n153), .C(registers[21]), .D(n154), .Q(
        n171) );
  NAND40 U62 ( .A(n175), .B(n176), .C(n177), .D(n178), .Q(reg_b_o[6]) );
  AOI220 U63 ( .A(registers[102]), .B(n147), .C(registers[118]), .D(n148), .Q(
        n178) );
  AOI220 U64 ( .A(registers[70]), .B(n149), .C(registers[86]), .D(n150), .Q(
        n177) );
  AOI220 U65 ( .A(registers[38]), .B(n151), .C(registers[54]), .D(n152), .Q(
        n176) );
  AOI220 U66 ( .A(registers[6]), .B(n153), .C(registers[22]), .D(n154), .Q(
        n175) );
  NAND40 U67 ( .A(n179), .B(n180), .C(n181), .D(n182), .Q(reg_b_o[7]) );
  AOI220 U68 ( .A(registers[103]), .B(n147), .C(registers[119]), .D(n148), .Q(
        n182) );
  AOI220 U69 ( .A(registers[71]), .B(n149), .C(registers[87]), .D(n150), .Q(
        n181) );
  AOI220 U70 ( .A(registers[39]), .B(n151), .C(registers[55]), .D(n152), .Q(
        n180) );
  AOI220 U71 ( .A(registers[7]), .B(n153), .C(registers[23]), .D(n154), .Q(
        n179) );
  NAND40 U72 ( .A(n183), .B(n184), .C(n185), .D(n186), .Q(reg_b_o[8]) );
  AOI220 U73 ( .A(registers[104]), .B(n147), .C(registers[120]), .D(n148), .Q(
        n186) );
  AOI220 U74 ( .A(registers[72]), .B(n149), .C(registers[88]), .D(n150), .Q(
        n185) );
  AOI220 U75 ( .A(registers[40]), .B(n151), .C(registers[56]), .D(n152), .Q(
        n184) );
  AOI220 U76 ( .A(registers[8]), .B(n153), .C(registers[24]), .D(n154), .Q(
        n183) );
  NAND40 U77 ( .A(n187), .B(n188), .C(n189), .D(n190), .Q(reg_b_o[9]) );
  AOI220 U78 ( .A(registers[105]), .B(n147), .C(registers[121]), .D(n148), .Q(
        n190) );
  AOI220 U79 ( .A(registers[73]), .B(n149), .C(registers[89]), .D(n150), .Q(
        n189) );
  AOI220 U80 ( .A(registers[41]), .B(n151), .C(registers[57]), .D(n152), .Q(
        n188) );
  AOI220 U81 ( .A(registers[9]), .B(n153), .C(registers[25]), .D(n154), .Q(
        n187) );
  NAND40 U82 ( .A(n191), .B(n192), .C(n193), .D(n194), .Q(reg_b_o[10]) );
  AOI220 U83 ( .A(registers[106]), .B(n147), .C(registers[122]), .D(n148), .Q(
        n194) );
  AOI220 U84 ( .A(registers[74]), .B(n149), .C(registers[90]), .D(n150), .Q(
        n193) );
  AOI220 U85 ( .A(registers[42]), .B(n151), .C(registers[58]), .D(n152), .Q(
        n192) );
  AOI220 U86 ( .A(registers[10]), .B(n153), .C(registers[26]), .D(n154), .Q(
        n191) );
  NAND40 U87 ( .A(n195), .B(n196), .C(n197), .D(n198), .Q(reg_b_o[11]) );
  AOI220 U88 ( .A(registers[107]), .B(n147), .C(registers[123]), .D(n148), .Q(
        n198) );
  AOI220 U89 ( .A(registers[75]), .B(n149), .C(registers[91]), .D(n150), .Q(
        n197) );
  AOI220 U90 ( .A(registers[43]), .B(n151), .C(registers[59]), .D(n152), .Q(
        n196) );
  AOI220 U91 ( .A(registers[11]), .B(n153), .C(registers[27]), .D(n154), .Q(
        n195) );
  NAND40 U92 ( .A(n199), .B(n200), .C(n201), .D(n202), .Q(reg_b_o[12]) );
  AOI220 U93 ( .A(registers[108]), .B(n147), .C(registers[124]), .D(n148), .Q(
        n202) );
  AOI220 U94 ( .A(registers[76]), .B(n149), .C(registers[92]), .D(n150), .Q(
        n201) );
  AOI220 U95 ( .A(registers[44]), .B(n151), .C(registers[60]), .D(n152), .Q(
        n200) );
  AOI220 U96 ( .A(registers[12]), .B(n153), .C(registers[28]), .D(n154), .Q(
        n199) );
  NAND40 U97 ( .A(n203), .B(n204), .C(n205), .D(n206), .Q(reg_b_o[13]) );
  AOI220 U98 ( .A(registers[109]), .B(n147), .C(registers[125]), .D(n148), .Q(
        n206) );
  AOI220 U99 ( .A(registers[77]), .B(n149), .C(registers[93]), .D(n150), .Q(
        n205) );
  AOI220 U100 ( .A(registers[45]), .B(n151), .C(registers[61]), .D(n152), .Q(
        n204) );
  AOI220 U101 ( .A(registers[13]), .B(n153), .C(registers[29]), .D(n154), .Q(
        n203) );
  NAND40 U102 ( .A(n207), .B(n208), .C(n209), .D(n210), .Q(reg_b_o[14]) );
  AOI220 U103 ( .A(registers[110]), .B(n147), .C(registers[126]), .D(n148), 
        .Q(n210) );
  AOI220 U104 ( .A(registers[78]), .B(n149), .C(registers[94]), .D(n150), .Q(
        n209) );
  AOI220 U105 ( .A(registers[46]), .B(n151), .C(registers[62]), .D(n152), .Q(
        n208) );
  AOI220 U106 ( .A(registers[14]), .B(n153), .C(registers[30]), .D(n154), .Q(
        n207) );
  NAND40 U107 ( .A(n211), .B(n212), .C(n213), .D(n214), .Q(reg_b_o[15]) );
  AOI220 U108 ( .A(registers[111]), .B(n147), .C(registers[127]), .D(n148), 
        .Q(n214) );
  AOI220 U109 ( .A(registers[79]), .B(n149), .C(registers[95]), .D(n150), .Q(
        n213) );
  CLKIN0 U110 ( .A(reg_b_idx_i[2]), .Q(n215) );
  AOI220 U111 ( .A(registers[47]), .B(n151), .C(registers[63]), .D(n152), .Q(
        n212) );
  CLKIN0 U112 ( .A(reg_b_idx_i[1]), .Q(n216) );
  AOI220 U113 ( .A(registers[15]), .B(n153), .C(registers[31]), .D(n154), .Q(
        n211) );
  CLKIN0 U114 ( .A(reg_b_idx_i[0]), .Q(n217) );
  NAND40 U115 ( .A(n218), .B(n219), .C(n220), .D(n221), .Q(reg_a_o[0]) );
  AOI220 U116 ( .A(registers[16]), .B(n139), .C(registers[0]), .D(n141), .Q(
        n221) );
  AOI220 U117 ( .A(registers[48]), .B(n135), .C(registers[32]), .D(n137), .Q(
        n220) );
  AOI220 U118 ( .A(registers[80]), .B(n222), .C(registers[64]), .D(n223), .Q(
        n219) );
  AOI220 U119 ( .A(registers[112]), .B(n224), .C(registers[96]), .D(n225), .Q(
        n218) );
  NAND40 U120 ( .A(n226), .B(n227), .C(n228), .D(n229), .Q(reg_a_o[1]) );
  AOI220 U121 ( .A(registers[17]), .B(n139), .C(registers[1]), .D(n141), .Q(
        n229) );
  AOI220 U122 ( .A(registers[49]), .B(n135), .C(registers[33]), .D(n137), .Q(
        n228) );
  AOI220 U123 ( .A(registers[81]), .B(n222), .C(registers[65]), .D(n223), .Q(
        n227) );
  AOI220 U124 ( .A(registers[113]), .B(n224), .C(registers[97]), .D(n225), .Q(
        n226) );
  NAND40 U125 ( .A(n230), .B(n231), .C(n232), .D(n233), .Q(reg_a_o[2]) );
  AOI220 U126 ( .A(registers[18]), .B(n139), .C(registers[2]), .D(n141), .Q(
        n233) );
  AOI220 U127 ( .A(registers[50]), .B(n135), .C(registers[34]), .D(n137), .Q(
        n232) );
  AOI220 U128 ( .A(registers[82]), .B(n222), .C(registers[66]), .D(n223), .Q(
        n231) );
  AOI220 U129 ( .A(registers[114]), .B(n224), .C(registers[98]), .D(n225), .Q(
        n230) );
  NAND40 U130 ( .A(n234), .B(n235), .C(n236), .D(n237), .Q(reg_a_o[3]) );
  AOI220 U131 ( .A(registers[19]), .B(n139), .C(registers[3]), .D(n141), .Q(
        n237) );
  AOI220 U132 ( .A(registers[51]), .B(n135), .C(registers[35]), .D(n137), .Q(
        n236) );
  AOI220 U133 ( .A(registers[83]), .B(n222), .C(registers[67]), .D(n223), .Q(
        n235) );
  AOI220 U134 ( .A(registers[115]), .B(n224), .C(registers[99]), .D(n225), .Q(
        n234) );
  NAND40 U135 ( .A(n238), .B(n239), .C(n240), .D(n241), .Q(reg_a_o[4]) );
  AOI220 U136 ( .A(registers[20]), .B(n139), .C(registers[4]), .D(n141), .Q(
        n241) );
  AOI220 U137 ( .A(registers[52]), .B(n135), .C(registers[36]), .D(n137), .Q(
        n240) );
  AOI220 U138 ( .A(registers[84]), .B(n222), .C(registers[68]), .D(n223), .Q(
        n239) );
  AOI220 U139 ( .A(registers[116]), .B(n224), .C(registers[100]), .D(n225), 
        .Q(n238) );
  NAND40 U140 ( .A(n242), .B(n243), .C(n244), .D(n245), .Q(reg_a_o[5]) );
  AOI220 U141 ( .A(registers[21]), .B(n139), .C(registers[5]), .D(n141), .Q(
        n245) );
  AOI220 U142 ( .A(registers[53]), .B(n135), .C(registers[37]), .D(n137), .Q(
        n244) );
  AOI220 U143 ( .A(registers[85]), .B(n222), .C(registers[69]), .D(n223), .Q(
        n243) );
  AOI220 U144 ( .A(registers[117]), .B(n224), .C(registers[101]), .D(n225), 
        .Q(n242) );
  NAND40 U145 ( .A(n246), .B(n247), .C(n248), .D(n249), .Q(reg_a_o[6]) );
  AOI220 U146 ( .A(registers[22]), .B(n139), .C(registers[6]), .D(n141), .Q(
        n249) );
  AOI220 U147 ( .A(registers[54]), .B(n135), .C(registers[38]), .D(n137), .Q(
        n248) );
  AOI220 U148 ( .A(registers[86]), .B(n222), .C(registers[70]), .D(n223), .Q(
        n247) );
  AOI220 U149 ( .A(registers[118]), .B(n224), .C(registers[102]), .D(n225), 
        .Q(n246) );
  NAND40 U150 ( .A(n250), .B(n251), .C(n252), .D(n253), .Q(reg_a_o[7]) );
  AOI220 U151 ( .A(registers[23]), .B(n139), .C(registers[7]), .D(n141), .Q(
        n253) );
  AOI220 U152 ( .A(registers[55]), .B(n135), .C(registers[39]), .D(n137), .Q(
        n252) );
  AOI220 U153 ( .A(registers[87]), .B(n222), .C(registers[71]), .D(n223), .Q(
        n251) );
  AOI220 U154 ( .A(registers[119]), .B(n224), .C(registers[103]), .D(n225), 
        .Q(n250) );
  NAND40 U155 ( .A(n254), .B(n255), .C(n256), .D(n257), .Q(reg_a_o[8]) );
  AOI220 U156 ( .A(registers[24]), .B(n139), .C(registers[8]), .D(n141), .Q(
        n257) );
  AOI220 U157 ( .A(registers[56]), .B(n135), .C(registers[40]), .D(n137), .Q(
        n256) );
  AOI220 U158 ( .A(registers[88]), .B(n222), .C(registers[72]), .D(n223), .Q(
        n255) );
  AOI220 U159 ( .A(registers[120]), .B(n224), .C(registers[104]), .D(n225), 
        .Q(n254) );
  NAND40 U160 ( .A(n258), .B(n259), .C(n260), .D(n261), .Q(reg_a_o[9]) );
  AOI220 U161 ( .A(registers[25]), .B(n139), .C(registers[9]), .D(n141), .Q(
        n261) );
  AOI220 U162 ( .A(registers[57]), .B(n135), .C(registers[41]), .D(n137), .Q(
        n260) );
  AOI220 U163 ( .A(registers[89]), .B(n222), .C(registers[73]), .D(n223), .Q(
        n259) );
  AOI220 U164 ( .A(registers[121]), .B(n224), .C(registers[105]), .D(n225), 
        .Q(n258) );
  NAND40 U165 ( .A(n262), .B(n263), .C(n264), .D(n265), .Q(reg_a_o[10]) );
  AOI220 U166 ( .A(registers[26]), .B(n139), .C(registers[10]), .D(n141), .Q(
        n265) );
  AOI220 U167 ( .A(registers[58]), .B(n135), .C(registers[42]), .D(n137), .Q(
        n264) );
  AOI220 U168 ( .A(registers[90]), .B(n222), .C(registers[74]), .D(n223), .Q(
        n263) );
  AOI220 U169 ( .A(registers[122]), .B(n224), .C(registers[106]), .D(n225), 
        .Q(n262) );
  NAND40 U170 ( .A(n266), .B(n267), .C(n268), .D(n269), .Q(reg_a_o[11]) );
  AOI220 U171 ( .A(registers[27]), .B(n139), .C(registers[11]), .D(n141), .Q(
        n269) );
  AOI220 U172 ( .A(registers[59]), .B(n135), .C(registers[43]), .D(n137), .Q(
        n268) );
  AOI220 U173 ( .A(registers[91]), .B(n222), .C(registers[75]), .D(n223), .Q(
        n267) );
  AOI220 U174 ( .A(registers[123]), .B(n224), .C(registers[107]), .D(n225), 
        .Q(n266) );
  NAND40 U175 ( .A(n270), .B(n271), .C(n272), .D(n273), .Q(reg_a_o[12]) );
  AOI220 U176 ( .A(registers[28]), .B(n139), .C(registers[12]), .D(n141), .Q(
        n273) );
  AOI220 U177 ( .A(registers[60]), .B(n135), .C(registers[44]), .D(n137), .Q(
        n272) );
  AOI220 U178 ( .A(registers[92]), .B(n222), .C(registers[76]), .D(n223), .Q(
        n271) );
  AOI220 U179 ( .A(registers[124]), .B(n224), .C(registers[108]), .D(n225), 
        .Q(n270) );
  NAND40 U180 ( .A(n274), .B(n275), .C(n276), .D(n277), .Q(reg_a_o[13]) );
  AOI220 U181 ( .A(registers[29]), .B(n139), .C(registers[13]), .D(n141), .Q(
        n277) );
  AOI220 U182 ( .A(registers[61]), .B(n135), .C(registers[45]), .D(n137), .Q(
        n276) );
  AOI220 U183 ( .A(registers[93]), .B(n222), .C(registers[77]), .D(n223), .Q(
        n275) );
  AOI220 U184 ( .A(registers[125]), .B(n224), .C(registers[109]), .D(n225), 
        .Q(n274) );
  NAND40 U185 ( .A(n278), .B(n279), .C(n280), .D(n281), .Q(reg_a_o[14]) );
  AOI220 U186 ( .A(registers[30]), .B(n139), .C(registers[14]), .D(n141), .Q(
        n281) );
  AOI220 U187 ( .A(registers[62]), .B(n135), .C(registers[46]), .D(n137), .Q(
        n280) );
  AOI220 U188 ( .A(registers[94]), .B(n222), .C(registers[78]), .D(n223), .Q(
        n279) );
  AOI220 U189 ( .A(registers[126]), .B(n224), .C(registers[110]), .D(n225), 
        .Q(n278) );
  NAND40 U190 ( .A(n282), .B(n283), .C(n284), .D(n285), .Q(reg_a_o[15]) );
  AOI220 U191 ( .A(registers[31]), .B(n139), .C(registers[15]), .D(n141), .Q(
        n285) );
  AOI220 U192 ( .A(registers[63]), .B(n135), .C(registers[47]), .D(n137), .Q(
        n284) );
  AOI220 U193 ( .A(registers[95]), .B(n222), .C(registers[79]), .D(n223), .Q(
        n283) );
  NAND30 U194 ( .A(n286), .B(n287), .C(reg_a_idx_i[2]), .Q(n133) );
  NAND30 U195 ( .A(reg_a_idx_i[0]), .B(n287), .C(reg_a_idx_i[2]), .Q(n132) );
  CLKIN0 U196 ( .A(reg_a_idx_i[1]), .Q(n287) );
  AOI220 U197 ( .A(registers[127]), .B(n224), .C(registers[111]), .D(n225), 
        .Q(n282) );
  NAND30 U198 ( .A(reg_a_idx_i[1]), .B(n286), .C(reg_a_idx_i[2]), .Q(n131) );
  CLKIN0 U199 ( .A(reg_a_idx_i[0]), .Q(n286) );
  NAND30 U200 ( .A(reg_a_idx_i[1]), .B(reg_a_idx_i[0]), .C(reg_a_idx_i[2]), 
        .Q(n129) );
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
         res_v_6_, res_v_5_, res_v_4_, res_v_3_, res_v_2_, res_v_1_, n5, n6,
         n1, n2, n3, n4, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178;
  wire   [15:0] add_b;
  wire   SYNOPSYS_UNCONNECTED__0;

  alu_16_DW01_add_0 add_110 ( .A({n6, side_a_i, n5}), .B({n6, add_b, add_cin}), 
        .CI(n6), .SUM({res_v_17_, res_v_16_, res_v_15_, res_v_14_, res_v_13_, 
        res_v_12_, res_v_11_, res_v_10_, res_v_9_, res_v_8_, res_v_7_, 
        res_v_6_, res_v_5_, res_v_4_, res_v_3_, res_v_2_, res_v_1_, 
        SYNOPSYS_UNCONNECTED__0}) );
  NOR31 U3 ( .A(n150), .B(n151), .C(n152), .Q(n24) );
  NOR21 U4 ( .A(n147), .B(alu_func_i[1]), .Q(n163) );
  AOI211 U5 ( .A(alu_func_i[0]), .B(n145), .C(n146), .Q(n16) );
  INV3 U6 ( .A(n19), .Q(n25) );
  AOI211 U7 ( .A(n150), .B(n145), .C(n146), .Q(n26) );
  NAND22 U8 ( .A(n160), .B(alu_func_i[1]), .Q(n162) );
  NOR31 U9 ( .A(n151), .B(alu_func_i[0]), .C(n152), .Q(n19) );
  NAND22 U10 ( .A(n158), .B(alu_func_i[0]), .Q(n8) );
  NOR31 U11 ( .A(n150), .B(alu_func_i[2]), .C(n154), .Q(n160) );
  NOR31 U12 ( .A(alu_func_i[1]), .B(alu_func_i[3]), .C(n151), .Q(n18) );
  NAND22 U13 ( .A(n158), .B(n150), .Q(n21) );
  NAND22 U14 ( .A(n147), .B(n148), .Q(n12) );
  LOGIC0 U15 ( .Q(n6) );
  LOGIC1 U16 ( .Q(n5) );
  CLKIN0 U17 ( .A(n1), .Q(zero_o) );
  NAND40 U18 ( .A(n2), .B(n3), .C(n4), .D(n7), .Q(n1) );
  NOR40 U19 ( .A(result_o[9]), .B(result_o[8]), .C(result_o[7]), .D(
        result_o[6]), .Q(n7) );
  OAI2110 U20 ( .A(n8), .B(n9), .C(n10), .D(n11), .Q(result_o[6]) );
  AOI2110 U21 ( .A(res_v_7_), .B(n12), .C(n13), .D(n14), .Q(n11) );
  AOI210 U22 ( .A(n15), .B(n16), .C(n17), .Q(n14) );
  IMUX20 U23 ( .A(n18), .B(n19), .S(n20), .Q(n15) );
  NOR20 U24 ( .A(n21), .B(n22), .Q(n13) );
  IMUX20 U25 ( .A(n23), .B(n24), .S(n20), .Q(n10) );
  OAI210 U26 ( .A(side_b_i[6]), .B(n25), .C(n26), .Q(n23) );
  OAI2110 U27 ( .A(n27), .B(n8), .C(n28), .D(n29), .Q(result_o[7]) );
  AOI2110 U28 ( .A(res_v_8_), .B(n12), .C(n30), .D(n31), .Q(n29) );
  AOI210 U29 ( .A(n32), .B(n16), .C(n33), .Q(n31) );
  IMUX20 U30 ( .A(n18), .B(n19), .S(n9), .Q(n32) );
  NOR20 U31 ( .A(n21), .B(n20), .Q(n30) );
  IMUX20 U32 ( .A(n34), .B(n24), .S(n9), .Q(n28) );
  OAI210 U33 ( .A(side_b_i[7]), .B(n25), .C(n26), .Q(n34) );
  OAI2110 U34 ( .A(n35), .B(n8), .C(n36), .D(n37), .Q(result_o[8]) );
  AOI2110 U35 ( .A(res_v_9_), .B(n12), .C(n38), .D(n39), .Q(n37) );
  AOI210 U36 ( .A(n40), .B(n16), .C(n41), .Q(n39) );
  IMUX20 U37 ( .A(n18), .B(n19), .S(n27), .Q(n40) );
  NOR20 U38 ( .A(n21), .B(n9), .Q(n38) );
  CLKIN0 U39 ( .A(side_a_i[7]), .Q(n9) );
  IMUX20 U40 ( .A(n42), .B(n24), .S(n27), .Q(n36) );
  OAI210 U41 ( .A(side_b_i[8]), .B(n25), .C(n26), .Q(n42) );
  OAI2110 U42 ( .A(n8), .B(n43), .C(n44), .D(n45), .Q(result_o[9]) );
  AOI2110 U43 ( .A(res_v_10_), .B(n12), .C(n46), .D(n47), .Q(n45) );
  AOI210 U44 ( .A(n48), .B(n16), .C(n49), .Q(n47) );
  IMUX20 U45 ( .A(n18), .B(n19), .S(n35), .Q(n48) );
  NOR20 U46 ( .A(n21), .B(n27), .Q(n46) );
  CLKIN0 U47 ( .A(side_a_i[8]), .Q(n27) );
  IMUX20 U48 ( .A(n50), .B(n24), .S(n35), .Q(n44) );
  OAI210 U49 ( .A(side_b_i[9]), .B(n25), .C(n26), .Q(n50) );
  NOR40 U50 ( .A(result_o[5]), .B(result_o[4]), .C(result_o[3]), .D(
        result_o[2]), .Q(n4) );
  OAI2110 U51 ( .A(n8), .B(n51), .C(n52), .D(n53), .Q(result_o[2]) );
  AOI2110 U52 ( .A(res_v_3_), .B(n12), .C(n54), .D(n55), .Q(n53) );
  AOI210 U53 ( .A(n56), .B(n16), .C(n57), .Q(n55) );
  IMUX20 U54 ( .A(n18), .B(n19), .S(n58), .Q(n56) );
  NOR20 U55 ( .A(n21), .B(n59), .Q(n54) );
  IMUX20 U56 ( .A(n60), .B(n24), .S(n58), .Q(n52) );
  OAI210 U57 ( .A(side_b_i[2]), .B(n25), .C(n26), .Q(n60) );
  OAI2110 U58 ( .A(n8), .B(n61), .C(n62), .D(n63), .Q(result_o[3]) );
  AOI2110 U59 ( .A(res_v_4_), .B(n12), .C(n64), .D(n65), .Q(n63) );
  AOI210 U60 ( .A(n66), .B(n16), .C(n67), .Q(n65) );
  IMUX20 U61 ( .A(n18), .B(n19), .S(n51), .Q(n66) );
  NOR20 U62 ( .A(n21), .B(n58), .Q(n64) );
  IMUX20 U63 ( .A(n68), .B(n24), .S(n51), .Q(n62) );
  OAI210 U64 ( .A(side_b_i[3]), .B(n25), .C(n26), .Q(n68) );
  OAI2110 U65 ( .A(n8), .B(n22), .C(n69), .D(n70), .Q(result_o[4]) );
  AOI2110 U66 ( .A(res_v_5_), .B(n12), .C(n71), .D(n72), .Q(n70) );
  AOI210 U67 ( .A(n73), .B(n16), .C(n74), .Q(n72) );
  IMUX20 U68 ( .A(n18), .B(n19), .S(n61), .Q(n73) );
  NOR20 U69 ( .A(n21), .B(n51), .Q(n71) );
  CLKIN0 U70 ( .A(side_a_i[3]), .Q(n51) );
  IMUX20 U71 ( .A(n75), .B(n24), .S(n61), .Q(n69) );
  OAI210 U72 ( .A(side_b_i[4]), .B(n25), .C(n26), .Q(n75) );
  OAI2110 U73 ( .A(n8), .B(n20), .C(n76), .D(n77), .Q(result_o[5]) );
  AOI2110 U74 ( .A(res_v_6_), .B(n12), .C(n78), .D(n79), .Q(n77) );
  AOI210 U75 ( .A(n80), .B(n16), .C(n81), .Q(n79) );
  IMUX20 U76 ( .A(n18), .B(n19), .S(n22), .Q(n80) );
  NOR20 U77 ( .A(n21), .B(n61), .Q(n78) );
  CLKIN0 U78 ( .A(side_a_i[4]), .Q(n61) );
  IMUX20 U79 ( .A(n82), .B(n24), .S(n22), .Q(n76) );
  CLKIN0 U80 ( .A(side_a_i[5]), .Q(n22) );
  OAI210 U81 ( .A(side_b_i[5]), .B(n25), .C(n26), .Q(n82) );
  CLKIN0 U82 ( .A(side_a_i[6]), .Q(n20) );
  NOR40 U83 ( .A(result_o[1]), .B(result_o[15]), .C(result_o[14]), .D(
        result_o[13]), .Q(n3) );
  OAI2110 U84 ( .A(n8), .B(n83), .C(n84), .D(n85), .Q(result_o[13]) );
  AOI2110 U85 ( .A(res_v_14_), .B(n12), .C(n86), .D(n87), .Q(n85) );
  AOI210 U86 ( .A(n88), .B(n16), .C(n89), .Q(n87) );
  IMUX20 U87 ( .A(n18), .B(n19), .S(n90), .Q(n88) );
  NOR20 U88 ( .A(n21), .B(n91), .Q(n86) );
  IMUX20 U89 ( .A(n92), .B(n24), .S(n90), .Q(n84) );
  OAI210 U90 ( .A(side_b_i[13]), .B(n25), .C(n26), .Q(n92) );
  OAI2110 U91 ( .A(n8), .B(n93), .C(n94), .D(n95), .Q(result_o[14]) );
  AOI2110 U92 ( .A(res_v_15_), .B(n12), .C(n96), .D(n97), .Q(n95) );
  AOI210 U93 ( .A(n98), .B(n16), .C(n99), .Q(n97) );
  IMUX20 U94 ( .A(n18), .B(n19), .S(n83), .Q(n98) );
  NOR20 U95 ( .A(n21), .B(n90), .Q(n96) );
  IMUX20 U96 ( .A(n100), .B(n24), .S(n83), .Q(n94) );
  OAI210 U97 ( .A(side_b_i[14]), .B(n25), .C(n26), .Q(n100) );
  OAI2110 U98 ( .A(n8), .B(n101), .C(n102), .D(n103), .Q(result_o[15]) );
  AOI2110 U99 ( .A(res_v_16_), .B(n12), .C(n104), .D(n105), .Q(n103) );
  AOI210 U100 ( .A(n106), .B(n16), .C(n107), .Q(n105) );
  IMUX20 U101 ( .A(n18), .B(n19), .S(n93), .Q(n106) );
  NOR20 U102 ( .A(n21), .B(n83), .Q(n104) );
  CLKIN0 U103 ( .A(side_a_i[14]), .Q(n83) );
  IMUX20 U104 ( .A(n108), .B(n24), .S(n93), .Q(n102) );
  OAI210 U105 ( .A(side_b_i[15]), .B(n25), .C(n26), .Q(n108) );
  OAI2110 U106 ( .A(n8), .B(n58), .C(n109), .D(n110), .Q(result_o[1]) );
  AOI2110 U107 ( .A(res_v_2_), .B(n12), .C(n111), .D(n112), .Q(n110) );
  AOI210 U108 ( .A(n113), .B(n16), .C(n114), .Q(n112) );
  IMUX20 U109 ( .A(n18), .B(n19), .S(n59), .Q(n113) );
  NOR20 U110 ( .A(n21), .B(n115), .Q(n111) );
  IMUX20 U111 ( .A(n116), .B(n24), .S(n59), .Q(n109) );
  OAI210 U112 ( .A(side_b_i[1]), .B(n25), .C(n26), .Q(n116) );
  CLKIN0 U113 ( .A(side_a_i[2]), .Q(n58) );
  NOR40 U114 ( .A(result_o[12]), .B(result_o[11]), .C(result_o[10]), .D(
        result_o[0]), .Q(n2) );
  OAI2110 U115 ( .A(n8), .B(n59), .C(n117), .D(n118), .Q(result_o[0]) );
  AOI2110 U116 ( .A(res_v_1_), .B(n12), .C(n119), .D(n120), .Q(n118) );
  AOI210 U117 ( .A(n121), .B(n16), .C(n122), .Q(n120) );
  IMUX20 U118 ( .A(n19), .B(n18), .S(side_a_i[0]), .Q(n121) );
  NOR20 U119 ( .A(n21), .B(n101), .Q(n119) );
  CLKIN0 U120 ( .A(carry_i), .Q(n101) );
  IMUX20 U121 ( .A(n24), .B(n123), .S(side_a_i[0]), .Q(n117) );
  OAI210 U122 ( .A(side_b_i[0]), .B(n25), .C(n26), .Q(n123) );
  CLKIN0 U123 ( .A(side_a_i[1]), .Q(n59) );
  OAI2110 U124 ( .A(n8), .B(n124), .C(n125), .D(n126), .Q(result_o[10]) );
  AOI2110 U125 ( .A(res_v_11_), .B(n12), .C(n127), .D(n128), .Q(n126) );
  AOI210 U126 ( .A(n129), .B(n16), .C(n130), .Q(n128) );
  IMUX20 U127 ( .A(n18), .B(n19), .S(n43), .Q(n129) );
  NOR20 U128 ( .A(n35), .B(n21), .Q(n127) );
  CLKIN0 U129 ( .A(side_a_i[9]), .Q(n35) );
  IMUX20 U130 ( .A(n131), .B(n24), .S(n43), .Q(n125) );
  OAI210 U131 ( .A(side_b_i[10]), .B(n25), .C(n26), .Q(n131) );
  OAI2110 U132 ( .A(n8), .B(n91), .C(n132), .D(n133), .Q(result_o[11]) );
  AOI2110 U133 ( .A(res_v_12_), .B(n12), .C(n134), .D(n135), .Q(n133) );
  AOI210 U134 ( .A(n136), .B(n16), .C(n137), .Q(n135) );
  IMUX20 U135 ( .A(n18), .B(n19), .S(n124), .Q(n136) );
  NOR20 U136 ( .A(n21), .B(n43), .Q(n134) );
  CLKIN0 U137 ( .A(side_a_i[10]), .Q(n43) );
  IMUX20 U138 ( .A(n138), .B(n24), .S(n124), .Q(n132) );
  OAI210 U139 ( .A(side_b_i[11]), .B(n25), .C(n26), .Q(n138) );
  OAI2110 U140 ( .A(n8), .B(n90), .C(n139), .D(n140), .Q(result_o[12]) );
  AOI2110 U141 ( .A(res_v_13_), .B(n12), .C(n141), .D(n142), .Q(n140) );
  AOI210 U142 ( .A(n143), .B(n16), .C(n144), .Q(n142) );
  IMUX20 U143 ( .A(n18), .B(n19), .S(n91), .Q(n143) );
  NOR20 U144 ( .A(n21), .B(n124), .Q(n141) );
  CLKIN0 U145 ( .A(side_a_i[11]), .Q(n124) );
  IMUX20 U146 ( .A(n149), .B(n24), .S(n91), .Q(n139) );
  CLKIN0 U147 ( .A(side_a_i[12]), .Q(n91) );
  OAI210 U148 ( .A(side_b_i[12]), .B(n25), .C(n26), .Q(n149) );
  CLKIN0 U149 ( .A(n153), .Q(n146) );
  NAND20 U150 ( .A(alu_func_i[0]), .B(n18), .Q(n153) );
  NOR20 U151 ( .A(n152), .B(alu_func_i[2]), .Q(n145) );
  NAND20 U152 ( .A(alu_func_i[1]), .B(n154), .Q(n152) );
  CLKIN0 U153 ( .A(side_a_i[13]), .Q(n90) );
  NAND20 U154 ( .A(n155), .B(n156), .Q(carry_o) );
  MUX21 U155 ( .A(n148), .B(n147), .S(res_v_17_), .Q(n156) );
  CLKIN0 U156 ( .A(n157), .Q(n155) );
  OAI220 U157 ( .A(n93), .B(n21), .C(n115), .D(n8), .Q(n157) );
  CLKIN0 U158 ( .A(side_a_i[0]), .Q(n115) );
  NOR30 U159 ( .A(n151), .B(alu_func_i[1]), .C(n154), .Q(n158) );
  CLKIN0 U160 ( .A(side_a_i[15]), .Q(n93) );
  IMUX20 U161 ( .A(n147), .B(n148), .S(n159), .Q(add_cin) );
  NOR20 U162 ( .A(alu_func_i[1]), .B(carry_i), .Q(n159) );
  CLKIN0 U163 ( .A(n160), .Q(n148) );
  NAND20 U164 ( .A(n161), .B(n162), .Q(add_b[9]) );
  IMUX20 U165 ( .A(n163), .B(n160), .S(n49), .Q(n161) );
  CLKIN0 U166 ( .A(side_b_i[9]), .Q(n49) );
  NAND20 U167 ( .A(n164), .B(n162), .Q(add_b[8]) );
  IMUX20 U168 ( .A(n163), .B(n160), .S(n41), .Q(n164) );
  CLKIN0 U169 ( .A(side_b_i[8]), .Q(n41) );
  NAND20 U170 ( .A(n165), .B(n162), .Q(add_b[7]) );
  IMUX20 U171 ( .A(n163), .B(n160), .S(n33), .Q(n165) );
  CLKIN0 U172 ( .A(side_b_i[7]), .Q(n33) );
  NAND20 U173 ( .A(n166), .B(n162), .Q(add_b[6]) );
  IMUX20 U174 ( .A(n163), .B(n160), .S(n17), .Q(n166) );
  CLKIN0 U175 ( .A(side_b_i[6]), .Q(n17) );
  NAND20 U176 ( .A(n167), .B(n162), .Q(add_b[5]) );
  IMUX20 U177 ( .A(n163), .B(n160), .S(n81), .Q(n167) );
  CLKIN0 U178 ( .A(side_b_i[5]), .Q(n81) );
  NAND20 U179 ( .A(n168), .B(n162), .Q(add_b[4]) );
  IMUX20 U180 ( .A(n163), .B(n160), .S(n74), .Q(n168) );
  CLKIN0 U181 ( .A(side_b_i[4]), .Q(n74) );
  NAND20 U182 ( .A(n169), .B(n162), .Q(add_b[3]) );
  IMUX20 U183 ( .A(n163), .B(n160), .S(n67), .Q(n169) );
  CLKIN0 U184 ( .A(side_b_i[3]), .Q(n67) );
  NAND20 U185 ( .A(n170), .B(n162), .Q(add_b[2]) );
  IMUX20 U186 ( .A(n163), .B(n160), .S(n57), .Q(n170) );
  CLKIN0 U187 ( .A(side_b_i[2]), .Q(n57) );
  NAND20 U188 ( .A(n171), .B(n162), .Q(add_b[1]) );
  IMUX20 U189 ( .A(n163), .B(n160), .S(n114), .Q(n171) );
  CLKIN0 U190 ( .A(side_b_i[1]), .Q(n114) );
  NAND20 U191 ( .A(n172), .B(n162), .Q(add_b[15]) );
  IMUX20 U192 ( .A(n163), .B(n160), .S(n107), .Q(n172) );
  CLKIN0 U193 ( .A(side_b_i[15]), .Q(n107) );
  NAND20 U194 ( .A(n173), .B(n162), .Q(add_b[14]) );
  IMUX20 U195 ( .A(n163), .B(n160), .S(n99), .Q(n173) );
  CLKIN0 U196 ( .A(side_b_i[14]), .Q(n99) );
  NAND20 U197 ( .A(n174), .B(n162), .Q(add_b[13]) );
  IMUX20 U198 ( .A(n163), .B(n160), .S(n89), .Q(n174) );
  CLKIN0 U199 ( .A(side_b_i[13]), .Q(n89) );
  NAND20 U200 ( .A(n175), .B(n162), .Q(add_b[12]) );
  IMUX20 U201 ( .A(n163), .B(n160), .S(n144), .Q(n175) );
  CLKIN0 U202 ( .A(side_b_i[12]), .Q(n144) );
  NAND20 U203 ( .A(n176), .B(n162), .Q(add_b[11]) );
  IMUX20 U204 ( .A(n163), .B(n160), .S(n137), .Q(n176) );
  CLKIN0 U205 ( .A(side_b_i[11]), .Q(n137) );
  NAND20 U206 ( .A(n177), .B(n162), .Q(add_b[10]) );
  IMUX20 U207 ( .A(n163), .B(n160), .S(n130), .Q(n177) );
  CLKIN0 U208 ( .A(side_b_i[10]), .Q(n130) );
  NAND20 U209 ( .A(n178), .B(n162), .Q(add_b[0]) );
  IMUX20 U210 ( .A(n163), .B(n160), .S(n122), .Q(n178) );
  CLKIN0 U211 ( .A(side_b_i[0]), .Q(n122) );
  CLKIN0 U212 ( .A(alu_func_i[3]), .Q(n154) );
  NAND30 U213 ( .A(n150), .B(n151), .C(alu_func_i[3]), .Q(n147) );
  CLKIN0 U214 ( .A(alu_func_i[2]), .Q(n151) );
  CLKIN0 U215 ( .A(alu_func_i[0]), .Q(n150) );
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
  wire   n93, NextMemRead, NextMemWrite, NextCpuHalt, NextIllegalInst, n16,
         n17, n18, n19, n49, n98, n99, n100, n1, n2, n3, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88;

  DFC3 Cycle_reg_0_ ( .D(n100), .C(clk_i), .RN(res_i), .Q(n2), .QN(n18) );
  DFC3 IllegalInst_reg ( .D(NextIllegalInst), .C(clk_i), .RN(res_i), .Q(
        illegal_inst_o), .QN(n8) );
  DFC3 Cycle_reg_2_ ( .D(n99), .C(clk_i), .RN(res_i), .Q(n1), .QN(n16) );
  DFC3 Cycle_reg_1_ ( .D(n98), .C(clk_i), .RN(res_i), .Q(n3), .QN(n17) );
  DFC3 mem_rd_stb_o_reg ( .D(NextMemRead), .C(clk_i), .RN(res_i), .Q(
        mem_rd_stb_o) );
  DFC3 mem_wr_stb_o_reg ( .D(NextMemWrite), .C(clk_i), .RN(res_i), .Q(
        mem_wr_stb_o) );
  DFC3 cpu_halt_o_reg ( .D(NextCpuHalt), .C(clk_i), .RN(res_i), .Q(cpu_halt_o)
         );
  DFEC1 Carry_reg ( .D(carry_i), .E(n49), .C(clk_i), .RN(res_i), .QN(n19) );
  DFEC1 Zero_reg ( .D(zero_i), .E(n49), .C(clk_i), .RN(res_i), .QN(n7) );
  OAI212 U3 ( .A(n51), .B(n38), .C(n46), .Q(clk_en_op_code_o) );
  OAI212 U4 ( .A(n41), .B(n10), .C(n11), .Q(clk_en_pc_o) );
  NOR22 U5 ( .A(n36), .B(n25), .Q(sel_load_o) );
  OAI222 U6 ( .A(n23), .B(n24), .C(n25), .D(n26), .Q(sel_addr_o) );
  BUF2 U7 ( .A(n93), .Q(sel_pc_o) );
  OAI2111 U8 ( .A(n9), .B(n10), .C(n11), .D(n12), .Q(n93) );
  NOR40 U9 ( .A(n13), .B(n14), .C(n15), .D(n20), .Q(n9) );
  NOR20 U10 ( .A(n21), .B(n22), .Q(n15) );
  IMUX20 U11 ( .A(n19), .B(n7), .S(op_code_i[0]), .Q(n22) );
  NAND30 U12 ( .A(n10), .B(n11), .C(n27), .Q(alu_func_o[1]) );
  AOI220 U13 ( .A(n28), .B(n29), .C(n30), .D(n31), .Q(n27) );
  OAI2110 U14 ( .A(n16), .B(n32), .C(n33), .D(n34), .Q(n99) );
  CLKIN0 U15 ( .A(n35), .Q(n33) );
  AOI2110 U16 ( .A(n26), .B(n36), .C(op_code_i[5]), .D(n37), .Q(n35) );
  OAI210 U17 ( .A(n8), .B(n38), .C(n39), .Q(n98) );
  CLKIN0 U18 ( .A(n40), .Q(n39) );
  OAI220 U19 ( .A(n32), .B(n17), .C(n10), .D(n41), .Q(n40) );
  AOI310 U20 ( .A(n42), .B(n43), .C(n44), .D(n37), .Q(n49) );
  AOI210 U21 ( .A(op_code_i[1]), .B(op_code_i[2]), .C(n45), .Q(n44) );
  NAND30 U22 ( .A(n46), .B(n47), .C(n48), .Q(n100) );
  CLKIN0 U23 ( .A(n50), .Q(n48) );
  OAI220 U24 ( .A(n32), .B(n18), .C(n37), .D(n51), .Q(n50) );
  AOI220 U25 ( .A(n3), .B(n1), .C(n2), .D(n52), .Q(n32) );
  AOI210 U26 ( .A(n53), .B(n36), .C(n37), .Q(clk_en_reg_file_o) );
  NAND20 U27 ( .A(n8), .B(n30), .Q(n37) );
  CLKIN0 U28 ( .A(n54), .Q(n53) );
  NOR20 U29 ( .A(n55), .B(n13), .Q(n41) );
  NAND30 U30 ( .A(n17), .B(n1), .C(n18), .Q(n46) );
  AOI2110 U31 ( .A(n56), .B(n57), .C(op_code_i[3]), .D(n54), .Q(n51) );
  NAND40 U32 ( .A(n58), .B(n59), .C(n60), .D(n61), .Q(n54) );
  NOR20 U33 ( .A(op_code_i[5]), .B(n45), .Q(n60) );
  OAI210 U34 ( .A(op_code_i[4]), .B(op_code_i[2]), .C(op_code_i[1]), .Q(n58)
         );
  AOI2110 U35 ( .A(n62), .B(n63), .C(n25), .D(n19), .Q(carry_o) );
  NAND30 U36 ( .A(op_code_i[4]), .B(op_code_i[1]), .C(n64), .Q(n63) );
  NAND20 U37 ( .A(n65), .B(op_code_i[0]), .Q(n62) );
  NAND30 U38 ( .A(n10), .B(n11), .C(n66), .Q(alu_func_o[3]) );
  AOI220 U39 ( .A(n28), .B(n67), .C(n65), .D(n30), .Q(n66) );
  OAI210 U40 ( .A(n45), .B(n68), .C(n61), .Q(n67) );
  CLKIN0 U41 ( .A(n69), .Q(n28) );
  NAND20 U42 ( .A(sel_load_o), .B(n23), .Q(n11) );
  OAI220 U43 ( .A(n69), .B(n61), .C(n59), .D(n70), .Q(alu_func_o[2]) );
  NAND20 U44 ( .A(n30), .B(n56), .Q(n70) );
  NAND20 U45 ( .A(op_code_i[4]), .B(n30), .Q(n69) );
  AOI310 U46 ( .A(n71), .B(n72), .C(n73), .D(n38), .Q(alu_func_o[0]) );
  AOI220 U47 ( .A(op_code_i[4]), .B(n74), .C(n65), .D(op_code_i[1]), .Q(n73)
         );
  NOR20 U48 ( .A(n59), .B(n56), .Q(n65) );
  OAI210 U49 ( .A(n23), .B(n61), .C(n75), .Q(n74) );
  NAND30 U50 ( .A(op_code_i[3]), .B(n56), .C(n57), .Q(n75) );
  CLKIN0 U51 ( .A(n76), .Q(n57) );
  CLKIN0 U52 ( .A(n77), .Q(n72) );
  NOR20 U53 ( .A(n59), .B(n78), .Q(n77) );
  NAND20 U54 ( .A(op_code_i[4]), .B(n68), .Q(n59) );
  CLKIN0 U55 ( .A(n31), .Q(n71) );
  OAI310 U56 ( .A(n61), .B(op_code_i[4]), .C(n76), .D(n79), .Q(n31) );
  NAND30 U57 ( .A(op_code_i[4]), .B(op_code_i[0]), .C(n29), .Q(n79) );
  NOR30 U58 ( .A(n26), .B(op_code_i[5]), .C(n10), .Q(NextMemWrite) );
  CLKIN0 U59 ( .A(n80), .Q(n10) );
  CLKIN0 U60 ( .A(n13), .Q(n26) );
  NAND40 U61 ( .A(n81), .B(n82), .C(n34), .D(n24), .Q(NextMemRead) );
  CLKIN0 U62 ( .A(sel_load_o), .Q(n24) );
  CLKIN0 U63 ( .A(n83), .Q(n25) );
  NAND30 U64 ( .A(n68), .B(n42), .C(n29), .Q(n36) );
  NOR20 U65 ( .A(n21), .B(op_code_i[2]), .Q(n29) );
  CLKIN0 U66 ( .A(n84), .Q(n34) );
  NOR20 U67 ( .A(n2), .B(n52), .Q(n84) );
  OAI210 U68 ( .A(n14), .B(n55), .C(n80), .Q(n82) );
  CLKIN0 U69 ( .A(n85), .Q(n55) );
  NOR30 U70 ( .A(n86), .B(op_code_i[3]), .C(n20), .Q(n85) );
  OAI2110 U71 ( .A(n45), .B(n87), .C(n61), .D(n42), .Q(n20) );
  CLKIN0 U72 ( .A(n64), .Q(n61) );
  NOR20 U73 ( .A(n68), .B(n56), .Q(n64) );
  NAND20 U74 ( .A(n56), .B(n68), .Q(n87) );
  NAND20 U75 ( .A(n13), .B(n83), .Q(n81) );
  NOR20 U76 ( .A(n38), .B(op_code_i[5]), .Q(n83) );
  CLKIN0 U77 ( .A(n30), .Q(n38) );
  NOR30 U78 ( .A(n1), .B(n17), .C(n2), .Q(n30) );
  NOR40 U79 ( .A(n76), .B(n56), .C(op_code_i[3]), .D(op_code_i[4]), .Q(n13) );
  CLKIN0 U80 ( .A(n12), .Q(NextIllegalInst) );
  OAI210 U81 ( .A(reg_decode_error_i), .B(n86), .C(n80), .Q(n12) );
  OAI210 U82 ( .A(n78), .B(n68), .C(n88), .Q(n86) );
  AOI310 U83 ( .A(n76), .B(n42), .C(op_code_i[2]), .D(op_code_i[5]), .Q(n88)
         );
  CLKIN0 U84 ( .A(op_code_i[4]), .Q(n42) );
  NAND20 U85 ( .A(n21), .B(n23), .Q(n76) );
  CLKIN0 U86 ( .A(op_code_i[1]), .Q(n21) );
  CLKIN0 U87 ( .A(op_code_i[3]), .Q(n68) );
  CLKIN0 U88 ( .A(n47), .Q(NextCpuHalt) );
  NAND30 U89 ( .A(n80), .B(n43), .C(n14), .Q(n47) );
  NOR30 U90 ( .A(op_code_i[3]), .B(op_code_i[4]), .C(n78), .Q(n14) );
  NAND20 U91 ( .A(n45), .B(n56), .Q(n78) );
  CLKIN0 U92 ( .A(op_code_i[2]), .Q(n56) );
  NOR20 U93 ( .A(n23), .B(op_code_i[1]), .Q(n45) );
  CLKIN0 U94 ( .A(op_code_i[0]), .Q(n23) );
  CLKIN0 U95 ( .A(op_code_i[5]), .Q(n43) );
  NOR20 U96 ( .A(n52), .B(n18), .Q(n80) );
  NAND20 U97 ( .A(n17), .B(n16), .Q(n52) );
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
  wire   N11, N12, N13, N14, N17, N18, N19, N20, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n105, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;
  wire   [15:0] AluSideA;
  wire   [15:0] RegTmpB;
  wire   [15:0] AluResult;
  wire   [3:0] RegAIdx;
  wire   [3:0] RegBIdx;
  wire   [15:0] Load;
  wire   [15:0] RaValue;
  wire   [15:0] RbValue;
  wire   [15:0] Pc;

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
        .reg_b_idx_i(RegBIdx), .clk_en_reg_file_i(clk_en_reg_file_i), .reg_i(
        Load), .reg_a_o(RaValue), .reg_b_o(RbValue) );
  DFEC1 RegPC_reg_14_ ( .D(Pc[14]), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), 
        .QN(n105) );
  DFEC1 RegPC_reg_15_ ( .D(Pc[15]), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), 
        .QN(n10) );
  DFEC1 RegPC_reg_0_ ( .D(n64), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(
        n15) );
  DFEC1 RegPC_reg_1_ ( .D(n63), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(n9) );
  DFEC1 RegPC_reg_2_ ( .D(n62), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(n8) );
  DFEC1 RegPC_reg_3_ ( .D(n61), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(n7) );
  DFEC1 RegPC_reg_4_ ( .D(Pc[4]), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(
        n6) );
  DFEC1 RegPC_reg_5_ ( .D(n60), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(n5) );
  DFEC1 RegPC_reg_6_ ( .D(n59), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(n4) );
  DFEC1 RegPC_reg_7_ ( .D(n58), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(n3) );
  DFEC1 RegPC_reg_8_ ( .D(n57), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(n2) );
  DFEC1 RegPC_reg_9_ ( .D(Pc[9]), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), .QN(
        n1) );
  DFEC1 RegPC_reg_10_ ( .D(Pc[10]), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), 
        .QN(n14) );
  DFEC1 RegPC_reg_11_ ( .D(Pc[11]), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), 
        .QN(n13) );
  DFEC1 RegPC_reg_12_ ( .D(Pc[12]), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), 
        .QN(n12) );
  DFEC1 RegPC_reg_13_ ( .D(Pc[13]), .E(clk_en_pc_i), .C(clk_i), .RN(res_i), 
        .QN(n11) );
  DFEP1 RegBIdx_reg_3_ ( .D(N20), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegBIdx[3]) );
  DFEP1 RegAIdx_reg_3_ ( .D(N14), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegAIdx[3]) );
  DFEC1 RegOpcode_reg_0_ ( .D(mem_data_i[10]), .E(clk_en_op_code_i), .C(clk_i), 
        .RN(res_i), .Q(op_code_o[0]) );
  DFEC1 RegOpcode_reg_2_ ( .D(mem_data_i[12]), .E(clk_en_op_code_i), .C(clk_i), 
        .RN(res_i), .Q(op_code_o[2]) );
  DFEP1 RegAIdx_reg_1_ ( .D(N12), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegAIdx[1]) );
  DFEP1 RegAIdx_reg_0_ ( .D(N11), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegAIdx[0]) );
  DFEC1 RegOpcode_reg_1_ ( .D(mem_data_i[11]), .E(clk_en_op_code_i), .C(clk_i), 
        .RN(res_i), .Q(op_code_o[1]) );
  DFEC1 RegOpcode_reg_5_ ( .D(mem_data_i[15]), .E(clk_en_op_code_i), .C(clk_i), 
        .RN(res_i), .Q(op_code_o[5]) );
  DFEP1 RegBIdx_reg_0_ ( .D(N17), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegBIdx[0]) );
  DFEC1 RegOpcode_reg_3_ ( .D(mem_data_i[13]), .E(clk_en_op_code_i), .C(clk_i), 
        .RN(res_i), .Q(op_code_o[3]) );
  DFEP1 RegBIdx_reg_1_ ( .D(N18), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegBIdx[1]) );
  DFEP1 RegBIdx_reg_2_ ( .D(N19), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegBIdx[2]) );
  DFEP1 RegAIdx_reg_2_ ( .D(N13), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegAIdx[2]) );
  DFEC1 RegOpcode_reg_4_ ( .D(mem_data_i[14]), .E(clk_en_op_code_i), .C(clk_i), 
        .RN(res_i), .Q(op_code_o[4]) );
  MUX21 U3 ( .A(RaValue[8]), .B(AluResult[8]), .S(sel_pc_i), .Q(n57) );
  MUX21 U4 ( .A(RaValue[7]), .B(AluResult[7]), .S(sel_pc_i), .Q(n58) );
  MUX21 U5 ( .A(RaValue[6]), .B(AluResult[6]), .S(sel_pc_i), .Q(n59) );
  MUX21 U6 ( .A(RaValue[5]), .B(AluResult[5]), .S(sel_pc_i), .Q(n60) );
  MUX21 U7 ( .A(RaValue[3]), .B(AluResult[3]), .S(sel_pc_i), .Q(n61) );
  MUX21 U8 ( .A(RaValue[2]), .B(AluResult[2]), .S(sel_pc_i), .Q(n62) );
  MUX21 U9 ( .A(RaValue[1]), .B(AluResult[1]), .S(sel_pc_i), .Q(n63) );
  MUX21 U10 ( .A(RaValue[0]), .B(AluResult[0]), .S(sel_pc_i), .Q(n64) );
  IMUX20 U11 ( .A(n1), .B(n37), .S(sel_addr_i), .Q(mem_addr_o[9]) );
  IMUX20 U12 ( .A(n2), .B(n38), .S(sel_addr_i), .Q(mem_addr_o[8]) );
  IMUX20 U13 ( .A(n3), .B(n39), .S(sel_addr_i), .Q(mem_addr_o[7]) );
  IMUX20 U14 ( .A(n4), .B(n40), .S(sel_addr_i), .Q(mem_addr_o[6]) );
  IMUX20 U15 ( .A(n5), .B(n41), .S(sel_addr_i), .Q(mem_addr_o[5]) );
  IMUX20 U16 ( .A(n6), .B(n42), .S(sel_addr_i), .Q(mem_addr_o[4]) );
  IMUX20 U17 ( .A(n7), .B(n43), .S(sel_addr_i), .Q(mem_addr_o[3]) );
  IMUX20 U18 ( .A(n8), .B(n44), .S(sel_addr_i), .Q(mem_addr_o[2]) );
  IMUX20 U19 ( .A(n9), .B(n45), .S(sel_addr_i), .Q(mem_addr_o[1]) );
  IMUX20 U20 ( .A(n10), .B(n31), .S(sel_addr_i), .Q(mem_addr_o[15]) );
  IMUX20 U21 ( .A(n105), .B(n32), .S(sel_addr_i), .Q(mem_addr_o[14]) );
  IMUX20 U22 ( .A(n11), .B(n33), .S(sel_addr_i), .Q(mem_addr_o[13]) );
  IMUX20 U23 ( .A(n12), .B(n34), .S(sel_addr_i), .Q(mem_addr_o[12]) );
  IMUX20 U24 ( .A(n13), .B(n35), .S(sel_addr_i), .Q(mem_addr_o[11]) );
  IMUX20 U25 ( .A(n14), .B(n36), .S(sel_addr_i), .Q(mem_addr_o[10]) );
  IMUX20 U26 ( .A(n15), .B(n46), .S(sel_addr_i), .Q(mem_addr_o[0]) );
  MUX21 U27 ( .A(RaValue[9]), .B(AluResult[9]), .S(sel_pc_i), .Q(Pc[9]) );
  MUX21 U28 ( .A(RaValue[4]), .B(AluResult[4]), .S(sel_pc_i), .Q(Pc[4]) );
  MUX21 U29 ( .A(RaValue[15]), .B(AluResult[15]), .S(sel_pc_i), .Q(Pc[15]) );
  MUX21 U30 ( .A(RaValue[14]), .B(AluResult[14]), .S(sel_pc_i), .Q(Pc[14]) );
  MUX21 U31 ( .A(RaValue[13]), .B(AluResult[13]), .S(sel_pc_i), .Q(Pc[13]) );
  MUX21 U32 ( .A(RaValue[12]), .B(AluResult[12]), .S(sel_pc_i), .Q(Pc[12]) );
  MUX21 U33 ( .A(RaValue[11]), .B(AluResult[11]), .S(sel_pc_i), .Q(Pc[11]) );
  MUX21 U34 ( .A(RaValue[10]), .B(AluResult[10]), .S(sel_pc_i), .Q(Pc[10]) );
  NAND20 U35 ( .A(n47), .B(n48), .Q(reg_decode_error_o) );
  NAND40 U36 ( .A(RegBIdx[0]), .B(RegBIdx[1]), .C(RegBIdx[2]), .D(RegBIdx[3]), 
        .Q(n48) );
  NAND40 U37 ( .A(RegAIdx[0]), .B(RegAIdx[1]), .C(RegAIdx[2]), .D(RegAIdx[3]), 
        .Q(n47) );
  CLKIN0 U38 ( .A(n49), .Q(N20) );
  NAND20 U39 ( .A(n49), .B(n50), .Q(N19) );
  CLKIN0 U40 ( .A(mem_data_i[2]), .Q(n50) );
  NAND20 U41 ( .A(n49), .B(n51), .Q(N18) );
  CLKIN0 U42 ( .A(mem_data_i[1]), .Q(n51) );
  NAND20 U43 ( .A(n49), .B(n52), .Q(N17) );
  CLKIN0 U44 ( .A(mem_data_i[0]), .Q(n52) );
  NOR20 U45 ( .A(mem_data_i[4]), .B(mem_data_i[3]), .Q(n49) );
  CLKIN0 U46 ( .A(n53), .Q(N14) );
  NAND20 U47 ( .A(n53), .B(n54), .Q(N13) );
  CLKIN0 U48 ( .A(mem_data_i[7]), .Q(n54) );
  NAND20 U49 ( .A(n53), .B(n55), .Q(N12) );
  CLKIN0 U50 ( .A(mem_data_i[6]), .Q(n55) );
  NAND20 U51 ( .A(n53), .B(n56), .Q(N11) );
  CLKIN0 U52 ( .A(mem_data_i[5]), .Q(n56) );
  NOR20 U53 ( .A(mem_data_i[9]), .B(mem_data_i[8]), .Q(n53) );
  MUX21 U54 ( .A(AluResult[9]), .B(mem_data_i[9]), .S(sel_load_i), .Q(Load[9])
         );
  MUX21 U55 ( .A(AluResult[8]), .B(mem_data_i[8]), .S(sel_load_i), .Q(Load[8])
         );
  MUX21 U56 ( .A(AluResult[7]), .B(mem_data_i[7]), .S(sel_load_i), .Q(Load[7])
         );
  MUX21 U57 ( .A(AluResult[6]), .B(mem_data_i[6]), .S(sel_load_i), .Q(Load[6])
         );
  MUX21 U58 ( .A(AluResult[5]), .B(mem_data_i[5]), .S(sel_load_i), .Q(Load[5])
         );
  MUX21 U59 ( .A(AluResult[4]), .B(mem_data_i[4]), .S(sel_load_i), .Q(Load[4])
         );
  MUX21 U60 ( .A(AluResult[3]), .B(mem_data_i[3]), .S(sel_load_i), .Q(Load[3])
         );
  MUX21 U61 ( .A(AluResult[2]), .B(mem_data_i[2]), .S(sel_load_i), .Q(Load[2])
         );
  MUX21 U62 ( .A(AluResult[1]), .B(mem_data_i[1]), .S(sel_load_i), .Q(Load[1])
         );
  MUX21 U63 ( .A(AluResult[15]), .B(mem_data_i[15]), .S(sel_load_i), .Q(
        Load[15]) );
  MUX21 U64 ( .A(AluResult[14]), .B(mem_data_i[14]), .S(sel_load_i), .Q(
        Load[14]) );
  MUX21 U65 ( .A(AluResult[13]), .B(mem_data_i[13]), .S(sel_load_i), .Q(
        Load[13]) );
  MUX21 U66 ( .A(AluResult[12]), .B(mem_data_i[12]), .S(sel_load_i), .Q(
        Load[12]) );
  MUX21 U67 ( .A(AluResult[11]), .B(mem_data_i[11]), .S(sel_load_i), .Q(
        Load[11]) );
  MUX21 U68 ( .A(AluResult[10]), .B(mem_data_i[10]), .S(sel_load_i), .Q(
        Load[10]) );
  MUX21 U69 ( .A(AluResult[0]), .B(mem_data_i[0]), .S(sel_load_i), .Q(Load[0])
         );
  IMUX20 U70 ( .A(n94), .B(n1), .S(sel_pc_i), .Q(AluSideA[9]) );
  IMUX20 U71 ( .A(n95), .B(n2), .S(sel_pc_i), .Q(AluSideA[8]) );
  IMUX20 U72 ( .A(n96), .B(n3), .S(sel_pc_i), .Q(AluSideA[7]) );
  IMUX20 U73 ( .A(n97), .B(n4), .S(sel_pc_i), .Q(AluSideA[6]) );
  IMUX20 U74 ( .A(n98), .B(n5), .S(sel_pc_i), .Q(AluSideA[5]) );
  IMUX20 U75 ( .A(n99), .B(n6), .S(sel_pc_i), .Q(AluSideA[4]) );
  IMUX20 U76 ( .A(n100), .B(n7), .S(sel_pc_i), .Q(AluSideA[3]) );
  IMUX20 U77 ( .A(n101), .B(n8), .S(sel_pc_i), .Q(AluSideA[2]) );
  IMUX20 U78 ( .A(n102), .B(n9), .S(sel_pc_i), .Q(AluSideA[1]) );
  IMUX20 U79 ( .A(n88), .B(n10), .S(sel_pc_i), .Q(AluSideA[15]) );
  IMUX20 U80 ( .A(n89), .B(n105), .S(sel_pc_i), .Q(AluSideA[14]) );
  IMUX20 U81 ( .A(n90), .B(n11), .S(sel_pc_i), .Q(AluSideA[13]) );
  IMUX20 U82 ( .A(n91), .B(n12), .S(sel_pc_i), .Q(AluSideA[12]) );
  IMUX20 U83 ( .A(n92), .B(n13), .S(sel_pc_i), .Q(AluSideA[11]) );
  IMUX20 U84 ( .A(n93), .B(n14), .S(sel_pc_i), .Q(AluSideA[10]) );
  IMUX20 U85 ( .A(n103), .B(n15), .S(sel_pc_i), .Q(AluSideA[0]) );
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


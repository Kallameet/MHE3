
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


module SNPS_CLOCK_GATE_HIGH_reg_file_8_0_7 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net281, n4, n5;

  DLPQ3 latch ( .SN(n5), .D(EN), .GN(CLK), .Q(net281) );
  NAND20 main_gate ( .A(net281), .B(CLK), .Q(n4) );
  INV3 U3 ( .A(n4), .Q(ENCLK) );
  LOGIC1 U4 ( .Q(n5) );
endmodule


module SNPS_CLOCK_GATE_HIGH_reg_file_8_0_6 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net281, n4, n5;

  DLPQ3 latch ( .SN(n5), .D(EN), .GN(CLK), .Q(net281) );
  NAND20 main_gate ( .A(net281), .B(CLK), .Q(n4) );
  INV3 U3 ( .A(n4), .Q(ENCLK) );
  LOGIC1 U4 ( .Q(n5) );
endmodule


module SNPS_CLOCK_GATE_HIGH_reg_file_8_0_5 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net281, n4, n5;

  DLPQ3 latch ( .SN(n5), .D(EN), .GN(CLK), .Q(net281) );
  NAND20 main_gate ( .A(net281), .B(CLK), .Q(n4) );
  INV3 U3 ( .A(n4), .Q(ENCLK) );
  LOGIC1 U4 ( .Q(n5) );
endmodule


module SNPS_CLOCK_GATE_HIGH_reg_file_8_0_4 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net281, n4, n5;

  DLPQ3 latch ( .SN(n5), .D(EN), .GN(CLK), .Q(net281) );
  NAND20 main_gate ( .A(net281), .B(CLK), .Q(n4) );
  INV3 U3 ( .A(n4), .Q(ENCLK) );
  LOGIC1 U4 ( .Q(n5) );
endmodule


module SNPS_CLOCK_GATE_HIGH_reg_file_8_0_3 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net281, n4, n5;

  DLPQ3 latch ( .SN(n5), .D(EN), .GN(CLK), .Q(net281) );
  NAND20 main_gate ( .A(net281), .B(CLK), .Q(n4) );
  INV3 U3 ( .A(n4), .Q(ENCLK) );
  LOGIC1 U4 ( .Q(n5) );
endmodule


module SNPS_CLOCK_GATE_HIGH_reg_file_8_0_2 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net281, n4, n5;

  DLPQ3 latch ( .SN(n5), .D(EN), .GN(CLK), .Q(net281) );
  NAND20 main_gate ( .A(net281), .B(CLK), .Q(n4) );
  INV3 U3 ( .A(n4), .Q(ENCLK) );
  LOGIC1 U4 ( .Q(n5) );
endmodule


module SNPS_CLOCK_GATE_HIGH_reg_file_8_0_1 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net281, n4, n5;

  DLPQ3 latch ( .SN(n5), .D(EN), .GN(CLK), .Q(net281) );
  NAND20 main_gate ( .A(net281), .B(CLK), .Q(n4) );
  INV3 U3 ( .A(n4), .Q(ENCLK) );
  LOGIC1 U4 ( .Q(n5) );
endmodule


module SNPS_CLOCK_GATE_HIGH_datapath_1 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net261, n4, n5;

  DLPQ3 latch ( .SN(n5), .D(EN), .GN(CLK), .Q(net261) );
  NAND20 main_gate ( .A(net261), .B(CLK), .Q(n4) );
  INV3 U3 ( .A(n4), .Q(ENCLK) );
  LOGIC1 U4 ( .Q(n5) );
endmodule


module SNPS_CLOCK_GATE_HIGH_reg_file_8_0_0 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net281, n1, n3;

  DLPQ3 latch ( .SN(n1), .D(EN), .GN(CLK), .Q(net281) );
  NAND20 main_gate ( .A(net281), .B(CLK), .Q(n3) );
  INV3 U3 ( .A(n3), .Q(ENCLK) );
  LOGIC1 U4 ( .Q(n1) );
endmodule


module SNPS_CLOCK_GATE_HIGH_control ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net246, n1, n3;

  DLPQ3 latch ( .SN(n1), .D(EN), .GN(CLK), .Q(net246) );
  NAND22 main_gate ( .A(net246), .B(CLK), .Q(n3) );
  LOGIC1 U3 ( .Q(n1) );
  CLKIN0 U4 ( .A(n3), .Q(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_datapath_0 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net261, n1, n3;

  DLPQ3 latch ( .SN(n1), .D(EN), .GN(CLK), .Q(net261) );
  NAND20 main_gate ( .A(net261), .B(CLK), .Q(n3) );
  INV3 U3 ( .A(n3), .Q(ENCLK) );
  LOGIC1 U4 ( .Q(n1) );
endmodule


module reg_file_8_0 ( clk_i, reg_a_idx_i, reg_b_idx_i, clk_en_reg_file_i, 
        reg_i, reg_a_o, reg_b_o );
  input [3:0] reg_a_idx_i;
  input [3:0] reg_b_idx_i;
  input [15:0] reg_i;
  output [15:0] reg_a_o;
  output [15:0] reg_b_o;
  input clk_i, clk_en_reg_file_i;
  wire   N222, N238, N254, N270, N286, N302, N318, N334, net287, net292,
         net297, net302, net307, net312, net317, net322, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160;
  wire   [127:0] registers;

  DF3 registers_reg_7__15_ ( .D(reg_i[15]), .C(net287), .Q(registers[127]) );
  DF3 registers_reg_7__14_ ( .D(reg_i[14]), .C(net287), .Q(registers[126]) );
  DF3 registers_reg_7__13_ ( .D(reg_i[13]), .C(net287), .Q(registers[125]) );
  DF3 registers_reg_7__12_ ( .D(reg_i[12]), .C(net287), .Q(registers[124]) );
  DF3 registers_reg_7__11_ ( .D(reg_i[11]), .C(net287), .Q(registers[123]) );
  DF3 registers_reg_7__10_ ( .D(reg_i[10]), .C(net287), .Q(registers[122]) );
  DF3 registers_reg_7__9_ ( .D(reg_i[9]), .C(net287), .Q(registers[121]) );
  DF3 registers_reg_7__8_ ( .D(reg_i[8]), .C(net287), .Q(registers[120]) );
  DF3 registers_reg_7__7_ ( .D(reg_i[7]), .C(net287), .Q(registers[119]) );
  DF3 registers_reg_7__6_ ( .D(reg_i[6]), .C(net287), .Q(registers[118]) );
  DF3 registers_reg_7__5_ ( .D(reg_i[5]), .C(net287), .Q(registers[117]) );
  DF3 registers_reg_7__4_ ( .D(reg_i[4]), .C(net287), .Q(registers[116]) );
  DF3 registers_reg_7__3_ ( .D(reg_i[3]), .C(net287), .Q(registers[115]) );
  DF3 registers_reg_7__2_ ( .D(reg_i[2]), .C(net287), .Q(registers[114]) );
  DF3 registers_reg_7__1_ ( .D(reg_i[1]), .C(net287), .Q(registers[113]) );
  DF3 registers_reg_7__0_ ( .D(reg_i[0]), .C(net287), .Q(registers[112]) );
  DF3 registers_reg_6__15_ ( .D(reg_i[15]), .C(net292), .Q(registers[111]) );
  DF3 registers_reg_6__14_ ( .D(reg_i[14]), .C(net292), .Q(registers[110]) );
  DF3 registers_reg_6__13_ ( .D(reg_i[13]), .C(net292), .Q(registers[109]) );
  DF3 registers_reg_6__12_ ( .D(reg_i[12]), .C(net292), .Q(registers[108]) );
  DF3 registers_reg_6__11_ ( .D(reg_i[11]), .C(net292), .Q(registers[107]) );
  DF3 registers_reg_6__10_ ( .D(reg_i[10]), .C(net292), .Q(registers[106]) );
  DF3 registers_reg_6__9_ ( .D(reg_i[9]), .C(net292), .Q(registers[105]) );
  DF3 registers_reg_6__8_ ( .D(reg_i[8]), .C(net292), .Q(registers[104]) );
  DF3 registers_reg_6__7_ ( .D(reg_i[7]), .C(net292), .Q(registers[103]) );
  DF3 registers_reg_6__6_ ( .D(reg_i[6]), .C(net292), .Q(registers[102]) );
  DF3 registers_reg_6__5_ ( .D(reg_i[5]), .C(net292), .Q(registers[101]) );
  DF3 registers_reg_6__4_ ( .D(reg_i[4]), .C(net292), .Q(registers[100]) );
  DF3 registers_reg_6__3_ ( .D(reg_i[3]), .C(net292), .Q(registers[99]) );
  DF3 registers_reg_6__2_ ( .D(reg_i[2]), .C(net292), .Q(registers[98]) );
  DF3 registers_reg_6__1_ ( .D(reg_i[1]), .C(net292), .Q(registers[97]) );
  DF3 registers_reg_6__0_ ( .D(reg_i[0]), .C(net292), .Q(registers[96]) );
  DF3 registers_reg_5__15_ ( .D(reg_i[15]), .C(net297), .Q(registers[95]) );
  DF3 registers_reg_5__14_ ( .D(reg_i[14]), .C(net297), .Q(registers[94]) );
  DF3 registers_reg_5__13_ ( .D(reg_i[13]), .C(net297), .Q(registers[93]) );
  DF3 registers_reg_5__12_ ( .D(reg_i[12]), .C(net297), .Q(registers[92]) );
  DF3 registers_reg_5__11_ ( .D(reg_i[11]), .C(net297), .Q(registers[91]) );
  DF3 registers_reg_5__10_ ( .D(reg_i[10]), .C(net297), .Q(registers[90]) );
  DF3 registers_reg_5__9_ ( .D(reg_i[9]), .C(net297), .Q(registers[89]) );
  DF3 registers_reg_5__8_ ( .D(reg_i[8]), .C(net297), .Q(registers[88]) );
  DF3 registers_reg_5__7_ ( .D(reg_i[7]), .C(net297), .Q(registers[87]) );
  DF3 registers_reg_5__6_ ( .D(reg_i[6]), .C(net297), .Q(registers[86]) );
  DF3 registers_reg_5__5_ ( .D(reg_i[5]), .C(net297), .Q(registers[85]) );
  DF3 registers_reg_5__4_ ( .D(reg_i[4]), .C(net297), .Q(registers[84]) );
  DF3 registers_reg_5__3_ ( .D(reg_i[3]), .C(net297), .Q(registers[83]) );
  DF3 registers_reg_5__2_ ( .D(reg_i[2]), .C(net297), .Q(registers[82]) );
  DF3 registers_reg_5__1_ ( .D(reg_i[1]), .C(net297), .Q(registers[81]) );
  DF3 registers_reg_5__0_ ( .D(reg_i[0]), .C(net297), .Q(registers[80]) );
  DF3 registers_reg_4__15_ ( .D(reg_i[15]), .C(net302), .Q(registers[79]) );
  DF3 registers_reg_4__14_ ( .D(reg_i[14]), .C(net302), .Q(registers[78]) );
  DF3 registers_reg_4__13_ ( .D(reg_i[13]), .C(net302), .Q(registers[77]) );
  DF3 registers_reg_4__12_ ( .D(reg_i[12]), .C(net302), .Q(registers[76]) );
  DF3 registers_reg_4__11_ ( .D(reg_i[11]), .C(net302), .Q(registers[75]) );
  DF3 registers_reg_4__10_ ( .D(reg_i[10]), .C(net302), .Q(registers[74]) );
  DF3 registers_reg_4__9_ ( .D(reg_i[9]), .C(net302), .Q(registers[73]) );
  DF3 registers_reg_4__8_ ( .D(reg_i[8]), .C(net302), .Q(registers[72]) );
  DF3 registers_reg_4__7_ ( .D(reg_i[7]), .C(net302), .Q(registers[71]) );
  DF3 registers_reg_4__6_ ( .D(reg_i[6]), .C(net302), .Q(registers[70]) );
  DF3 registers_reg_4__5_ ( .D(reg_i[5]), .C(net302), .Q(registers[69]) );
  DF3 registers_reg_4__4_ ( .D(reg_i[4]), .C(net302), .Q(registers[68]) );
  DF3 registers_reg_4__3_ ( .D(reg_i[3]), .C(net302), .Q(registers[67]) );
  DF3 registers_reg_4__2_ ( .D(reg_i[2]), .C(net302), .Q(registers[66]) );
  DF3 registers_reg_4__1_ ( .D(reg_i[1]), .C(net302), .Q(registers[65]) );
  DF3 registers_reg_4__0_ ( .D(reg_i[0]), .C(net302), .Q(registers[64]) );
  DF3 registers_reg_3__15_ ( .D(reg_i[15]), .C(net307), .Q(registers[63]) );
  DF3 registers_reg_3__14_ ( .D(reg_i[14]), .C(net307), .Q(registers[62]) );
  DF3 registers_reg_3__13_ ( .D(reg_i[13]), .C(net307), .Q(registers[61]) );
  DF3 registers_reg_3__12_ ( .D(reg_i[12]), .C(net307), .Q(registers[60]) );
  DF3 registers_reg_3__11_ ( .D(reg_i[11]), .C(net307), .Q(registers[59]) );
  DF3 registers_reg_3__10_ ( .D(reg_i[10]), .C(net307), .Q(registers[58]) );
  DF3 registers_reg_3__9_ ( .D(reg_i[9]), .C(net307), .Q(registers[57]) );
  DF3 registers_reg_3__8_ ( .D(reg_i[8]), .C(net307), .Q(registers[56]) );
  DF3 registers_reg_3__7_ ( .D(reg_i[7]), .C(net307), .Q(registers[55]) );
  DF3 registers_reg_3__6_ ( .D(reg_i[6]), .C(net307), .Q(registers[54]) );
  DF3 registers_reg_3__5_ ( .D(reg_i[5]), .C(net307), .Q(registers[53]) );
  DF3 registers_reg_3__4_ ( .D(reg_i[4]), .C(net307), .Q(registers[52]) );
  DF3 registers_reg_3__3_ ( .D(reg_i[3]), .C(net307), .Q(registers[51]) );
  DF3 registers_reg_3__2_ ( .D(reg_i[2]), .C(net307), .Q(registers[50]) );
  DF3 registers_reg_3__1_ ( .D(reg_i[1]), .C(net307), .Q(registers[49]) );
  DF3 registers_reg_3__0_ ( .D(reg_i[0]), .C(net307), .Q(registers[48]) );
  DF3 registers_reg_2__15_ ( .D(reg_i[15]), .C(net312), .Q(registers[47]) );
  DF3 registers_reg_2__14_ ( .D(reg_i[14]), .C(net312), .Q(registers[46]) );
  DF3 registers_reg_2__13_ ( .D(reg_i[13]), .C(net312), .Q(registers[45]) );
  DF3 registers_reg_2__12_ ( .D(reg_i[12]), .C(net312), .Q(registers[44]) );
  DF3 registers_reg_2__11_ ( .D(reg_i[11]), .C(net312), .Q(registers[43]) );
  DF3 registers_reg_2__10_ ( .D(reg_i[10]), .C(net312), .Q(registers[42]) );
  DF3 registers_reg_2__9_ ( .D(reg_i[9]), .C(net312), .Q(registers[41]) );
  DF3 registers_reg_2__8_ ( .D(reg_i[8]), .C(net312), .Q(registers[40]) );
  DF3 registers_reg_2__7_ ( .D(reg_i[7]), .C(net312), .Q(registers[39]) );
  DF3 registers_reg_2__6_ ( .D(reg_i[6]), .C(net312), .Q(registers[38]) );
  DF3 registers_reg_2__5_ ( .D(reg_i[5]), .C(net312), .Q(registers[37]) );
  DF3 registers_reg_2__4_ ( .D(reg_i[4]), .C(net312), .Q(registers[36]) );
  DF3 registers_reg_2__3_ ( .D(reg_i[3]), .C(net312), .Q(registers[35]) );
  DF3 registers_reg_2__2_ ( .D(reg_i[2]), .C(net312), .Q(registers[34]) );
  DF3 registers_reg_2__1_ ( .D(reg_i[1]), .C(net312), .Q(registers[33]) );
  DF3 registers_reg_2__0_ ( .D(reg_i[0]), .C(net312), .Q(registers[32]) );
  DF3 registers_reg_1__15_ ( .D(reg_i[15]), .C(net317), .Q(registers[31]) );
  DF3 registers_reg_1__14_ ( .D(reg_i[14]), .C(net317), .Q(registers[30]) );
  DF3 registers_reg_1__13_ ( .D(reg_i[13]), .C(net317), .Q(registers[29]) );
  DF3 registers_reg_1__12_ ( .D(reg_i[12]), .C(net317), .Q(registers[28]) );
  DF3 registers_reg_1__11_ ( .D(reg_i[11]), .C(net317), .Q(registers[27]) );
  DF3 registers_reg_1__10_ ( .D(reg_i[10]), .C(net317), .Q(registers[26]) );
  DF3 registers_reg_1__9_ ( .D(reg_i[9]), .C(net317), .Q(registers[25]) );
  DF3 registers_reg_1__8_ ( .D(reg_i[8]), .C(net317), .Q(registers[24]) );
  DF3 registers_reg_1__7_ ( .D(reg_i[7]), .C(net317), .Q(registers[23]) );
  DF3 registers_reg_1__6_ ( .D(reg_i[6]), .C(net317), .Q(registers[22]) );
  DF3 registers_reg_1__5_ ( .D(reg_i[5]), .C(net317), .Q(registers[21]) );
  DF3 registers_reg_1__4_ ( .D(reg_i[4]), .C(net317), .Q(registers[20]) );
  DF3 registers_reg_1__3_ ( .D(reg_i[3]), .C(net317), .Q(registers[19]) );
  DF3 registers_reg_1__2_ ( .D(reg_i[2]), .C(net317), .Q(registers[18]) );
  DF3 registers_reg_1__1_ ( .D(reg_i[1]), .C(net317), .Q(registers[17]) );
  DF3 registers_reg_1__0_ ( .D(reg_i[0]), .C(net317), .Q(registers[16]) );
  DF3 registers_reg_0__15_ ( .D(reg_i[15]), .C(net322), .Q(registers[15]) );
  DF3 registers_reg_0__14_ ( .D(reg_i[14]), .C(net322), .Q(registers[14]) );
  DF3 registers_reg_0__13_ ( .D(reg_i[13]), .C(net322), .Q(registers[13]) );
  DF3 registers_reg_0__12_ ( .D(reg_i[12]), .C(net322), .Q(registers[12]) );
  DF3 registers_reg_0__11_ ( .D(reg_i[11]), .C(net322), .Q(registers[11]) );
  DF3 registers_reg_0__10_ ( .D(reg_i[10]), .C(net322), .Q(registers[10]) );
  DF3 registers_reg_0__9_ ( .D(reg_i[9]), .C(net322), .Q(registers[9]) );
  DF3 registers_reg_0__8_ ( .D(reg_i[8]), .C(net322), .Q(registers[8]) );
  DF3 registers_reg_0__7_ ( .D(reg_i[7]), .C(net322), .Q(registers[7]) );
  DF3 registers_reg_0__6_ ( .D(reg_i[6]), .C(net322), .Q(registers[6]) );
  DF3 registers_reg_0__5_ ( .D(reg_i[5]), .C(net322), .Q(registers[5]) );
  DF3 registers_reg_0__4_ ( .D(reg_i[4]), .C(net322), .Q(registers[4]) );
  DF3 registers_reg_0__3_ ( .D(reg_i[3]), .C(net322), .Q(registers[3]) );
  DF3 registers_reg_0__2_ ( .D(reg_i[2]), .C(net322), .Q(registers[2]) );
  DF3 registers_reg_0__1_ ( .D(reg_i[1]), .C(net322), .Q(registers[1]) );
  DF3 registers_reg_0__0_ ( .D(reg_i[0]), .C(net322), .Q(registers[0]) );
  SNPS_CLOCK_GATE_HIGH_reg_file_8_0_0 clk_gate_registers_reg_7_ ( .CLK(clk_i), 
        .EN(N334), .ENCLK(net287) );
  SNPS_CLOCK_GATE_HIGH_reg_file_8_0_7 clk_gate_registers_reg_6_ ( .CLK(clk_i), 
        .EN(N318), .ENCLK(net292) );
  SNPS_CLOCK_GATE_HIGH_reg_file_8_0_6 clk_gate_registers_reg_5_ ( .CLK(clk_i), 
        .EN(N302), .ENCLK(net297) );
  SNPS_CLOCK_GATE_HIGH_reg_file_8_0_5 clk_gate_registers_reg_4_ ( .CLK(clk_i), 
        .EN(N286), .ENCLK(net302) );
  SNPS_CLOCK_GATE_HIGH_reg_file_8_0_4 clk_gate_registers_reg_3_ ( .CLK(clk_i), 
        .EN(N270), .ENCLK(net307) );
  SNPS_CLOCK_GATE_HIGH_reg_file_8_0_3 clk_gate_registers_reg_2_ ( .CLK(clk_i), 
        .EN(N254), .ENCLK(net312) );
  SNPS_CLOCK_GATE_HIGH_reg_file_8_0_2 clk_gate_registers_reg_1_ ( .CLK(clk_i), 
        .EN(N238), .ENCLK(net317) );
  SNPS_CLOCK_GATE_HIGH_reg_file_8_0_1 clk_gate_registers_reg_0_ ( .CLK(clk_i), 
        .EN(N222), .ENCLK(net322) );
  OAI212 U2 ( .A(n136), .B(n160), .C(clk_en_reg_file_i), .Q(n137) );
  NOR32 U3 ( .A(n74), .B(reg_b_idx_i[2]), .C(n75), .Q(n10) );
  NOR32 U4 ( .A(n151), .B(reg_a_idx_i[2]), .C(n154), .Q(n83) );
  INV1 U5 ( .A(reg_a_idx_i[0]), .Q(n154) );
  NOR32 U6 ( .A(reg_b_idx_i[0]), .B(reg_b_idx_i[2]), .C(n74), .Q(n9) );
  NOR32 U7 ( .A(reg_a_idx_i[0]), .B(reg_a_idx_i[1]), .C(n152), .Q(n82) );
  NOR32 U8 ( .A(reg_b_idx_i[0]), .B(reg_b_idx_i[1]), .C(n73), .Q(n7) );
  NOR32 U9 ( .A(reg_a_idx_i[1]), .B(reg_a_idx_i[2]), .C(n154), .Q(n85) );
  NOR32 U10 ( .A(n73), .B(n74), .C(n75), .Q(n6) );
  INV2 U11 ( .A(reg_b_idx_i[1]), .Q(n74) );
  NOR32 U12 ( .A(reg_b_idx_i[1]), .B(reg_b_idx_i[2]), .C(n75), .Q(n12) );
  INV2 U13 ( .A(reg_b_idx_i[0]), .Q(n75) );
  NOR32 U14 ( .A(reg_a_idx_i[0]), .B(reg_a_idx_i[2]), .C(n151), .Q(n84) );
  CLKIN1 U15 ( .A(reg_a_idx_i[1]), .Q(n151) );
  NOR32 U16 ( .A(n152), .B(reg_a_idx_i[1]), .C(n154), .Q(n81) );
  INV3 U17 ( .A(reg_a_idx_i[2]), .Q(n152) );
  NOR32 U18 ( .A(n73), .B(reg_b_idx_i[1]), .C(n75), .Q(n8) );
  INV2 U19 ( .A(reg_b_idx_i[2]), .Q(n73) );
  NOR32 U20 ( .A(n152), .B(n151), .C(n154), .Q(n86) );
  NOR32 U21 ( .A(n151), .B(reg_a_idx_i[0]), .C(n152), .Q(n80) );
  NOR32 U22 ( .A(reg_a_idx_i[1]), .B(reg_a_idx_i[2]), .C(reg_a_idx_i[0]), .Q(
        n87) );
  NOR32 U23 ( .A(n74), .B(reg_b_idx_i[0]), .C(n73), .Q(n5) );
  NOR32 U24 ( .A(reg_b_idx_i[1]), .B(reg_b_idx_i[2]), .C(reg_b_idx_i[0]), .Q(
        n11) );
  NAND40 U25 ( .A(n1), .B(n2), .C(n3), .D(n4), .Q(reg_b_o[0]) );
  AOI220 U26 ( .A(registers[96]), .B(n5), .C(registers[112]), .D(n6), .Q(n4)
         );
  AOI220 U27 ( .A(registers[64]), .B(n7), .C(registers[80]), .D(n8), .Q(n3) );
  AOI220 U28 ( .A(registers[32]), .B(n9), .C(registers[48]), .D(n10), .Q(n2)
         );
  AOI220 U29 ( .A(registers[0]), .B(n11), .C(registers[16]), .D(n12), .Q(n1)
         );
  NAND40 U30 ( .A(n13), .B(n14), .C(n15), .D(n16), .Q(reg_b_o[1]) );
  AOI220 U31 ( .A(registers[97]), .B(n5), .C(registers[113]), .D(n6), .Q(n16)
         );
  AOI220 U32 ( .A(registers[65]), .B(n7), .C(registers[81]), .D(n8), .Q(n15)
         );
  AOI220 U33 ( .A(registers[33]), .B(n9), .C(registers[49]), .D(n10), .Q(n14)
         );
  AOI220 U34 ( .A(registers[1]), .B(n11), .C(registers[17]), .D(n12), .Q(n13)
         );
  NAND40 U35 ( .A(n17), .B(n18), .C(n19), .D(n20), .Q(reg_b_o[2]) );
  AOI220 U36 ( .A(registers[98]), .B(n5), .C(registers[114]), .D(n6), .Q(n20)
         );
  AOI220 U37 ( .A(registers[66]), .B(n7), .C(registers[82]), .D(n8), .Q(n19)
         );
  AOI220 U38 ( .A(registers[34]), .B(n9), .C(registers[50]), .D(n10), .Q(n18)
         );
  AOI220 U39 ( .A(registers[2]), .B(n11), .C(registers[18]), .D(n12), .Q(n17)
         );
  NAND40 U40 ( .A(n21), .B(n22), .C(n23), .D(n24), .Q(reg_b_o[3]) );
  AOI220 U41 ( .A(registers[99]), .B(n5), .C(registers[115]), .D(n6), .Q(n24)
         );
  AOI220 U42 ( .A(registers[67]), .B(n7), .C(registers[83]), .D(n8), .Q(n23)
         );
  AOI220 U43 ( .A(registers[35]), .B(n9), .C(registers[51]), .D(n10), .Q(n22)
         );
  AOI220 U44 ( .A(registers[3]), .B(n11), .C(registers[19]), .D(n12), .Q(n21)
         );
  NAND40 U45 ( .A(n25), .B(n26), .C(n27), .D(n28), .Q(reg_b_o[4]) );
  AOI220 U46 ( .A(registers[100]), .B(n5), .C(registers[116]), .D(n6), .Q(n28)
         );
  AOI220 U47 ( .A(registers[68]), .B(n7), .C(registers[84]), .D(n8), .Q(n27)
         );
  AOI220 U48 ( .A(registers[36]), .B(n9), .C(registers[52]), .D(n10), .Q(n26)
         );
  AOI220 U49 ( .A(registers[4]), .B(n11), .C(registers[20]), .D(n12), .Q(n25)
         );
  NAND40 U50 ( .A(n29), .B(n30), .C(n31), .D(n32), .Q(reg_b_o[5]) );
  AOI220 U51 ( .A(registers[101]), .B(n5), .C(registers[117]), .D(n6), .Q(n32)
         );
  AOI220 U52 ( .A(registers[69]), .B(n7), .C(registers[85]), .D(n8), .Q(n31)
         );
  AOI220 U53 ( .A(registers[37]), .B(n9), .C(registers[53]), .D(n10), .Q(n30)
         );
  AOI220 U54 ( .A(registers[5]), .B(n11), .C(registers[21]), .D(n12), .Q(n29)
         );
  NAND40 U55 ( .A(n33), .B(n34), .C(n35), .D(n36), .Q(reg_b_o[6]) );
  AOI220 U56 ( .A(registers[102]), .B(n5), .C(registers[118]), .D(n6), .Q(n36)
         );
  AOI220 U57 ( .A(registers[70]), .B(n7), .C(registers[86]), .D(n8), .Q(n35)
         );
  AOI220 U58 ( .A(registers[38]), .B(n9), .C(registers[54]), .D(n10), .Q(n34)
         );
  AOI220 U59 ( .A(registers[6]), .B(n11), .C(registers[22]), .D(n12), .Q(n33)
         );
  NAND40 U60 ( .A(n37), .B(n38), .C(n39), .D(n40), .Q(reg_b_o[7]) );
  AOI220 U61 ( .A(registers[103]), .B(n5), .C(registers[119]), .D(n6), .Q(n40)
         );
  AOI220 U62 ( .A(registers[71]), .B(n7), .C(registers[87]), .D(n8), .Q(n39)
         );
  AOI220 U63 ( .A(registers[39]), .B(n9), .C(registers[55]), .D(n10), .Q(n38)
         );
  AOI220 U64 ( .A(registers[7]), .B(n11), .C(registers[23]), .D(n12), .Q(n37)
         );
  NAND40 U65 ( .A(n41), .B(n42), .C(n43), .D(n44), .Q(reg_b_o[8]) );
  AOI220 U66 ( .A(registers[104]), .B(n5), .C(registers[120]), .D(n6), .Q(n44)
         );
  AOI220 U67 ( .A(registers[72]), .B(n7), .C(registers[88]), .D(n8), .Q(n43)
         );
  AOI220 U68 ( .A(registers[40]), .B(n9), .C(registers[56]), .D(n10), .Q(n42)
         );
  AOI220 U69 ( .A(registers[8]), .B(n11), .C(registers[24]), .D(n12), .Q(n41)
         );
  NAND40 U70 ( .A(n45), .B(n46), .C(n47), .D(n48), .Q(reg_b_o[9]) );
  AOI220 U71 ( .A(registers[105]), .B(n5), .C(registers[121]), .D(n6), .Q(n48)
         );
  AOI220 U72 ( .A(registers[73]), .B(n7), .C(registers[89]), .D(n8), .Q(n47)
         );
  AOI220 U73 ( .A(registers[41]), .B(n9), .C(registers[57]), .D(n10), .Q(n46)
         );
  AOI220 U74 ( .A(registers[9]), .B(n11), .C(registers[25]), .D(n12), .Q(n45)
         );
  NAND40 U75 ( .A(n49), .B(n50), .C(n51), .D(n52), .Q(reg_b_o[10]) );
  AOI220 U76 ( .A(registers[106]), .B(n5), .C(registers[122]), .D(n6), .Q(n52)
         );
  AOI220 U77 ( .A(registers[74]), .B(n7), .C(registers[90]), .D(n8), .Q(n51)
         );
  AOI220 U78 ( .A(registers[42]), .B(n9), .C(registers[58]), .D(n10), .Q(n50)
         );
  AOI220 U79 ( .A(registers[10]), .B(n11), .C(registers[26]), .D(n12), .Q(n49)
         );
  NAND40 U80 ( .A(n53), .B(n54), .C(n55), .D(n56), .Q(reg_b_o[11]) );
  AOI220 U81 ( .A(registers[107]), .B(n5), .C(registers[123]), .D(n6), .Q(n56)
         );
  AOI220 U82 ( .A(registers[75]), .B(n7), .C(registers[91]), .D(n8), .Q(n55)
         );
  AOI220 U83 ( .A(registers[43]), .B(n9), .C(registers[59]), .D(n10), .Q(n54)
         );
  AOI220 U84 ( .A(registers[11]), .B(n11), .C(registers[27]), .D(n12), .Q(n53)
         );
  NAND40 U85 ( .A(n57), .B(n58), .C(n59), .D(n60), .Q(reg_b_o[12]) );
  AOI220 U86 ( .A(registers[108]), .B(n5), .C(registers[124]), .D(n6), .Q(n60)
         );
  AOI220 U87 ( .A(registers[76]), .B(n7), .C(registers[92]), .D(n8), .Q(n59)
         );
  AOI220 U88 ( .A(registers[44]), .B(n9), .C(registers[60]), .D(n10), .Q(n58)
         );
  AOI220 U89 ( .A(registers[12]), .B(n11), .C(registers[28]), .D(n12), .Q(n57)
         );
  NAND40 U90 ( .A(n61), .B(n62), .C(n63), .D(n64), .Q(reg_b_o[13]) );
  AOI220 U91 ( .A(registers[109]), .B(n5), .C(registers[125]), .D(n6), .Q(n64)
         );
  AOI220 U92 ( .A(registers[77]), .B(n7), .C(registers[93]), .D(n8), .Q(n63)
         );
  AOI220 U93 ( .A(registers[45]), .B(n9), .C(registers[61]), .D(n10), .Q(n62)
         );
  AOI220 U94 ( .A(registers[13]), .B(n11), .C(registers[29]), .D(n12), .Q(n61)
         );
  NAND40 U95 ( .A(n65), .B(n66), .C(n67), .D(n68), .Q(reg_b_o[14]) );
  AOI220 U96 ( .A(registers[110]), .B(n5), .C(registers[126]), .D(n6), .Q(n68)
         );
  AOI220 U97 ( .A(registers[78]), .B(n7), .C(registers[94]), .D(n8), .Q(n67)
         );
  AOI220 U98 ( .A(registers[46]), .B(n9), .C(registers[62]), .D(n10), .Q(n66)
         );
  AOI220 U99 ( .A(registers[14]), .B(n11), .C(registers[30]), .D(n12), .Q(n65)
         );
  NAND40 U100 ( .A(n69), .B(n70), .C(n71), .D(n72), .Q(reg_b_o[15]) );
  AOI220 U101 ( .A(registers[111]), .B(n5), .C(registers[127]), .D(n6), .Q(n72) );
  AOI220 U102 ( .A(registers[79]), .B(n7), .C(registers[95]), .D(n8), .Q(n71)
         );
  AOI220 U103 ( .A(registers[47]), .B(n9), .C(registers[63]), .D(n10), .Q(n70)
         );
  AOI220 U104 ( .A(registers[15]), .B(n11), .C(registers[31]), .D(n12), .Q(n69) );
  NAND40 U105 ( .A(n76), .B(n77), .C(n78), .D(n79), .Q(reg_a_o[0]) );
  AOI220 U106 ( .A(n80), .B(registers[96]), .C(n81), .D(registers[80]), .Q(n79) );
  AOI220 U107 ( .A(n82), .B(registers[64]), .C(n83), .D(registers[48]), .Q(n78) );
  AOI220 U108 ( .A(n84), .B(registers[32]), .C(n85), .D(registers[16]), .Q(n77) );
  AOI220 U109 ( .A(n86), .B(registers[112]), .C(n87), .D(registers[0]), .Q(n76) );
  NAND40 U110 ( .A(n88), .B(n89), .C(n90), .D(n91), .Q(reg_a_o[1]) );
  AOI220 U111 ( .A(n80), .B(registers[97]), .C(n81), .D(registers[81]), .Q(n91) );
  AOI220 U112 ( .A(n82), .B(registers[65]), .C(n83), .D(registers[49]), .Q(n90) );
  AOI220 U113 ( .A(n84), .B(registers[33]), .C(n85), .D(registers[17]), .Q(n89) );
  AOI220 U114 ( .A(n86), .B(registers[113]), .C(n87), .D(registers[1]), .Q(n88) );
  NAND40 U115 ( .A(n92), .B(n93), .C(n94), .D(n95), .Q(reg_a_o[2]) );
  AOI220 U116 ( .A(n80), .B(registers[98]), .C(n81), .D(registers[82]), .Q(n95) );
  AOI220 U117 ( .A(n82), .B(registers[66]), .C(n83), .D(registers[50]), .Q(n94) );
  AOI220 U118 ( .A(n84), .B(registers[34]), .C(n85), .D(registers[18]), .Q(n93) );
  AOI220 U119 ( .A(n86), .B(registers[114]), .C(n87), .D(registers[2]), .Q(n92) );
  NAND40 U120 ( .A(n96), .B(n97), .C(n98), .D(n99), .Q(reg_a_o[3]) );
  AOI220 U121 ( .A(n80), .B(registers[99]), .C(n81), .D(registers[83]), .Q(n99) );
  AOI220 U122 ( .A(n82), .B(registers[67]), .C(n83), .D(registers[51]), .Q(n98) );
  AOI220 U123 ( .A(n84), .B(registers[35]), .C(n85), .D(registers[19]), .Q(n97) );
  AOI220 U124 ( .A(n86), .B(registers[115]), .C(n87), .D(registers[3]), .Q(n96) );
  NAND40 U125 ( .A(n100), .B(n101), .C(n102), .D(n103), .Q(reg_a_o[4]) );
  AOI220 U126 ( .A(n80), .B(registers[100]), .C(n81), .D(registers[84]), .Q(
        n103) );
  AOI220 U127 ( .A(n82), .B(registers[68]), .C(n83), .D(registers[52]), .Q(
        n102) );
  AOI220 U128 ( .A(n84), .B(registers[36]), .C(n85), .D(registers[20]), .Q(
        n101) );
  AOI220 U129 ( .A(n86), .B(registers[116]), .C(n87), .D(registers[4]), .Q(
        n100) );
  NAND40 U130 ( .A(n104), .B(n105), .C(n106), .D(n107), .Q(reg_a_o[5]) );
  AOI220 U131 ( .A(n80), .B(registers[101]), .C(n81), .D(registers[85]), .Q(
        n107) );
  AOI220 U132 ( .A(n82), .B(registers[69]), .C(n83), .D(registers[53]), .Q(
        n106) );
  AOI220 U133 ( .A(n84), .B(registers[37]), .C(n85), .D(registers[21]), .Q(
        n105) );
  AOI220 U134 ( .A(n86), .B(registers[117]), .C(n87), .D(registers[5]), .Q(
        n104) );
  NAND40 U135 ( .A(n108), .B(n109), .C(n110), .D(n111), .Q(reg_a_o[6]) );
  AOI220 U136 ( .A(n80), .B(registers[102]), .C(n81), .D(registers[86]), .Q(
        n111) );
  AOI220 U137 ( .A(n82), .B(registers[70]), .C(n83), .D(registers[54]), .Q(
        n110) );
  AOI220 U138 ( .A(n84), .B(registers[38]), .C(n85), .D(registers[22]), .Q(
        n109) );
  AOI220 U139 ( .A(n86), .B(registers[118]), .C(n87), .D(registers[6]), .Q(
        n108) );
  NAND40 U140 ( .A(n112), .B(n113), .C(n114), .D(n115), .Q(reg_a_o[7]) );
  AOI220 U141 ( .A(n80), .B(registers[103]), .C(n81), .D(registers[87]), .Q(
        n115) );
  AOI220 U142 ( .A(n82), .B(registers[71]), .C(n83), .D(registers[55]), .Q(
        n114) );
  AOI220 U143 ( .A(n84), .B(registers[39]), .C(n85), .D(registers[23]), .Q(
        n113) );
  AOI220 U144 ( .A(n86), .B(registers[119]), .C(n87), .D(registers[7]), .Q(
        n112) );
  NAND40 U145 ( .A(n116), .B(n117), .C(n118), .D(n119), .Q(reg_a_o[8]) );
  AOI220 U146 ( .A(n80), .B(registers[104]), .C(n81), .D(registers[88]), .Q(
        n119) );
  AOI220 U147 ( .A(n82), .B(registers[72]), .C(n83), .D(registers[56]), .Q(
        n118) );
  AOI220 U148 ( .A(n84), .B(registers[40]), .C(n85), .D(registers[24]), .Q(
        n117) );
  AOI220 U149 ( .A(n86), .B(registers[120]), .C(n87), .D(registers[8]), .Q(
        n116) );
  NAND40 U150 ( .A(n120), .B(n121), .C(n122), .D(n123), .Q(reg_a_o[9]) );
  AOI220 U151 ( .A(n80), .B(registers[105]), .C(n81), .D(registers[89]), .Q(
        n123) );
  AOI220 U152 ( .A(n82), .B(registers[73]), .C(n83), .D(registers[57]), .Q(
        n122) );
  AOI220 U153 ( .A(n84), .B(registers[41]), .C(n85), .D(registers[25]), .Q(
        n121) );
  AOI220 U154 ( .A(n86), .B(registers[121]), .C(n87), .D(registers[9]), .Q(
        n120) );
  NAND40 U155 ( .A(n124), .B(n125), .C(n126), .D(n127), .Q(reg_a_o[10]) );
  AOI220 U156 ( .A(n80), .B(registers[106]), .C(n81), .D(registers[90]), .Q(
        n127) );
  AOI220 U157 ( .A(n82), .B(registers[74]), .C(n83), .D(registers[58]), .Q(
        n126) );
  AOI220 U158 ( .A(n84), .B(registers[42]), .C(n85), .D(registers[26]), .Q(
        n125) );
  AOI220 U159 ( .A(n86), .B(registers[122]), .C(n87), .D(registers[10]), .Q(
        n124) );
  NAND40 U160 ( .A(n128), .B(n129), .C(n130), .D(n131), .Q(reg_a_o[11]) );
  AOI220 U161 ( .A(n80), .B(registers[107]), .C(n81), .D(registers[91]), .Q(
        n131) );
  AOI220 U162 ( .A(n82), .B(registers[75]), .C(n83), .D(registers[59]), .Q(
        n130) );
  AOI220 U163 ( .A(n84), .B(registers[43]), .C(n85), .D(registers[27]), .Q(
        n129) );
  AOI220 U164 ( .A(n86), .B(registers[123]), .C(n87), .D(registers[11]), .Q(
        n128) );
  NAND40 U165 ( .A(n132), .B(n133), .C(n134), .D(n135), .Q(reg_a_o[12]) );
  AOI220 U166 ( .A(n80), .B(registers[108]), .C(n81), .D(registers[92]), .Q(
        n135) );
  AOI220 U167 ( .A(n82), .B(registers[76]), .C(n83), .D(registers[60]), .Q(
        n134) );
  AOI220 U168 ( .A(n84), .B(registers[44]), .C(n85), .D(registers[28]), .Q(
        n133) );
  AOI220 U169 ( .A(n86), .B(registers[124]), .C(n87), .D(registers[12]), .Q(
        n132) );
  NOR20 U170 ( .A(n136), .B(n137), .Q(N334) );
  NAND40 U171 ( .A(n138), .B(n139), .C(n140), .D(n141), .Q(reg_a_o[13]) );
  AOI220 U172 ( .A(n80), .B(registers[109]), .C(n81), .D(registers[93]), .Q(
        n141) );
  AOI220 U173 ( .A(n82), .B(registers[77]), .C(n83), .D(registers[61]), .Q(
        n140) );
  AOI220 U174 ( .A(n84), .B(registers[45]), .C(n85), .D(registers[29]), .Q(
        n139) );
  AOI220 U175 ( .A(n86), .B(registers[125]), .C(n87), .D(registers[13]), .Q(
        n138) );
  NAND40 U176 ( .A(n142), .B(n143), .C(n144), .D(n145), .Q(reg_a_o[14]) );
  AOI220 U177 ( .A(n80), .B(registers[110]), .C(n81), .D(registers[94]), .Q(
        n145) );
  AOI220 U178 ( .A(n82), .B(registers[78]), .C(n83), .D(registers[62]), .Q(
        n144) );
  AOI220 U179 ( .A(n84), .B(registers[46]), .C(n85), .D(registers[30]), .Q(
        n143) );
  AOI220 U180 ( .A(n86), .B(registers[126]), .C(n87), .D(registers[14]), .Q(
        n142) );
  NOR20 U181 ( .A(n146), .B(n137), .Q(N318) );
  CLKIN0 U182 ( .A(n80), .Q(n146) );
  NAND40 U183 ( .A(n147), .B(n148), .C(n149), .D(n150), .Q(reg_a_o[15]) );
  AOI220 U184 ( .A(n80), .B(registers[111]), .C(n81), .D(registers[95]), .Q(
        n150) );
  AOI220 U185 ( .A(n82), .B(registers[79]), .C(n83), .D(registers[63]), .Q(
        n149) );
  AOI220 U186 ( .A(n84), .B(registers[47]), .C(n85), .D(registers[31]), .Q(
        n148) );
  AOI220 U187 ( .A(n86), .B(registers[127]), .C(n87), .D(registers[15]), .Q(
        n147) );
  NOR20 U188 ( .A(n153), .B(n137), .Q(N302) );
  CLKIN0 U189 ( .A(n81), .Q(n153) );
  NOR20 U190 ( .A(n155), .B(n137), .Q(N286) );
  CLKIN0 U191 ( .A(n82), .Q(n155) );
  NOR20 U192 ( .A(n156), .B(n137), .Q(N270) );
  CLKIN0 U193 ( .A(n83), .Q(n156) );
  NOR20 U194 ( .A(n157), .B(n137), .Q(N254) );
  CLKIN0 U195 ( .A(n84), .Q(n157) );
  NOR20 U196 ( .A(n158), .B(n137), .Q(N238) );
  CLKIN0 U197 ( .A(n85), .Q(n158) );
  NOR20 U198 ( .A(n159), .B(n137), .Q(N222) );
  CLKIN0 U199 ( .A(reg_a_idx_i[3]), .Q(n160) );
  CLKIN0 U200 ( .A(n86), .Q(n136) );
  CLKIN0 U201 ( .A(n87), .Q(n159) );
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
  NAND22 U3 ( .A(n147), .B(n148), .Q(n12) );
  INV3 U4 ( .A(alu_func_i[2]), .Q(n151) );
  NOR32 U5 ( .A(n150), .B(n151), .C(n152), .Q(n24) );
  INV1 U6 ( .A(alu_func_i[0]), .Q(n150) );
  NOR22 U7 ( .A(n147), .B(alu_func_i[1]), .Q(n163) );
  NAND31 U8 ( .A(n150), .B(n151), .C(alu_func_i[3]), .Q(n147) );
  INV3 U9 ( .A(n19), .Q(n25) );
  AOI212 U10 ( .A(alu_func_i[0]), .B(n145), .C(n146), .Q(n16) );
  AOI212 U11 ( .A(n150), .B(n145), .C(n146), .Q(n26) );
  NAND22 U12 ( .A(n160), .B(alu_func_i[1]), .Q(n162) );
  NOR32 U13 ( .A(n151), .B(alu_func_i[0]), .C(n152), .Q(n19) );
  NAND22 U14 ( .A(n158), .B(alu_func_i[0]), .Q(n8) );
  NOR32 U15 ( .A(n150), .B(alu_func_i[2]), .C(n154), .Q(n160) );
  NOR32 U16 ( .A(alu_func_i[1]), .B(alu_func_i[3]), .C(n151), .Q(n18) );
  NAND22 U17 ( .A(n158), .B(n150), .Q(n21) );
  LOGIC0 U18 ( .Q(n6) );
  LOGIC1 U19 ( .Q(n5) );
  CLKIN0 U20 ( .A(n1), .Q(zero_o) );
  NAND40 U21 ( .A(n2), .B(n3), .C(n4), .D(n7), .Q(n1) );
  NOR40 U22 ( .A(result_o[9]), .B(result_o[8]), .C(result_o[7]), .D(
        result_o[6]), .Q(n7) );
  OAI2110 U23 ( .A(n8), .B(n9), .C(n10), .D(n11), .Q(result_o[6]) );
  AOI2110 U24 ( .A(res_v_7_), .B(n12), .C(n13), .D(n14), .Q(n11) );
  AOI210 U25 ( .A(n15), .B(n16), .C(n17), .Q(n14) );
  IMUX20 U26 ( .A(n18), .B(n19), .S(n20), .Q(n15) );
  NOR20 U27 ( .A(n21), .B(n22), .Q(n13) );
  IMUX20 U28 ( .A(n23), .B(n24), .S(n20), .Q(n10) );
  OAI210 U29 ( .A(side_b_i[6]), .B(n25), .C(n26), .Q(n23) );
  OAI2110 U30 ( .A(n27), .B(n8), .C(n28), .D(n29), .Q(result_o[7]) );
  AOI2110 U31 ( .A(res_v_8_), .B(n12), .C(n30), .D(n31), .Q(n29) );
  AOI210 U32 ( .A(n32), .B(n16), .C(n33), .Q(n31) );
  IMUX20 U33 ( .A(n18), .B(n19), .S(n9), .Q(n32) );
  NOR20 U34 ( .A(n21), .B(n20), .Q(n30) );
  IMUX20 U35 ( .A(n34), .B(n24), .S(n9), .Q(n28) );
  OAI210 U36 ( .A(side_b_i[7]), .B(n25), .C(n26), .Q(n34) );
  OAI2110 U37 ( .A(n35), .B(n8), .C(n36), .D(n37), .Q(result_o[8]) );
  AOI2110 U38 ( .A(res_v_9_), .B(n12), .C(n38), .D(n39), .Q(n37) );
  AOI210 U39 ( .A(n40), .B(n16), .C(n41), .Q(n39) );
  IMUX20 U40 ( .A(n18), .B(n19), .S(n27), .Q(n40) );
  NOR20 U41 ( .A(n21), .B(n9), .Q(n38) );
  CLKIN0 U42 ( .A(side_a_i[7]), .Q(n9) );
  IMUX20 U43 ( .A(n42), .B(n24), .S(n27), .Q(n36) );
  OAI210 U44 ( .A(side_b_i[8]), .B(n25), .C(n26), .Q(n42) );
  OAI2110 U45 ( .A(n8), .B(n43), .C(n44), .D(n45), .Q(result_o[9]) );
  AOI2110 U46 ( .A(res_v_10_), .B(n12), .C(n46), .D(n47), .Q(n45) );
  AOI210 U47 ( .A(n48), .B(n16), .C(n49), .Q(n47) );
  IMUX20 U48 ( .A(n18), .B(n19), .S(n35), .Q(n48) );
  NOR20 U49 ( .A(n21), .B(n27), .Q(n46) );
  CLKIN0 U50 ( .A(side_a_i[8]), .Q(n27) );
  IMUX20 U51 ( .A(n50), .B(n24), .S(n35), .Q(n44) );
  OAI210 U52 ( .A(side_b_i[9]), .B(n25), .C(n26), .Q(n50) );
  NOR40 U53 ( .A(result_o[5]), .B(result_o[4]), .C(result_o[3]), .D(
        result_o[2]), .Q(n4) );
  OAI2110 U54 ( .A(n8), .B(n51), .C(n52), .D(n53), .Q(result_o[2]) );
  AOI2110 U55 ( .A(res_v_3_), .B(n12), .C(n54), .D(n55), .Q(n53) );
  AOI210 U56 ( .A(n56), .B(n16), .C(n57), .Q(n55) );
  IMUX20 U57 ( .A(n18), .B(n19), .S(n58), .Q(n56) );
  NOR20 U58 ( .A(n21), .B(n59), .Q(n54) );
  IMUX20 U59 ( .A(n60), .B(n24), .S(n58), .Q(n52) );
  OAI210 U60 ( .A(side_b_i[2]), .B(n25), .C(n26), .Q(n60) );
  OAI2110 U61 ( .A(n8), .B(n61), .C(n62), .D(n63), .Q(result_o[3]) );
  AOI2110 U62 ( .A(res_v_4_), .B(n12), .C(n64), .D(n65), .Q(n63) );
  AOI210 U63 ( .A(n66), .B(n16), .C(n67), .Q(n65) );
  IMUX20 U64 ( .A(n18), .B(n19), .S(n51), .Q(n66) );
  NOR20 U65 ( .A(n21), .B(n58), .Q(n64) );
  IMUX20 U66 ( .A(n68), .B(n24), .S(n51), .Q(n62) );
  OAI210 U67 ( .A(side_b_i[3]), .B(n25), .C(n26), .Q(n68) );
  OAI2110 U68 ( .A(n8), .B(n22), .C(n69), .D(n70), .Q(result_o[4]) );
  AOI2110 U69 ( .A(res_v_5_), .B(n12), .C(n71), .D(n72), .Q(n70) );
  AOI210 U70 ( .A(n73), .B(n16), .C(n74), .Q(n72) );
  IMUX20 U71 ( .A(n18), .B(n19), .S(n61), .Q(n73) );
  NOR20 U72 ( .A(n21), .B(n51), .Q(n71) );
  CLKIN0 U73 ( .A(side_a_i[3]), .Q(n51) );
  IMUX20 U74 ( .A(n75), .B(n24), .S(n61), .Q(n69) );
  OAI210 U75 ( .A(side_b_i[4]), .B(n25), .C(n26), .Q(n75) );
  OAI2110 U76 ( .A(n8), .B(n20), .C(n76), .D(n77), .Q(result_o[5]) );
  AOI2110 U77 ( .A(res_v_6_), .B(n12), .C(n78), .D(n79), .Q(n77) );
  AOI210 U78 ( .A(n80), .B(n16), .C(n81), .Q(n79) );
  IMUX20 U79 ( .A(n18), .B(n19), .S(n22), .Q(n80) );
  NOR20 U80 ( .A(n21), .B(n61), .Q(n78) );
  CLKIN0 U81 ( .A(side_a_i[4]), .Q(n61) );
  IMUX20 U82 ( .A(n82), .B(n24), .S(n22), .Q(n76) );
  CLKIN0 U83 ( .A(side_a_i[5]), .Q(n22) );
  OAI210 U84 ( .A(side_b_i[5]), .B(n25), .C(n26), .Q(n82) );
  CLKIN0 U85 ( .A(side_a_i[6]), .Q(n20) );
  NOR40 U86 ( .A(result_o[1]), .B(result_o[15]), .C(result_o[14]), .D(
        result_o[13]), .Q(n3) );
  OAI2110 U87 ( .A(n8), .B(n83), .C(n84), .D(n85), .Q(result_o[13]) );
  AOI2110 U88 ( .A(res_v_14_), .B(n12), .C(n86), .D(n87), .Q(n85) );
  AOI210 U89 ( .A(n88), .B(n16), .C(n89), .Q(n87) );
  IMUX20 U90 ( .A(n18), .B(n19), .S(n90), .Q(n88) );
  NOR20 U91 ( .A(n21), .B(n91), .Q(n86) );
  IMUX20 U92 ( .A(n92), .B(n24), .S(n90), .Q(n84) );
  OAI210 U93 ( .A(side_b_i[13]), .B(n25), .C(n26), .Q(n92) );
  OAI2110 U94 ( .A(n8), .B(n93), .C(n94), .D(n95), .Q(result_o[14]) );
  AOI2110 U95 ( .A(res_v_15_), .B(n12), .C(n96), .D(n97), .Q(n95) );
  AOI210 U96 ( .A(n98), .B(n16), .C(n99), .Q(n97) );
  IMUX20 U97 ( .A(n18), .B(n19), .S(n83), .Q(n98) );
  NOR20 U98 ( .A(n21), .B(n90), .Q(n96) );
  IMUX20 U99 ( .A(n100), .B(n24), .S(n83), .Q(n94) );
  OAI210 U100 ( .A(side_b_i[14]), .B(n25), .C(n26), .Q(n100) );
  OAI2110 U101 ( .A(n8), .B(n101), .C(n102), .D(n103), .Q(result_o[15]) );
  AOI2110 U102 ( .A(res_v_16_), .B(n12), .C(n104), .D(n105), .Q(n103) );
  AOI210 U103 ( .A(n106), .B(n16), .C(n107), .Q(n105) );
  IMUX20 U104 ( .A(n18), .B(n19), .S(n93), .Q(n106) );
  NOR20 U105 ( .A(n21), .B(n83), .Q(n104) );
  CLKIN0 U106 ( .A(side_a_i[14]), .Q(n83) );
  IMUX20 U107 ( .A(n108), .B(n24), .S(n93), .Q(n102) );
  OAI210 U108 ( .A(side_b_i[15]), .B(n25), .C(n26), .Q(n108) );
  OAI2110 U109 ( .A(n8), .B(n58), .C(n109), .D(n110), .Q(result_o[1]) );
  AOI2110 U110 ( .A(res_v_2_), .B(n12), .C(n111), .D(n112), .Q(n110) );
  AOI210 U111 ( .A(n113), .B(n16), .C(n114), .Q(n112) );
  IMUX20 U112 ( .A(n18), .B(n19), .S(n59), .Q(n113) );
  NOR20 U113 ( .A(n21), .B(n115), .Q(n111) );
  IMUX20 U114 ( .A(n116), .B(n24), .S(n59), .Q(n109) );
  OAI210 U115 ( .A(side_b_i[1]), .B(n25), .C(n26), .Q(n116) );
  CLKIN0 U116 ( .A(side_a_i[2]), .Q(n58) );
  NOR40 U117 ( .A(result_o[12]), .B(result_o[11]), .C(result_o[10]), .D(
        result_o[0]), .Q(n2) );
  OAI2110 U118 ( .A(n8), .B(n59), .C(n117), .D(n118), .Q(result_o[0]) );
  AOI2110 U119 ( .A(res_v_1_), .B(n12), .C(n119), .D(n120), .Q(n118) );
  AOI210 U120 ( .A(n121), .B(n16), .C(n122), .Q(n120) );
  IMUX20 U121 ( .A(n19), .B(n18), .S(side_a_i[0]), .Q(n121) );
  NOR20 U122 ( .A(n21), .B(n101), .Q(n119) );
  CLKIN0 U123 ( .A(carry_i), .Q(n101) );
  IMUX20 U124 ( .A(n24), .B(n123), .S(side_a_i[0]), .Q(n117) );
  OAI210 U125 ( .A(side_b_i[0]), .B(n25), .C(n26), .Q(n123) );
  CLKIN0 U126 ( .A(side_a_i[1]), .Q(n59) );
  OAI2110 U127 ( .A(n8), .B(n124), .C(n125), .D(n126), .Q(result_o[10]) );
  AOI2110 U128 ( .A(res_v_11_), .B(n12), .C(n127), .D(n128), .Q(n126) );
  AOI210 U129 ( .A(n129), .B(n16), .C(n130), .Q(n128) );
  IMUX20 U130 ( .A(n18), .B(n19), .S(n43), .Q(n129) );
  NOR20 U131 ( .A(n35), .B(n21), .Q(n127) );
  CLKIN0 U132 ( .A(side_a_i[9]), .Q(n35) );
  IMUX20 U133 ( .A(n131), .B(n24), .S(n43), .Q(n125) );
  OAI210 U134 ( .A(side_b_i[10]), .B(n25), .C(n26), .Q(n131) );
  OAI2110 U135 ( .A(n8), .B(n91), .C(n132), .D(n133), .Q(result_o[11]) );
  AOI2110 U136 ( .A(res_v_12_), .B(n12), .C(n134), .D(n135), .Q(n133) );
  AOI210 U137 ( .A(n136), .B(n16), .C(n137), .Q(n135) );
  IMUX20 U138 ( .A(n18), .B(n19), .S(n124), .Q(n136) );
  NOR20 U139 ( .A(n21), .B(n43), .Q(n134) );
  CLKIN0 U140 ( .A(side_a_i[10]), .Q(n43) );
  IMUX20 U141 ( .A(n138), .B(n24), .S(n124), .Q(n132) );
  OAI210 U142 ( .A(side_b_i[11]), .B(n25), .C(n26), .Q(n138) );
  OAI2110 U143 ( .A(n8), .B(n90), .C(n139), .D(n140), .Q(result_o[12]) );
  AOI2110 U144 ( .A(res_v_13_), .B(n12), .C(n141), .D(n142), .Q(n140) );
  AOI210 U145 ( .A(n143), .B(n16), .C(n144), .Q(n142) );
  IMUX20 U146 ( .A(n18), .B(n19), .S(n91), .Q(n143) );
  NOR20 U147 ( .A(n21), .B(n124), .Q(n141) );
  CLKIN0 U148 ( .A(side_a_i[11]), .Q(n124) );
  IMUX20 U149 ( .A(n149), .B(n24), .S(n91), .Q(n139) );
  CLKIN0 U150 ( .A(side_a_i[12]), .Q(n91) );
  OAI210 U151 ( .A(side_b_i[12]), .B(n25), .C(n26), .Q(n149) );
  CLKIN0 U152 ( .A(n153), .Q(n146) );
  NAND20 U153 ( .A(alu_func_i[0]), .B(n18), .Q(n153) );
  NOR20 U154 ( .A(n152), .B(alu_func_i[2]), .Q(n145) );
  NAND20 U155 ( .A(alu_func_i[1]), .B(n154), .Q(n152) );
  CLKIN0 U156 ( .A(side_a_i[13]), .Q(n90) );
  NAND20 U157 ( .A(n155), .B(n156), .Q(carry_o) );
  MUX21 U158 ( .A(n148), .B(n147), .S(res_v_17_), .Q(n156) );
  CLKIN0 U159 ( .A(n157), .Q(n155) );
  OAI220 U160 ( .A(n93), .B(n21), .C(n115), .D(n8), .Q(n157) );
  CLKIN0 U161 ( .A(side_a_i[0]), .Q(n115) );
  NOR30 U162 ( .A(n151), .B(alu_func_i[1]), .C(n154), .Q(n158) );
  CLKIN0 U163 ( .A(side_a_i[15]), .Q(n93) );
  IMUX20 U164 ( .A(n147), .B(n148), .S(n159), .Q(add_cin) );
  NOR20 U165 ( .A(alu_func_i[1]), .B(carry_i), .Q(n159) );
  CLKIN0 U166 ( .A(n160), .Q(n148) );
  NAND20 U167 ( .A(n161), .B(n162), .Q(add_b[9]) );
  IMUX20 U168 ( .A(n163), .B(n160), .S(n49), .Q(n161) );
  CLKIN0 U169 ( .A(side_b_i[9]), .Q(n49) );
  NAND20 U170 ( .A(n164), .B(n162), .Q(add_b[8]) );
  IMUX20 U171 ( .A(n163), .B(n160), .S(n41), .Q(n164) );
  CLKIN0 U172 ( .A(side_b_i[8]), .Q(n41) );
  NAND20 U173 ( .A(n165), .B(n162), .Q(add_b[7]) );
  IMUX20 U174 ( .A(n163), .B(n160), .S(n33), .Q(n165) );
  CLKIN0 U175 ( .A(side_b_i[7]), .Q(n33) );
  NAND20 U176 ( .A(n166), .B(n162), .Q(add_b[6]) );
  IMUX20 U177 ( .A(n163), .B(n160), .S(n17), .Q(n166) );
  CLKIN0 U178 ( .A(side_b_i[6]), .Q(n17) );
  NAND20 U179 ( .A(n167), .B(n162), .Q(add_b[5]) );
  IMUX20 U180 ( .A(n163), .B(n160), .S(n81), .Q(n167) );
  CLKIN0 U181 ( .A(side_b_i[5]), .Q(n81) );
  NAND20 U182 ( .A(n168), .B(n162), .Q(add_b[4]) );
  IMUX20 U183 ( .A(n163), .B(n160), .S(n74), .Q(n168) );
  CLKIN0 U184 ( .A(side_b_i[4]), .Q(n74) );
  NAND20 U185 ( .A(n169), .B(n162), .Q(add_b[3]) );
  IMUX20 U186 ( .A(n163), .B(n160), .S(n67), .Q(n169) );
  CLKIN0 U187 ( .A(side_b_i[3]), .Q(n67) );
  NAND20 U188 ( .A(n170), .B(n162), .Q(add_b[2]) );
  IMUX20 U189 ( .A(n163), .B(n160), .S(n57), .Q(n170) );
  CLKIN0 U190 ( .A(side_b_i[2]), .Q(n57) );
  NAND20 U191 ( .A(n171), .B(n162), .Q(add_b[1]) );
  IMUX20 U192 ( .A(n163), .B(n160), .S(n114), .Q(n171) );
  CLKIN0 U193 ( .A(side_b_i[1]), .Q(n114) );
  NAND20 U194 ( .A(n172), .B(n162), .Q(add_b[15]) );
  IMUX20 U195 ( .A(n163), .B(n160), .S(n107), .Q(n172) );
  CLKIN0 U196 ( .A(side_b_i[15]), .Q(n107) );
  NAND20 U197 ( .A(n173), .B(n162), .Q(add_b[14]) );
  IMUX20 U198 ( .A(n163), .B(n160), .S(n99), .Q(n173) );
  CLKIN0 U199 ( .A(side_b_i[14]), .Q(n99) );
  NAND20 U200 ( .A(n174), .B(n162), .Q(add_b[13]) );
  IMUX20 U201 ( .A(n163), .B(n160), .S(n89), .Q(n174) );
  CLKIN0 U202 ( .A(side_b_i[13]), .Q(n89) );
  NAND20 U203 ( .A(n175), .B(n162), .Q(add_b[12]) );
  IMUX20 U204 ( .A(n163), .B(n160), .S(n144), .Q(n175) );
  CLKIN0 U205 ( .A(side_b_i[12]), .Q(n144) );
  NAND20 U206 ( .A(n176), .B(n162), .Q(add_b[11]) );
  IMUX20 U207 ( .A(n163), .B(n160), .S(n137), .Q(n176) );
  CLKIN0 U208 ( .A(side_b_i[11]), .Q(n137) );
  NAND20 U209 ( .A(n177), .B(n162), .Q(add_b[10]) );
  IMUX20 U210 ( .A(n163), .B(n160), .S(n130), .Q(n177) );
  CLKIN0 U211 ( .A(side_b_i[10]), .Q(n130) );
  NAND20 U212 ( .A(n178), .B(n162), .Q(add_b[0]) );
  IMUX20 U213 ( .A(n163), .B(n160), .S(n122), .Q(n178) );
  CLKIN0 U214 ( .A(side_b_i[0]), .Q(n122) );
  CLKIN0 U215 ( .A(alu_func_i[3]), .Q(n154) );
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
  wire   NextMemRead, NextMemWrite, NextCpuHalt, NextIllegalInst, N359, net252,
         n6, n12, n14, n15, n16, n46, n1, n2, n3, n4, n5, n7, n10, n11, n13,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82;
  wire   [2:0] NextCycle;

  DFC3 IllegalInst_reg ( .D(NextIllegalInst), .C(clk_i), .RN(res_i), .Q(
        illegal_inst_o), .QN(n6) );
  DFC3 Cycle_reg_0_ ( .D(NextCycle[0]), .C(net252), .RN(res_i), .QN(n15) );
  DFC3 Cycle_reg_1_ ( .D(NextCycle[1]), .C(net252), .RN(res_i), .Q(n1), .QN(
        n14) );
  DFC3 Cycle_reg_2_ ( .D(NextCycle[2]), .C(net252), .RN(res_i), .Q(n2), .QN(
        n12) );
  DFC3 mem_rd_stb_o_reg ( .D(NextMemRead), .C(clk_i), .RN(res_i), .Q(
        mem_rd_stb_o) );
  DFC3 mem_wr_stb_o_reg ( .D(NextMemWrite), .C(clk_i), .RN(res_i), .Q(
        mem_wr_stb_o) );
  DFC3 cpu_halt_o_reg ( .D(NextCpuHalt), .C(clk_i), .RN(res_i), .Q(cpu_halt_o)
         );
  SNPS_CLOCK_GATE_HIGH_control clk_gate_Cycle_reg ( .CLK(clk_i), .EN(N359), 
        .ENCLK(net252) );
  DFEC1 Carry_reg ( .D(carry_i), .E(n46), .C(net252), .RN(res_i), .QN(n16) );
  DFEC1 Zero_reg ( .D(zero_i), .E(n46), .C(net252), .RN(res_i), .QN(n10) );
  INV3 U3 ( .A(n7), .Q(n3) );
  AOI311 U4 ( .A(n54), .B(n55), .C(n56), .D(n30), .Q(alu_func_o[0]) );
  OAI2111 U5 ( .A(n29), .B(n30), .C(n13), .D(n17), .Q(alu_func_o[1]) );
  NAND31 U6 ( .A(n12), .B(n1), .C(n15), .Q(n30) );
  INV3 U7 ( .A(op_code_i[3]), .Q(n49) );
  INV3 U8 ( .A(op_code_i[2]), .Q(n53) );
  NAND22 U9 ( .A(n68), .B(n34), .Q(n27) );
  INV3 U10 ( .A(op_code_i[4]), .Q(n33) );
  OAI222 U11 ( .A(n25), .B(n26), .C(n27), .D(n28), .Q(sel_addr_o) );
  NOR22 U12 ( .A(n39), .B(n27), .Q(sel_load_o) );
  NAND24 U13 ( .A(n17), .B(n3), .Q(sel_pc_o) );
  CLKIN0 U14 ( .A(n11), .Q(n4) );
  NAND20 U15 ( .A(n69), .B(n4), .Q(n5) );
  NAND20 U16 ( .A(n18), .B(n5), .Q(n7) );
  NAND22 U17 ( .A(sel_load_o), .B(n25), .Q(n17) );
  INV3 U18 ( .A(n69), .Q(n13) );
  NOR40 U19 ( .A(n19), .B(n20), .C(n21), .D(n22), .Q(n11) );
  NOR20 U20 ( .A(n23), .B(n24), .Q(n21) );
  IMUX20 U21 ( .A(n16), .B(n10), .S(op_code_i[0]), .Q(n24) );
  AOI210 U22 ( .A(op_code_i[4]), .B(n31), .C(n32), .Q(n29) );
  AOI310 U23 ( .A(n33), .B(n34), .C(n35), .D(n36), .Q(n46) );
  AOI210 U24 ( .A(op_code_i[1]), .B(op_code_i[2]), .C(n37), .Q(n35) );
  AOI210 U25 ( .A(n38), .B(n39), .C(n36), .Q(clk_en_reg_file_o) );
  OAI210 U26 ( .A(n40), .B(n13), .C(n17), .Q(clk_en_pc_o) );
  OAI210 U27 ( .A(n41), .B(n30), .C(n42), .Q(clk_en_op_code_o) );
  NOR30 U28 ( .A(n27), .B(n16), .C(n43), .Q(carry_o) );
  AOI220 U29 ( .A(n44), .B(op_code_i[0]), .C(n45), .D(op_code_i[1]), .Q(n43)
         );
  OAI2110 U30 ( .A(n47), .B(n30), .C(n13), .D(n17), .Q(alu_func_o[3]) );
  AOI210 U31 ( .A(op_code_i[4]), .B(n48), .C(n44), .Q(n47) );
  OAI210 U32 ( .A(n37), .B(n49), .C(n50), .Q(n48) );
  NOR20 U33 ( .A(n51), .B(n30), .Q(alu_func_o[2]) );
  AOI210 U34 ( .A(n52), .B(n53), .C(n45), .Q(n51) );
  AOI210 U35 ( .A(n52), .B(n57), .C(n32), .Q(n56) );
  OAI310 U36 ( .A(n50), .B(op_code_i[4]), .C(n58), .D(n59), .Q(n32) );
  NAND30 U37 ( .A(op_code_i[4]), .B(op_code_i[0]), .C(n31), .Q(n59) );
  CLKIN0 U38 ( .A(n60), .Q(n57) );
  NAND20 U39 ( .A(n45), .B(op_code_i[0]), .Q(n55) );
  NOR20 U40 ( .A(n50), .B(n33), .Q(n45) );
  AOI210 U41 ( .A(n44), .B(op_code_i[1]), .C(n61), .Q(n54) );
  NOR40 U42 ( .A(op_code_i[2]), .B(n49), .C(n58), .D(n33), .Q(n61) );
  NOR20 U43 ( .A(n62), .B(n53), .Q(n44) );
  CLKIN0 U44 ( .A(n52), .Q(n62) );
  NOR30 U45 ( .A(n28), .B(op_code_i[5]), .C(n13), .Q(NextMemWrite) );
  NAND30 U46 ( .A(n63), .B(n26), .C(n64), .Q(NextMemRead) );
  CLKIN0 U47 ( .A(n65), .Q(n64) );
  OAI220 U48 ( .A(n13), .B(n66), .C(n28), .D(n27), .Q(n65) );
  CLKIN0 U49 ( .A(n19), .Q(n28) );
  NOR40 U50 ( .A(n22), .B(n67), .C(n20), .D(op_code_i[3]), .Q(n66) );
  CLKIN0 U51 ( .A(sel_load_o), .Q(n26) );
  CLKIN0 U52 ( .A(n18), .Q(NextIllegalInst) );
  OAI210 U53 ( .A(reg_decode_error_i), .B(n67), .C(n69), .Q(n18) );
  OAI310 U54 ( .A(n36), .B(op_code_i[5]), .C(n70), .D(n63), .Q(NextCycle[2])
         );
  NAND20 U55 ( .A(n71), .B(n12), .Q(n63) );
  NOR20 U56 ( .A(n72), .B(n19), .Q(n70) );
  CLKIN0 U57 ( .A(n39), .Q(n72) );
  NAND30 U58 ( .A(n49), .B(n33), .C(n31), .Q(n39) );
  NOR20 U59 ( .A(n23), .B(op_code_i[2]), .Q(n31) );
  OAI220 U60 ( .A(n6), .B(n30), .C(n40), .D(n13), .Q(NextCycle[1]) );
  NOR40 U61 ( .A(n22), .B(n67), .C(n19), .D(op_code_i[3]), .Q(n40) );
  NOR40 U62 ( .A(n58), .B(n53), .C(op_code_i[3]), .D(op_code_i[4]), .Q(n19) );
  OAI210 U63 ( .A(n60), .B(n49), .C(n73), .Q(n67) );
  AOI310 U64 ( .A(n58), .B(n33), .C(op_code_i[2]), .D(op_code_i[5]), .Q(n73)
         );
  OAI2110 U65 ( .A(n37), .B(n74), .C(n50), .D(n33), .Q(n22) );
  NAND20 U66 ( .A(n53), .B(n49), .Q(n74) );
  OAI2110 U67 ( .A(n41), .B(n36), .C(n42), .D(n75), .Q(NextCycle[0]) );
  NAND20 U68 ( .A(n71), .B(n2), .Q(n42) );
  CLKIN0 U69 ( .A(n76), .Q(n71) );
  NAND20 U70 ( .A(n6), .B(n68), .Q(n36) );
  CLKIN0 U71 ( .A(n30), .Q(n68) );
  CLKIN0 U72 ( .A(n77), .Q(n41) );
  OAI2110 U73 ( .A(op_code_i[2]), .B(n58), .C(n49), .D(n38), .Q(n77) );
  NOR40 U74 ( .A(n78), .B(n52), .C(n79), .D(n80), .Q(n38) );
  CLKIN0 U75 ( .A(n50), .Q(n80) );
  NAND20 U76 ( .A(op_code_i[3]), .B(op_code_i[2]), .Q(n50) );
  CLKIN0 U77 ( .A(n81), .Q(n79) );
  NOR20 U78 ( .A(op_code_i[5]), .B(n37), .Q(n81) );
  NOR20 U79 ( .A(n33), .B(op_code_i[3]), .Q(n52) );
  AOI210 U80 ( .A(n33), .B(n53), .C(n23), .Q(n78) );
  NAND20 U81 ( .A(n23), .B(n25), .Q(n58) );
  CLKIN0 U82 ( .A(op_code_i[1]), .Q(n23) );
  CLKIN0 U83 ( .A(n75), .Q(NextCpuHalt) );
  NAND30 U84 ( .A(n69), .B(n34), .C(n20), .Q(n75) );
  NOR30 U85 ( .A(op_code_i[3]), .B(op_code_i[4]), .C(n60), .Q(n20) );
  NAND20 U86 ( .A(n37), .B(n53), .Q(n60) );
  NOR20 U87 ( .A(n25), .B(op_code_i[1]), .Q(n37) );
  CLKIN0 U88 ( .A(op_code_i[0]), .Q(n25) );
  CLKIN0 U89 ( .A(op_code_i[5]), .Q(n34) );
  NOR30 U90 ( .A(n2), .B(n15), .C(n1), .Q(n69) );
  NAND20 U91 ( .A(n76), .B(n82), .Q(N359) );
  OAI210 U92 ( .A(n14), .B(n15), .C(n12), .Q(n82) );
  NAND20 U93 ( .A(n15), .B(n14), .Q(n76) );
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
  wire   N11, N12, N13, N14, N17, N18, N19, N20, net267, net272, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n105, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n52,
         n53, n54, n55, n56, n57, n58, n59;
  wire   [15:0] AluSideA;
  wire   [15:0] RegTmpB;
  wire   [15:0] AluResult;
  wire   [3:0] RegAIdx;
  wire   [3:0] RegBIdx;
  wire   [15:0] Load;
  wire   [15:0] RaValue;
  wire   [15:0] RbValue;
  wire   [15:0] Pc;

  DFC3 RegPC_reg_15_ ( .D(Pc[15]), .C(net267), .RN(res_i), .QN(n11) );
  DFC3 RegPC_reg_0_ ( .D(n59), .C(net267), .RN(res_i), .QN(n1) );
  DFC3 RegPC_reg_1_ ( .D(n58), .C(net267), .RN(res_i), .QN(n10) );
  DFC3 RegPC_reg_2_ ( .D(n57), .C(net267), .RN(res_i), .QN(n9) );
  DFC3 RegPC_reg_3_ ( .D(n56), .C(net267), .RN(res_i), .QN(n8) );
  DFC3 RegPC_reg_4_ ( .D(Pc[4]), .C(net267), .RN(res_i), .QN(n7) );
  DFC3 RegPC_reg_5_ ( .D(n55), .C(net267), .RN(res_i), .QN(n6) );
  DFC3 RegPC_reg_6_ ( .D(n54), .C(net267), .RN(res_i), .QN(n5) );
  DFC3 RegPC_reg_7_ ( .D(n53), .C(net267), .RN(res_i), .QN(n4) );
  DFC3 RegPC_reg_8_ ( .D(n52), .C(net267), .RN(res_i), .QN(n3) );
  DFC3 RegPC_reg_9_ ( .D(Pc[9]), .C(net267), .RN(res_i), .QN(n2) );
  DFC3 RegPC_reg_10_ ( .D(Pc[10]), .C(net267), .RN(res_i), .QN(n15) );
  DFC3 RegPC_reg_11_ ( .D(Pc[11]), .C(net267), .RN(res_i), .QN(n14) );
  DFC3 RegPC_reg_12_ ( .D(Pc[12]), .C(net267), .RN(res_i), .QN(n13) );
  DFC3 RegPC_reg_13_ ( .D(Pc[13]), .C(net267), .RN(res_i), .QN(n12) );
  DFC3 RegPC_reg_14_ ( .D(Pc[14]), .C(net267), .RN(res_i), .QN(n105) );
  DFC3 RegOpcode_reg_5_ ( .D(mem_data_i[15]), .C(net272), .RN(res_i), .Q(
        op_code_o[5]) );
  DFC3 RegOpcode_reg_3_ ( .D(mem_data_i[13]), .C(net272), .RN(res_i), .Q(
        op_code_o[3]) );
  DFC3 RegOpcode_reg_2_ ( .D(mem_data_i[12]), .C(net272), .RN(res_i), .Q(
        op_code_o[2]) );
  DFC3 RegOpcode_reg_1_ ( .D(mem_data_i[11]), .C(net272), .RN(res_i), .Q(
        op_code_o[1]) );
  DFC3 RegOpcode_reg_0_ ( .D(mem_data_i[10]), .C(net272), .RN(res_i), .Q(
        op_code_o[0]) );
  DFP3 RegAIdx_reg_3_ ( .D(N14), .C(net272), .SN(res_i), .Q(RegAIdx[3]) );
  DFP3 RegAIdx_reg_1_ ( .D(N12), .C(net272), .SN(res_i), .Q(RegAIdx[1]) );
  DFP3 RegBIdx_reg_3_ ( .D(N20), .C(net272), .SN(res_i), .Q(RegBIdx[3]) );
  DFP3 RegBIdx_reg_1_ ( .D(N18), .C(net272), .SN(res_i), .Q(RegBIdx[1]) );
  DF3 RegTmpB_reg_0_ ( .D(RbValue[0]), .C(clk_i), .Q(RegTmpB[0]), .QN(n36) );
  DF3 RegTmpB_reg_1_ ( .D(RbValue[1]), .C(clk_i), .Q(RegTmpB[1]), .QN(n35) );
  DF3 RegTmpB_reg_2_ ( .D(RbValue[2]), .C(clk_i), .Q(RegTmpB[2]), .QN(n34) );
  DF3 RegTmpB_reg_3_ ( .D(RbValue[3]), .C(clk_i), .Q(RegTmpB[3]), .QN(n33) );
  DF3 RegTmpB_reg_4_ ( .D(RbValue[4]), .C(clk_i), .Q(RegTmpB[4]), .QN(n32) );
  DF3 RegTmpB_reg_5_ ( .D(RbValue[5]), .C(clk_i), .Q(RegTmpB[5]), .QN(n31) );
  DF3 RegTmpB_reg_6_ ( .D(RbValue[6]), .C(clk_i), .Q(RegTmpB[6]), .QN(n30) );
  DF3 RegTmpB_reg_7_ ( .D(RbValue[7]), .C(clk_i), .Q(RegTmpB[7]), .QN(n29) );
  DF3 RegTmpB_reg_8_ ( .D(RbValue[8]), .C(clk_i), .Q(RegTmpB[8]), .QN(n28) );
  DF3 RegTmpB_reg_9_ ( .D(RbValue[9]), .C(clk_i), .Q(RegTmpB[9]), .QN(n27) );
  DF3 RegTmpB_reg_10_ ( .D(RbValue[10]), .C(clk_i), .Q(RegTmpB[10]), .QN(n26)
         );
  DF3 RegTmpB_reg_11_ ( .D(RbValue[11]), .C(clk_i), .Q(RegTmpB[11]), .QN(n25)
         );
  DF3 RegTmpB_reg_12_ ( .D(RbValue[12]), .C(clk_i), .Q(RegTmpB[12]), .QN(n24)
         );
  DF3 RegTmpB_reg_13_ ( .D(RbValue[13]), .C(clk_i), .Q(RegTmpB[13]), .QN(n23)
         );
  DF3 RegTmpB_reg_14_ ( .D(RbValue[14]), .C(clk_i), .Q(RegTmpB[14]), .QN(n22)
         );
  DF3 RegTmpB_reg_15_ ( .D(RbValue[15]), .C(clk_i), .Q(RegTmpB[15]), .QN(n21)
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
  SNPS_CLOCK_GATE_HIGH_datapath_0 clk_gate_RegPC_reg ( .CLK(clk_i), .EN(
        clk_en_pc_i), .ENCLK(net267) );
  SNPS_CLOCK_GATE_HIGH_datapath_1 clk_gate_RegOpcode_reg ( .CLK(clk_i), .EN(
        clk_en_op_code_i), .ENCLK(net272) );
  DFP1 RegBIdx_reg_0_ ( .D(N17), .C(net272), .SN(res_i), .Q(RegBIdx[0]) );
  DFP1 RegBIdx_reg_2_ ( .D(N19), .C(net272), .SN(res_i), .Q(RegBIdx[2]) );
  DFP1 RegAIdx_reg_0_ ( .D(N11), .C(net272), .SN(res_i), .Q(RegAIdx[0]) );
  DFP1 RegAIdx_reg_2_ ( .D(N13), .C(net272), .SN(res_i), .Q(RegAIdx[2]) );
  DFC1 RegOpcode_reg_4_ ( .D(mem_data_i[14]), .C(net272), .RN(res_i), .Q(
        op_code_o[4]) );
  IMUX21 U3 ( .A(n103), .B(n1), .S(sel_pc_i), .Q(AluSideA[0]) );
  MUX21 U4 ( .A(RaValue[8]), .B(AluResult[8]), .S(sel_pc_i), .Q(n52) );
  MUX21 U5 ( .A(RaValue[7]), .B(AluResult[7]), .S(sel_pc_i), .Q(n53) );
  MUX21 U6 ( .A(RaValue[6]), .B(AluResult[6]), .S(sel_pc_i), .Q(n54) );
  MUX21 U7 ( .A(RaValue[5]), .B(AluResult[5]), .S(sel_pc_i), .Q(n55) );
  MUX21 U8 ( .A(RaValue[3]), .B(AluResult[3]), .S(sel_pc_i), .Q(n56) );
  MUX21 U9 ( .A(RaValue[2]), .B(AluResult[2]), .S(sel_pc_i), .Q(n57) );
  MUX21 U10 ( .A(RaValue[1]), .B(AluResult[1]), .S(sel_pc_i), .Q(n58) );
  MUX21 U11 ( .A(RaValue[0]), .B(AluResult[0]), .S(sel_pc_i), .Q(n59) );
  IMUX20 U12 ( .A(n2), .B(n27), .S(sel_addr_i), .Q(mem_addr_o[9]) );
  IMUX20 U13 ( .A(n3), .B(n28), .S(sel_addr_i), .Q(mem_addr_o[8]) );
  IMUX20 U14 ( .A(n4), .B(n29), .S(sel_addr_i), .Q(mem_addr_o[7]) );
  IMUX20 U15 ( .A(n5), .B(n30), .S(sel_addr_i), .Q(mem_addr_o[6]) );
  IMUX20 U16 ( .A(n6), .B(n31), .S(sel_addr_i), .Q(mem_addr_o[5]) );
  IMUX20 U17 ( .A(n7), .B(n32), .S(sel_addr_i), .Q(mem_addr_o[4]) );
  IMUX20 U18 ( .A(n8), .B(n33), .S(sel_addr_i), .Q(mem_addr_o[3]) );
  IMUX20 U19 ( .A(n9), .B(n34), .S(sel_addr_i), .Q(mem_addr_o[2]) );
  IMUX20 U20 ( .A(n10), .B(n35), .S(sel_addr_i), .Q(mem_addr_o[1]) );
  IMUX20 U21 ( .A(n11), .B(n21), .S(sel_addr_i), .Q(mem_addr_o[15]) );
  IMUX20 U22 ( .A(n105), .B(n22), .S(sel_addr_i), .Q(mem_addr_o[14]) );
  IMUX20 U23 ( .A(n12), .B(n23), .S(sel_addr_i), .Q(mem_addr_o[13]) );
  IMUX20 U24 ( .A(n13), .B(n24), .S(sel_addr_i), .Q(mem_addr_o[12]) );
  IMUX20 U25 ( .A(n14), .B(n25), .S(sel_addr_i), .Q(mem_addr_o[11]) );
  IMUX20 U26 ( .A(n15), .B(n26), .S(sel_addr_i), .Q(mem_addr_o[10]) );
  IMUX20 U27 ( .A(n1), .B(n36), .S(sel_addr_i), .Q(mem_addr_o[0]) );
  MUX21 U28 ( .A(RaValue[9]), .B(AluResult[9]), .S(sel_pc_i), .Q(Pc[9]) );
  MUX21 U29 ( .A(RaValue[4]), .B(AluResult[4]), .S(sel_pc_i), .Q(Pc[4]) );
  MUX21 U30 ( .A(RaValue[15]), .B(AluResult[15]), .S(sel_pc_i), .Q(Pc[15]) );
  MUX21 U31 ( .A(RaValue[14]), .B(AluResult[14]), .S(sel_pc_i), .Q(Pc[14]) );
  MUX21 U32 ( .A(RaValue[13]), .B(AluResult[13]), .S(sel_pc_i), .Q(Pc[13]) );
  MUX21 U33 ( .A(RaValue[12]), .B(AluResult[12]), .S(sel_pc_i), .Q(Pc[12]) );
  MUX21 U34 ( .A(RaValue[11]), .B(AluResult[11]), .S(sel_pc_i), .Q(Pc[11]) );
  MUX21 U35 ( .A(RaValue[10]), .B(AluResult[10]), .S(sel_pc_i), .Q(Pc[10]) );
  NAND20 U36 ( .A(n37), .B(n38), .Q(reg_decode_error_o) );
  NAND40 U37 ( .A(RegBIdx[0]), .B(RegBIdx[1]), .C(RegBIdx[2]), .D(RegBIdx[3]), 
        .Q(n38) );
  NAND40 U38 ( .A(RegAIdx[0]), .B(RegAIdx[1]), .C(RegAIdx[2]), .D(RegAIdx[3]), 
        .Q(n37) );
  CLKIN0 U39 ( .A(n39), .Q(N20) );
  NAND20 U40 ( .A(n39), .B(n40), .Q(N19) );
  CLKIN0 U41 ( .A(mem_data_i[2]), .Q(n40) );
  NAND20 U42 ( .A(n39), .B(n41), .Q(N18) );
  CLKIN0 U43 ( .A(mem_data_i[1]), .Q(n41) );
  NAND20 U44 ( .A(n39), .B(n42), .Q(N17) );
  CLKIN0 U45 ( .A(mem_data_i[0]), .Q(n42) );
  NOR20 U46 ( .A(mem_data_i[4]), .B(mem_data_i[3]), .Q(n39) );
  CLKIN0 U47 ( .A(n43), .Q(N14) );
  NAND20 U48 ( .A(n43), .B(n44), .Q(N13) );
  CLKIN0 U49 ( .A(mem_data_i[7]), .Q(n44) );
  NAND20 U50 ( .A(n43), .B(n45), .Q(N12) );
  CLKIN0 U51 ( .A(mem_data_i[6]), .Q(n45) );
  NAND20 U52 ( .A(n43), .B(n46), .Q(N11) );
  CLKIN0 U53 ( .A(mem_data_i[5]), .Q(n46) );
  NOR20 U54 ( .A(mem_data_i[9]), .B(mem_data_i[8]), .Q(n43) );
  MUX21 U55 ( .A(AluResult[9]), .B(mem_data_i[9]), .S(sel_load_i), .Q(Load[9])
         );
  MUX21 U56 ( .A(AluResult[8]), .B(mem_data_i[8]), .S(sel_load_i), .Q(Load[8])
         );
  MUX21 U57 ( .A(AluResult[7]), .B(mem_data_i[7]), .S(sel_load_i), .Q(Load[7])
         );
  MUX21 U58 ( .A(AluResult[6]), .B(mem_data_i[6]), .S(sel_load_i), .Q(Load[6])
         );
  MUX21 U59 ( .A(AluResult[5]), .B(mem_data_i[5]), .S(sel_load_i), .Q(Load[5])
         );
  MUX21 U60 ( .A(AluResult[4]), .B(mem_data_i[4]), .S(sel_load_i), .Q(Load[4])
         );
  MUX21 U61 ( .A(AluResult[3]), .B(mem_data_i[3]), .S(sel_load_i), .Q(Load[3])
         );
  MUX21 U62 ( .A(AluResult[2]), .B(mem_data_i[2]), .S(sel_load_i), .Q(Load[2])
         );
  MUX21 U63 ( .A(AluResult[1]), .B(mem_data_i[1]), .S(sel_load_i), .Q(Load[1])
         );
  MUX21 U64 ( .A(AluResult[15]), .B(mem_data_i[15]), .S(sel_load_i), .Q(
        Load[15]) );
  MUX21 U65 ( .A(AluResult[14]), .B(mem_data_i[14]), .S(sel_load_i), .Q(
        Load[14]) );
  MUX21 U66 ( .A(AluResult[13]), .B(mem_data_i[13]), .S(sel_load_i), .Q(
        Load[13]) );
  MUX21 U67 ( .A(AluResult[12]), .B(mem_data_i[12]), .S(sel_load_i), .Q(
        Load[12]) );
  MUX21 U68 ( .A(AluResult[11]), .B(mem_data_i[11]), .S(sel_load_i), .Q(
        Load[11]) );
  MUX21 U69 ( .A(AluResult[10]), .B(mem_data_i[10]), .S(sel_load_i), .Q(
        Load[10]) );
  MUX21 U70 ( .A(AluResult[0]), .B(mem_data_i[0]), .S(sel_load_i), .Q(Load[0])
         );
  IMUX20 U71 ( .A(n94), .B(n2), .S(sel_pc_i), .Q(AluSideA[9]) );
  IMUX20 U72 ( .A(n95), .B(n3), .S(sel_pc_i), .Q(AluSideA[8]) );
  IMUX20 U73 ( .A(n96), .B(n4), .S(sel_pc_i), .Q(AluSideA[7]) );
  IMUX20 U74 ( .A(n97), .B(n5), .S(sel_pc_i), .Q(AluSideA[6]) );
  IMUX20 U75 ( .A(n98), .B(n6), .S(sel_pc_i), .Q(AluSideA[5]) );
  IMUX20 U76 ( .A(n99), .B(n7), .S(sel_pc_i), .Q(AluSideA[4]) );
  IMUX20 U77 ( .A(n100), .B(n8), .S(sel_pc_i), .Q(AluSideA[3]) );
  IMUX20 U78 ( .A(n101), .B(n9), .S(sel_pc_i), .Q(AluSideA[2]) );
  IMUX20 U79 ( .A(n102), .B(n10), .S(sel_pc_i), .Q(AluSideA[1]) );
  IMUX20 U80 ( .A(n88), .B(n11), .S(sel_pc_i), .Q(AluSideA[15]) );
  IMUX20 U81 ( .A(n89), .B(n105), .S(sel_pc_i), .Q(AluSideA[14]) );
  IMUX20 U82 ( .A(n90), .B(n12), .S(sel_pc_i), .Q(AluSideA[13]) );
  IMUX20 U83 ( .A(n91), .B(n13), .S(sel_pc_i), .Q(AluSideA[12]) );
  IMUX20 U84 ( .A(n92), .B(n14), .S(sel_pc_i), .Q(AluSideA[11]) );
  IMUX20 U85 ( .A(n93), .B(n15), .S(sel_pc_i), .Q(AluSideA[10]) );
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


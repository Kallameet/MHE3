
module SNPS_CLOCK_GATE_HIGH_reg_file_8_0_1 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;
  wire   n4, n9;

  DLSG1 latch ( .C(CLK), .E(EN), .SE(TE), .GCK(n4) );
  CLKIN0 U1 ( .A(n4), .Q(n9) );
  INV3 U2 ( .A(n9), .Q(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_reg_file_8_0_2 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;
  wire   n4, n9;

  DLSG1 latch ( .C(CLK), .E(EN), .SE(TE), .GCK(n4) );
  CLKIN0 U1 ( .A(n4), .Q(n9) );
  INV3 U2 ( .A(n9), .Q(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_reg_file_8_0_3 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;
  wire   n4, n9;

  DLSG1 latch ( .C(CLK), .E(EN), .SE(TE), .GCK(n4) );
  CLKIN0 U1 ( .A(n4), .Q(n9) );
  INV3 U2 ( .A(n9), .Q(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_reg_file_8_0_4 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;
  wire   n4, n9;

  DLSG1 latch ( .C(CLK), .E(EN), .SE(TE), .GCK(n4) );
  CLKIN0 U1 ( .A(n4), .Q(n9) );
  INV3 U2 ( .A(n9), .Q(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_reg_file_8_0_5 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;
  wire   n4, n9;

  DLSG1 latch ( .C(CLK), .E(EN), .SE(TE), .GCK(n4) );
  CLKIN0 U1 ( .A(n4), .Q(n9) );
  INV3 U2 ( .A(n9), .Q(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_reg_file_8_0_6 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;
  wire   n4, n9;

  DLSG1 latch ( .C(CLK), .E(EN), .SE(TE), .GCK(n4) );
  CLKIN0 U1 ( .A(n4), .Q(n9) );
  INV3 U2 ( .A(n9), .Q(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_reg_file_8_0_7 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;
  wire   n4, n9;

  DLSG1 latch ( .C(CLK), .E(EN), .SE(TE), .GCK(n4) );
  CLKIN0 U1 ( .A(n4), .Q(n9) );
  INV3 U2 ( .A(n9), .Q(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_reg_file_8_0_0 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;
  wire   n4, n9;

  DLSG1 latch ( .C(CLK), .E(EN), .SE(TE), .GCK(n4) );
  CLKIN0 U1 ( .A(n4), .Q(n9) );
  INV3 U2 ( .A(n9), .Q(ENCLK) );
endmodule


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


module SNPS_CLOCK_GATE_HIGH_datapath_0 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;
  wire   n4, n9;

  DLSG1 latch ( .C(CLK), .E(EN), .SE(TE), .GCK(n4) );
  CLKIN0 U1 ( .A(n4), .Q(n9) );
  INV3 U2 ( .A(n9), .Q(ENCLK) );
endmodule


module reg_file_8_0 ( clk_i, reg_a_idx_i, reg_b_idx_i, clk_en_reg_file_i, 
        reg_i, reg_a_o, reg_b_o );
  input [3:0] reg_a_idx_i;
  input [3:0] reg_b_idx_i;
  input [15:0] reg_i;
  output [15:0] reg_a_o;
  output [15:0] reg_b_o;
  input clk_i, clk_en_reg_file_i;
  wire   n288, n289, n290, n291, n292, n293, n294, n295, n1029, n1031, n1032,
         n1033, n1034, n1035, n1036, n1037, n15, n1197, n1198, n1199, n1200,
         n1201, n1202, n1203, n1204, n1205, n1206, n1207, n1208, n1209, n1210,
         n1211, n1212, n1213, n1214, n1215, n1216, n1217, n1218, n1219, n1220,
         n1221, n1222, n1223, n1224, n1225, n1226, n1227, n1228, n1229, n1230,
         n1231, n1232, n1233, n1234, n1235, n1236, n1237, n1238, n1239, n1240,
         n1241, n1242, n1243, n1244, n1245, n1246, n1247, n1248, n1249, n1250,
         n1251, n1252, n1253, n1254, n1255, n1256, n1257, n1258, n1259, n1260,
         n1261, n1262, n1263, n1264, n1265, n1266, n1267, n1268, n1269, n1270,
         n1271, n1272, n1273, n1274, n1275, n1276, n1277, n1278, n1279, n1280,
         n1281, n1282, n1283, n1284, n1285, n1286, n1287, n1288, n1289, n1290,
         n1291, n1292, n1293, n1294, n1295, n1296, n1297, n1298, n1299, n1300,
         n1301, n1302, n1303, n1304, n1305, n1306, n1307, n1308, n1309, n1310,
         n1311, n1312, n1313, n1314, n1315, n1316, n1317, n1318, n1319, n1320,
         n1321, n1322, n1323, n1324, n1325, n1326, n1327, n1328, n1329, n1330,
         n1331, n1332, n1333, n1334, n1335, n1336, n1337, n1338, n1339, n1340,
         n1341, n1342, n1343, n1344, n1345, n1346, n1347, n1348, n1349, n1350,
         n1351, n1352, n1353, n1354, n1355;
  wire   [127:0] registers;

  DF3 registers_reg_7__0_ ( .D(reg_i[0]), .C(n1037), .Q(registers[112]) );
  DF3 registers_reg_7__1_ ( .D(reg_i[1]), .C(n1037), .Q(registers[113]) );
  DF3 registers_reg_7__2_ ( .D(reg_i[2]), .C(n1037), .Q(registers[114]) );
  DF3 registers_reg_7__3_ ( .D(reg_i[3]), .C(n1037), .Q(registers[115]) );
  DF3 registers_reg_7__4_ ( .D(reg_i[4]), .C(n1037), .Q(registers[116]) );
  DF3 registers_reg_7__5_ ( .D(reg_i[5]), .C(n1037), .Q(registers[117]) );
  DF3 registers_reg_7__6_ ( .D(reg_i[6]), .C(n1037), .Q(registers[118]) );
  DF3 registers_reg_7__7_ ( .D(reg_i[7]), .C(n1037), .Q(registers[119]) );
  DF3 registers_reg_7__8_ ( .D(reg_i[8]), .C(n1037), .Q(registers[120]) );
  DF3 registers_reg_7__9_ ( .D(reg_i[9]), .C(n1037), .Q(registers[121]) );
  DF3 registers_reg_7__10_ ( .D(reg_i[10]), .C(n1037), .Q(registers[122]) );
  DF3 registers_reg_7__11_ ( .D(reg_i[11]), .C(n1037), .Q(registers[123]) );
  DF3 registers_reg_7__12_ ( .D(reg_i[12]), .C(n1037), .Q(registers[124]) );
  DF3 registers_reg_7__13_ ( .D(reg_i[13]), .C(n1037), .Q(registers[125]) );
  DF3 registers_reg_7__14_ ( .D(reg_i[14]), .C(n1037), .Q(registers[126]) );
  DF3 registers_reg_7__15_ ( .D(reg_i[15]), .C(n1037), .Q(registers[127]) );
  DF3 registers_reg_6__0_ ( .D(reg_i[0]), .C(n1036), .Q(registers[96]) );
  DF3 registers_reg_6__1_ ( .D(reg_i[1]), .C(n1036), .Q(registers[97]) );
  DF3 registers_reg_6__2_ ( .D(reg_i[2]), .C(n1036), .Q(registers[98]) );
  DF3 registers_reg_6__3_ ( .D(reg_i[3]), .C(n1036), .Q(registers[99]) );
  DF3 registers_reg_6__4_ ( .D(reg_i[4]), .C(n1036), .Q(registers[100]) );
  DF3 registers_reg_6__5_ ( .D(reg_i[5]), .C(n1036), .Q(registers[101]) );
  DF3 registers_reg_6__6_ ( .D(reg_i[6]), .C(n1036), .Q(registers[102]) );
  DF3 registers_reg_6__7_ ( .D(reg_i[7]), .C(n1036), .Q(registers[103]) );
  DF3 registers_reg_6__8_ ( .D(reg_i[8]), .C(n1036), .Q(registers[104]) );
  DF3 registers_reg_6__9_ ( .D(reg_i[9]), .C(n1036), .Q(registers[105]) );
  DF3 registers_reg_6__10_ ( .D(reg_i[10]), .C(n1036), .Q(registers[106]) );
  DF3 registers_reg_6__11_ ( .D(reg_i[11]), .C(n1036), .Q(registers[107]) );
  DF3 registers_reg_6__12_ ( .D(reg_i[12]), .C(n1036), .Q(registers[108]) );
  DF3 registers_reg_6__13_ ( .D(reg_i[13]), .C(n1036), .Q(registers[109]) );
  DF3 registers_reg_6__14_ ( .D(reg_i[14]), .C(n1036), .Q(registers[110]) );
  DF3 registers_reg_6__15_ ( .D(reg_i[15]), .C(n1036), .Q(registers[111]) );
  DF3 registers_reg_5__0_ ( .D(reg_i[0]), .C(n1035), .Q(registers[80]) );
  DF3 registers_reg_5__1_ ( .D(reg_i[1]), .C(n1035), .Q(registers[81]) );
  DF3 registers_reg_5__2_ ( .D(reg_i[2]), .C(n1035), .Q(registers[82]) );
  DF3 registers_reg_5__3_ ( .D(reg_i[3]), .C(n1035), .Q(registers[83]) );
  DF3 registers_reg_5__4_ ( .D(reg_i[4]), .C(n1035), .Q(registers[84]) );
  DF3 registers_reg_5__5_ ( .D(reg_i[5]), .C(n1035), .Q(registers[85]) );
  DF3 registers_reg_5__6_ ( .D(reg_i[6]), .C(n1035), .Q(registers[86]) );
  DF3 registers_reg_5__7_ ( .D(reg_i[7]), .C(n1035), .Q(registers[87]) );
  DF3 registers_reg_5__8_ ( .D(reg_i[8]), .C(n1035), .Q(registers[88]) );
  DF3 registers_reg_5__9_ ( .D(reg_i[9]), .C(n1035), .Q(registers[89]) );
  DF3 registers_reg_5__10_ ( .D(reg_i[10]), .C(n1035), .Q(registers[90]) );
  DF3 registers_reg_5__11_ ( .D(reg_i[11]), .C(n1035), .Q(registers[91]) );
  DF3 registers_reg_5__12_ ( .D(reg_i[12]), .C(n1035), .Q(registers[92]) );
  DF3 registers_reg_5__13_ ( .D(reg_i[13]), .C(n1035), .Q(registers[93]) );
  DF3 registers_reg_5__14_ ( .D(reg_i[14]), .C(n1035), .Q(registers[94]) );
  DF3 registers_reg_5__15_ ( .D(reg_i[15]), .C(n1035), .Q(registers[95]) );
  DF3 registers_reg_4__0_ ( .D(reg_i[0]), .C(n1034), .Q(registers[64]) );
  DF3 registers_reg_4__1_ ( .D(reg_i[1]), .C(n1034), .Q(registers[65]) );
  DF3 registers_reg_4__2_ ( .D(reg_i[2]), .C(n1034), .Q(registers[66]) );
  DF3 registers_reg_4__3_ ( .D(reg_i[3]), .C(n1034), .Q(registers[67]) );
  DF3 registers_reg_4__4_ ( .D(reg_i[4]), .C(n1034), .Q(registers[68]) );
  DF3 registers_reg_4__5_ ( .D(reg_i[5]), .C(n1034), .Q(registers[69]) );
  DF3 registers_reg_4__6_ ( .D(reg_i[6]), .C(n1034), .Q(registers[70]) );
  DF3 registers_reg_4__7_ ( .D(reg_i[7]), .C(n1034), .Q(registers[71]) );
  DF3 registers_reg_4__8_ ( .D(reg_i[8]), .C(n1034), .Q(registers[72]) );
  DF3 registers_reg_4__9_ ( .D(reg_i[9]), .C(n1034), .Q(registers[73]) );
  DF3 registers_reg_4__10_ ( .D(reg_i[10]), .C(n1034), .Q(registers[74]) );
  DF3 registers_reg_4__11_ ( .D(reg_i[11]), .C(n1034), .Q(registers[75]) );
  DF3 registers_reg_4__12_ ( .D(reg_i[12]), .C(n1034), .Q(registers[76]) );
  DF3 registers_reg_4__13_ ( .D(reg_i[13]), .C(n1034), .Q(registers[77]) );
  DF3 registers_reg_4__14_ ( .D(reg_i[14]), .C(n1034), .Q(registers[78]) );
  DF3 registers_reg_4__15_ ( .D(reg_i[15]), .C(n1034), .Q(registers[79]) );
  DF3 registers_reg_3__0_ ( .D(reg_i[0]), .C(n1033), .Q(registers[48]) );
  DF3 registers_reg_3__1_ ( .D(reg_i[1]), .C(n1033), .Q(registers[49]) );
  DF3 registers_reg_3__2_ ( .D(reg_i[2]), .C(n1033), .Q(registers[50]) );
  DF3 registers_reg_3__3_ ( .D(reg_i[3]), .C(n1033), .Q(registers[51]) );
  DF3 registers_reg_3__4_ ( .D(reg_i[4]), .C(n1033), .Q(registers[52]) );
  DF3 registers_reg_3__5_ ( .D(reg_i[5]), .C(n1033), .Q(registers[53]) );
  DF3 registers_reg_3__6_ ( .D(reg_i[6]), .C(n1033), .Q(registers[54]) );
  DF3 registers_reg_3__7_ ( .D(reg_i[7]), .C(n1033), .Q(registers[55]) );
  DF3 registers_reg_3__8_ ( .D(reg_i[8]), .C(n1033), .Q(registers[56]) );
  DF3 registers_reg_3__9_ ( .D(reg_i[9]), .C(n1033), .Q(registers[57]) );
  DF3 registers_reg_3__10_ ( .D(reg_i[10]), .C(n1033), .Q(registers[58]) );
  DF3 registers_reg_3__11_ ( .D(reg_i[11]), .C(n1033), .Q(registers[59]) );
  DF3 registers_reg_3__12_ ( .D(reg_i[12]), .C(n1033), .Q(registers[60]) );
  DF3 registers_reg_3__13_ ( .D(reg_i[13]), .C(n1033), .Q(registers[61]) );
  DF3 registers_reg_3__14_ ( .D(reg_i[14]), .C(n1033), .Q(registers[62]) );
  DF3 registers_reg_3__15_ ( .D(reg_i[15]), .C(n1033), .Q(registers[63]) );
  DF3 registers_reg_2__0_ ( .D(reg_i[0]), .C(n1032), .Q(registers[32]) );
  DF3 registers_reg_2__1_ ( .D(reg_i[1]), .C(n1032), .Q(registers[33]) );
  DF3 registers_reg_2__2_ ( .D(reg_i[2]), .C(n1032), .Q(registers[34]) );
  DF3 registers_reg_2__3_ ( .D(reg_i[3]), .C(n1032), .Q(registers[35]) );
  DF3 registers_reg_2__4_ ( .D(reg_i[4]), .C(n1032), .Q(registers[36]) );
  DF3 registers_reg_2__5_ ( .D(reg_i[5]), .C(n1032), .Q(registers[37]) );
  DF3 registers_reg_2__6_ ( .D(reg_i[6]), .C(n1032), .Q(registers[38]) );
  DF3 registers_reg_2__7_ ( .D(reg_i[7]), .C(n1032), .Q(registers[39]) );
  DF3 registers_reg_2__8_ ( .D(reg_i[8]), .C(n1032), .Q(registers[40]) );
  DF3 registers_reg_2__9_ ( .D(reg_i[9]), .C(n1032), .Q(registers[41]) );
  DF3 registers_reg_2__10_ ( .D(reg_i[10]), .C(n1032), .Q(registers[42]) );
  DF3 registers_reg_2__11_ ( .D(reg_i[11]), .C(n1032), .Q(registers[43]) );
  DF3 registers_reg_2__12_ ( .D(reg_i[12]), .C(n1032), .Q(registers[44]) );
  DF3 registers_reg_2__13_ ( .D(reg_i[13]), .C(n1032), .Q(registers[45]) );
  DF3 registers_reg_2__14_ ( .D(reg_i[14]), .C(n1032), .Q(registers[46]) );
  DF3 registers_reg_2__15_ ( .D(reg_i[15]), .C(n1032), .Q(registers[47]) );
  DF3 registers_reg_1__0_ ( .D(reg_i[0]), .C(n1031), .Q(registers[16]) );
  DF3 registers_reg_1__1_ ( .D(reg_i[1]), .C(n1031), .Q(registers[17]) );
  DF3 registers_reg_1__2_ ( .D(reg_i[2]), .C(n1031), .Q(registers[18]) );
  DF3 registers_reg_1__3_ ( .D(reg_i[3]), .C(n1031), .Q(registers[19]) );
  DF3 registers_reg_1__4_ ( .D(reg_i[4]), .C(n1031), .Q(registers[20]) );
  DF3 registers_reg_1__5_ ( .D(reg_i[5]), .C(n1031), .Q(registers[21]) );
  DF3 registers_reg_1__6_ ( .D(reg_i[6]), .C(n1031), .Q(registers[22]) );
  DF3 registers_reg_1__7_ ( .D(reg_i[7]), .C(n1031), .Q(registers[23]) );
  DF3 registers_reg_1__8_ ( .D(reg_i[8]), .C(n1031), .Q(registers[24]) );
  DF3 registers_reg_1__9_ ( .D(reg_i[9]), .C(n1031), .Q(registers[25]) );
  DF3 registers_reg_1__10_ ( .D(reg_i[10]), .C(n1031), .Q(registers[26]) );
  DF3 registers_reg_1__11_ ( .D(reg_i[11]), .C(n1031), .Q(registers[27]) );
  DF3 registers_reg_1__12_ ( .D(reg_i[12]), .C(n1031), .Q(registers[28]) );
  DF3 registers_reg_1__13_ ( .D(reg_i[13]), .C(n1031), .Q(registers[29]) );
  DF3 registers_reg_1__14_ ( .D(reg_i[14]), .C(n1031), .Q(registers[30]) );
  DF3 registers_reg_1__15_ ( .D(reg_i[15]), .C(n1031), .Q(registers[31]) );
  DF3 registers_reg_0__0_ ( .D(reg_i[0]), .C(n1029), .Q(registers[0]) );
  DF3 registers_reg_0__1_ ( .D(reg_i[1]), .C(n1029), .Q(registers[1]) );
  DF3 registers_reg_0__2_ ( .D(reg_i[2]), .C(n1029), .Q(registers[2]) );
  DF3 registers_reg_0__3_ ( .D(reg_i[3]), .C(n1029), .Q(registers[3]) );
  DF3 registers_reg_0__4_ ( .D(reg_i[4]), .C(n1029), .Q(registers[4]) );
  DF3 registers_reg_0__5_ ( .D(reg_i[5]), .C(n1029), .Q(registers[5]) );
  DF3 registers_reg_0__6_ ( .D(reg_i[6]), .C(n1029), .Q(registers[6]) );
  DF3 registers_reg_0__7_ ( .D(reg_i[7]), .C(n1029), .Q(registers[7]) );
  DF3 registers_reg_0__8_ ( .D(reg_i[8]), .C(n1029), .Q(registers[8]) );
  DF3 registers_reg_0__9_ ( .D(reg_i[9]), .C(n1029), .Q(registers[9]) );
  DF3 registers_reg_0__10_ ( .D(reg_i[10]), .C(n1029), .Q(registers[10]) );
  DF3 registers_reg_0__11_ ( .D(reg_i[11]), .C(n1029), .Q(registers[11]) );
  DF3 registers_reg_0__12_ ( .D(reg_i[12]), .C(n1029), .Q(registers[12]) );
  DF3 registers_reg_0__13_ ( .D(reg_i[13]), .C(n1029), .Q(registers[13]) );
  DF3 registers_reg_0__14_ ( .D(reg_i[14]), .C(n1029), .Q(registers[14]) );
  DF3 registers_reg_0__15_ ( .D(reg_i[15]), .C(n1029), .Q(registers[15]) );
  SNPS_CLOCK_GATE_HIGH_reg_file_8_0_0 clk_gate_registers_reg_7__0_ ( .CLK(
        clk_i), .EN(n288), .ENCLK(n1037), .TE(n15) );
  SNPS_CLOCK_GATE_HIGH_reg_file_8_0_1 clk_gate_registers_reg_6__0_ ( .CLK(
        clk_i), .EN(n289), .ENCLK(n1036), .TE(n15) );
  SNPS_CLOCK_GATE_HIGH_reg_file_8_0_2 clk_gate_registers_reg_5__0_ ( .CLK(
        clk_i), .EN(n290), .ENCLK(n1035), .TE(n15) );
  SNPS_CLOCK_GATE_HIGH_reg_file_8_0_3 clk_gate_registers_reg_4__0_ ( .CLK(
        clk_i), .EN(n291), .ENCLK(n1034), .TE(n15) );
  SNPS_CLOCK_GATE_HIGH_reg_file_8_0_4 clk_gate_registers_reg_3__0_ ( .CLK(
        clk_i), .EN(n292), .ENCLK(n1033), .TE(n15) );
  SNPS_CLOCK_GATE_HIGH_reg_file_8_0_5 clk_gate_registers_reg_2__0_ ( .CLK(
        clk_i), .EN(n293), .ENCLK(n1032), .TE(n15) );
  SNPS_CLOCK_GATE_HIGH_reg_file_8_0_6 clk_gate_registers_reg_1__0_ ( .CLK(
        clk_i), .EN(n294), .ENCLK(n1031), .TE(n15) );
  SNPS_CLOCK_GATE_HIGH_reg_file_8_0_7 clk_gate_registers_reg_0__0_ ( .CLK(
        clk_i), .EN(n295), .ENCLK(n1029), .TE(n15) );
  INV3 U2 ( .A(reg_a_idx_i[1]), .Q(n1353) );
  INV3 U3 ( .A(n1346), .Q(n1283) );
  NOR32 U4 ( .A(reg_b_idx_i[1]), .B(reg_b_idx_i[2]), .C(n1271), .Q(n1208) );
  CLKIN2 U5 ( .A(reg_b_idx_i[0]), .Q(n1271) );
  OAI212 U6 ( .A(n1346), .B(n1355), .C(clk_en_reg_file_i), .Q(n1349) );
  INV3 U7 ( .A(n1345), .Q(n1280) );
  NOR32 U8 ( .A(reg_b_idx_i[0]), .B(reg_b_idx_i[2]), .C(n1270), .Q(n1205) );
  NOR32 U9 ( .A(n1351), .B(reg_a_idx_i[2]), .C(n1353), .Q(n1279) );
  INV2 U10 ( .A(reg_a_idx_i[0]), .Q(n1351) );
  NOR32 U11 ( .A(n1270), .B(reg_b_idx_i[2]), .C(n1271), .Q(n1206) );
  NOR32 U12 ( .A(reg_a_idx_i[0]), .B(reg_a_idx_i[2]), .C(n1353), .Q(n1278) );
  NOR32 U13 ( .A(reg_b_idx_i[0]), .B(reg_b_idx_i[1]), .C(n1269), .Q(n1203) );
  INV1 U14 ( .A(reg_b_idx_i[2]), .Q(n1269) );
  INV3 U15 ( .A(n1344), .Q(n1281) );
  NOR32 U16 ( .A(reg_a_idx_i[1]), .B(reg_a_idx_i[2]), .C(n1351), .Q(n1277) );
  NOR32 U17 ( .A(n1270), .B(reg_b_idx_i[0]), .C(n1269), .Q(n1201) );
  INV2 U18 ( .A(reg_b_idx_i[1]), .Q(n1270) );
  NOR32 U19 ( .A(n1269), .B(reg_b_idx_i[1]), .C(n1271), .Q(n1204) );
  INV3 U20 ( .A(n1347), .Q(n1282) );
  NOR32 U21 ( .A(reg_a_idx_i[1]), .B(reg_a_idx_i[2]), .C(reg_a_idx_i[0]), .Q(
        n1276) );
  NOR32 U22 ( .A(n1269), .B(n1270), .C(n1271), .Q(n1202) );
  NOR32 U23 ( .A(reg_b_idx_i[1]), .B(reg_b_idx_i[2]), .C(reg_b_idx_i[0]), .Q(
        n1207) );
  LOGIC0 U24 ( .Q(n15) );
  NAND40 U25 ( .A(n1197), .B(n1198), .C(n1199), .D(n1200), .Q(reg_b_o[9]) );
  AOI220 U26 ( .A(registers[105]), .B(n1201), .C(registers[121]), .D(n1202), 
        .Q(n1200) );
  AOI220 U27 ( .A(registers[73]), .B(n1203), .C(registers[89]), .D(n1204), .Q(
        n1199) );
  AOI220 U28 ( .A(registers[41]), .B(n1205), .C(registers[57]), .D(n1206), .Q(
        n1198) );
  AOI220 U29 ( .A(registers[9]), .B(n1207), .C(registers[25]), .D(n1208), .Q(
        n1197) );
  NAND40 U30 ( .A(n1209), .B(n1210), .C(n1211), .D(n1212), .Q(reg_b_o[8]) );
  AOI220 U31 ( .A(registers[104]), .B(n1201), .C(registers[120]), .D(n1202), 
        .Q(n1212) );
  AOI220 U32 ( .A(registers[72]), .B(n1203), .C(registers[88]), .D(n1204), .Q(
        n1211) );
  AOI220 U33 ( .A(registers[40]), .B(n1205), .C(registers[56]), .D(n1206), .Q(
        n1210) );
  AOI220 U34 ( .A(registers[8]), .B(n1207), .C(registers[24]), .D(n1208), .Q(
        n1209) );
  NAND40 U35 ( .A(n1213), .B(n1214), .C(n1215), .D(n1216), .Q(reg_b_o[7]) );
  AOI220 U36 ( .A(registers[103]), .B(n1201), .C(registers[119]), .D(n1202), 
        .Q(n1216) );
  AOI220 U37 ( .A(registers[71]), .B(n1203), .C(registers[87]), .D(n1204), .Q(
        n1215) );
  AOI220 U38 ( .A(registers[39]), .B(n1205), .C(registers[55]), .D(n1206), .Q(
        n1214) );
  AOI220 U39 ( .A(registers[7]), .B(n1207), .C(registers[23]), .D(n1208), .Q(
        n1213) );
  NAND40 U40 ( .A(n1217), .B(n1218), .C(n1219), .D(n1220), .Q(reg_b_o[6]) );
  AOI220 U41 ( .A(registers[102]), .B(n1201), .C(registers[118]), .D(n1202), 
        .Q(n1220) );
  AOI220 U42 ( .A(registers[70]), .B(n1203), .C(registers[86]), .D(n1204), .Q(
        n1219) );
  AOI220 U43 ( .A(registers[38]), .B(n1205), .C(registers[54]), .D(n1206), .Q(
        n1218) );
  AOI220 U44 ( .A(registers[6]), .B(n1207), .C(registers[22]), .D(n1208), .Q(
        n1217) );
  NAND40 U45 ( .A(n1221), .B(n1222), .C(n1223), .D(n1224), .Q(reg_b_o[5]) );
  AOI220 U46 ( .A(registers[101]), .B(n1201), .C(registers[117]), .D(n1202), 
        .Q(n1224) );
  AOI220 U47 ( .A(registers[69]), .B(n1203), .C(registers[85]), .D(n1204), .Q(
        n1223) );
  AOI220 U48 ( .A(registers[37]), .B(n1205), .C(registers[53]), .D(n1206), .Q(
        n1222) );
  AOI220 U49 ( .A(registers[5]), .B(n1207), .C(registers[21]), .D(n1208), .Q(
        n1221) );
  NAND40 U50 ( .A(n1225), .B(n1226), .C(n1227), .D(n1228), .Q(reg_b_o[4]) );
  AOI220 U51 ( .A(registers[100]), .B(n1201), .C(registers[116]), .D(n1202), 
        .Q(n1228) );
  AOI220 U52 ( .A(registers[68]), .B(n1203), .C(registers[84]), .D(n1204), .Q(
        n1227) );
  AOI220 U53 ( .A(registers[36]), .B(n1205), .C(registers[52]), .D(n1206), .Q(
        n1226) );
  AOI220 U54 ( .A(registers[4]), .B(n1207), .C(registers[20]), .D(n1208), .Q(
        n1225) );
  NAND40 U55 ( .A(n1229), .B(n1230), .C(n1231), .D(n1232), .Q(reg_b_o[3]) );
  AOI220 U56 ( .A(registers[99]), .B(n1201), .C(registers[115]), .D(n1202), 
        .Q(n1232) );
  AOI220 U57 ( .A(registers[67]), .B(n1203), .C(registers[83]), .D(n1204), .Q(
        n1231) );
  AOI220 U58 ( .A(registers[35]), .B(n1205), .C(registers[51]), .D(n1206), .Q(
        n1230) );
  AOI220 U59 ( .A(registers[3]), .B(n1207), .C(registers[19]), .D(n1208), .Q(
        n1229) );
  NAND40 U60 ( .A(n1233), .B(n1234), .C(n1235), .D(n1236), .Q(reg_b_o[2]) );
  AOI220 U61 ( .A(registers[98]), .B(n1201), .C(registers[114]), .D(n1202), 
        .Q(n1236) );
  AOI220 U62 ( .A(registers[66]), .B(n1203), .C(registers[82]), .D(n1204), .Q(
        n1235) );
  AOI220 U63 ( .A(registers[34]), .B(n1205), .C(registers[50]), .D(n1206), .Q(
        n1234) );
  AOI220 U64 ( .A(registers[2]), .B(n1207), .C(registers[18]), .D(n1208), .Q(
        n1233) );
  NAND40 U65 ( .A(n1237), .B(n1238), .C(n1239), .D(n1240), .Q(reg_b_o[1]) );
  AOI220 U66 ( .A(registers[97]), .B(n1201), .C(registers[113]), .D(n1202), 
        .Q(n1240) );
  AOI220 U67 ( .A(registers[65]), .B(n1203), .C(registers[81]), .D(n1204), .Q(
        n1239) );
  AOI220 U68 ( .A(registers[33]), .B(n1205), .C(registers[49]), .D(n1206), .Q(
        n1238) );
  AOI220 U69 ( .A(registers[1]), .B(n1207), .C(registers[17]), .D(n1208), .Q(
        n1237) );
  NAND40 U70 ( .A(n1241), .B(n1242), .C(n1243), .D(n1244), .Q(reg_b_o[15]) );
  AOI220 U71 ( .A(registers[111]), .B(n1201), .C(registers[127]), .D(n1202), 
        .Q(n1244) );
  AOI220 U72 ( .A(registers[79]), .B(n1203), .C(registers[95]), .D(n1204), .Q(
        n1243) );
  AOI220 U73 ( .A(registers[47]), .B(n1205), .C(registers[63]), .D(n1206), .Q(
        n1242) );
  AOI220 U74 ( .A(registers[15]), .B(n1207), .C(registers[31]), .D(n1208), .Q(
        n1241) );
  NAND40 U75 ( .A(n1245), .B(n1246), .C(n1247), .D(n1248), .Q(reg_b_o[14]) );
  AOI220 U76 ( .A(registers[110]), .B(n1201), .C(registers[126]), .D(n1202), 
        .Q(n1248) );
  AOI220 U77 ( .A(registers[78]), .B(n1203), .C(registers[94]), .D(n1204), .Q(
        n1247) );
  AOI220 U78 ( .A(registers[46]), .B(n1205), .C(registers[62]), .D(n1206), .Q(
        n1246) );
  AOI220 U79 ( .A(registers[14]), .B(n1207), .C(registers[30]), .D(n1208), .Q(
        n1245) );
  NAND40 U80 ( .A(n1249), .B(n1250), .C(n1251), .D(n1252), .Q(reg_b_o[13]) );
  AOI220 U81 ( .A(registers[109]), .B(n1201), .C(registers[125]), .D(n1202), 
        .Q(n1252) );
  AOI220 U82 ( .A(registers[77]), .B(n1203), .C(registers[93]), .D(n1204), .Q(
        n1251) );
  AOI220 U83 ( .A(registers[45]), .B(n1205), .C(registers[61]), .D(n1206), .Q(
        n1250) );
  AOI220 U84 ( .A(registers[13]), .B(n1207), .C(registers[29]), .D(n1208), .Q(
        n1249) );
  NAND40 U85 ( .A(n1253), .B(n1254), .C(n1255), .D(n1256), .Q(reg_b_o[12]) );
  AOI220 U86 ( .A(registers[108]), .B(n1201), .C(registers[124]), .D(n1202), 
        .Q(n1256) );
  AOI220 U87 ( .A(registers[76]), .B(n1203), .C(registers[92]), .D(n1204), .Q(
        n1255) );
  AOI220 U88 ( .A(registers[44]), .B(n1205), .C(registers[60]), .D(n1206), .Q(
        n1254) );
  AOI220 U89 ( .A(registers[12]), .B(n1207), .C(registers[28]), .D(n1208), .Q(
        n1253) );
  NAND40 U90 ( .A(n1257), .B(n1258), .C(n1259), .D(n1260), .Q(reg_b_o[11]) );
  AOI220 U91 ( .A(registers[107]), .B(n1201), .C(registers[123]), .D(n1202), 
        .Q(n1260) );
  AOI220 U92 ( .A(registers[75]), .B(n1203), .C(registers[91]), .D(n1204), .Q(
        n1259) );
  AOI220 U93 ( .A(registers[43]), .B(n1205), .C(registers[59]), .D(n1206), .Q(
        n1258) );
  AOI220 U94 ( .A(registers[11]), .B(n1207), .C(registers[27]), .D(n1208), .Q(
        n1257) );
  NAND40 U95 ( .A(n1261), .B(n1262), .C(n1263), .D(n1264), .Q(reg_b_o[10]) );
  AOI220 U96 ( .A(registers[106]), .B(n1201), .C(registers[122]), .D(n1202), 
        .Q(n1264) );
  AOI220 U97 ( .A(registers[74]), .B(n1203), .C(registers[90]), .D(n1204), .Q(
        n1263) );
  AOI220 U98 ( .A(registers[42]), .B(n1205), .C(registers[58]), .D(n1206), .Q(
        n1262) );
  AOI220 U99 ( .A(registers[10]), .B(n1207), .C(registers[26]), .D(n1208), .Q(
        n1261) );
  NAND40 U100 ( .A(n1265), .B(n1266), .C(n1267), .D(n1268), .Q(reg_b_o[0]) );
  AOI220 U101 ( .A(registers[96]), .B(n1201), .C(registers[112]), .D(n1202), 
        .Q(n1268) );
  AOI220 U102 ( .A(registers[64]), .B(n1203), .C(registers[80]), .D(n1204), 
        .Q(n1267) );
  AOI220 U103 ( .A(registers[32]), .B(n1205), .C(registers[48]), .D(n1206), 
        .Q(n1266) );
  AOI220 U104 ( .A(registers[0]), .B(n1207), .C(registers[16]), .D(n1208), .Q(
        n1265) );
  NAND40 U105 ( .A(n1272), .B(n1273), .C(n1274), .D(n1275), .Q(reg_a_o[9]) );
  AOI220 U106 ( .A(n1276), .B(registers[9]), .C(n1277), .D(registers[25]), .Q(
        n1275) );
  AOI220 U107 ( .A(n1278), .B(registers[41]), .C(n1279), .D(registers[57]), 
        .Q(n1274) );
  AOI220 U108 ( .A(n1280), .B(registers[73]), .C(n1281), .D(registers[89]), 
        .Q(n1273) );
  AOI220 U109 ( .A(n1282), .B(registers[105]), .C(n1283), .D(registers[121]), 
        .Q(n1272) );
  NAND40 U110 ( .A(n1284), .B(n1285), .C(n1286), .D(n1287), .Q(reg_a_o[8]) );
  AOI220 U111 ( .A(n1276), .B(registers[8]), .C(n1277), .D(registers[24]), .Q(
        n1287) );
  AOI220 U112 ( .A(n1278), .B(registers[40]), .C(n1279), .D(registers[56]), 
        .Q(n1286) );
  AOI220 U113 ( .A(n1280), .B(registers[72]), .C(n1281), .D(registers[88]), 
        .Q(n1285) );
  AOI220 U114 ( .A(n1282), .B(registers[104]), .C(n1283), .D(registers[120]), 
        .Q(n1284) );
  NAND40 U115 ( .A(n1288), .B(n1289), .C(n1290), .D(n1291), .Q(reg_a_o[7]) );
  AOI220 U116 ( .A(n1276), .B(registers[7]), .C(n1277), .D(registers[23]), .Q(
        n1291) );
  AOI220 U117 ( .A(n1278), .B(registers[39]), .C(n1279), .D(registers[55]), 
        .Q(n1290) );
  AOI220 U118 ( .A(n1280), .B(registers[71]), .C(n1281), .D(registers[87]), 
        .Q(n1289) );
  AOI220 U119 ( .A(n1282), .B(registers[103]), .C(n1283), .D(registers[119]), 
        .Q(n1288) );
  NAND40 U120 ( .A(n1292), .B(n1293), .C(n1294), .D(n1295), .Q(reg_a_o[6]) );
  AOI220 U121 ( .A(n1276), .B(registers[6]), .C(n1277), .D(registers[22]), .Q(
        n1295) );
  AOI220 U122 ( .A(n1278), .B(registers[38]), .C(n1279), .D(registers[54]), 
        .Q(n1294) );
  AOI220 U123 ( .A(n1280), .B(registers[70]), .C(n1281), .D(registers[86]), 
        .Q(n1293) );
  AOI220 U124 ( .A(n1282), .B(registers[102]), .C(n1283), .D(registers[118]), 
        .Q(n1292) );
  NAND40 U125 ( .A(n1296), .B(n1297), .C(n1298), .D(n1299), .Q(reg_a_o[5]) );
  AOI220 U126 ( .A(n1276), .B(registers[5]), .C(n1277), .D(registers[21]), .Q(
        n1299) );
  AOI220 U127 ( .A(n1278), .B(registers[37]), .C(n1279), .D(registers[53]), 
        .Q(n1298) );
  AOI220 U128 ( .A(n1280), .B(registers[69]), .C(n1281), .D(registers[85]), 
        .Q(n1297) );
  AOI220 U129 ( .A(n1282), .B(registers[101]), .C(n1283), .D(registers[117]), 
        .Q(n1296) );
  NAND40 U130 ( .A(n1300), .B(n1301), .C(n1302), .D(n1303), .Q(reg_a_o[4]) );
  AOI220 U131 ( .A(n1276), .B(registers[4]), .C(n1277), .D(registers[20]), .Q(
        n1303) );
  AOI220 U132 ( .A(n1278), .B(registers[36]), .C(n1279), .D(registers[52]), 
        .Q(n1302) );
  AOI220 U133 ( .A(n1280), .B(registers[68]), .C(n1281), .D(registers[84]), 
        .Q(n1301) );
  AOI220 U134 ( .A(n1282), .B(registers[100]), .C(n1283), .D(registers[116]), 
        .Q(n1300) );
  NAND40 U135 ( .A(n1304), .B(n1305), .C(n1306), .D(n1307), .Q(reg_a_o[3]) );
  AOI220 U136 ( .A(n1276), .B(registers[3]), .C(n1277), .D(registers[19]), .Q(
        n1307) );
  AOI220 U137 ( .A(n1278), .B(registers[35]), .C(n1279), .D(registers[51]), 
        .Q(n1306) );
  AOI220 U138 ( .A(n1280), .B(registers[67]), .C(n1281), .D(registers[83]), 
        .Q(n1305) );
  AOI220 U139 ( .A(n1282), .B(registers[99]), .C(n1283), .D(registers[115]), 
        .Q(n1304) );
  NAND40 U140 ( .A(n1308), .B(n1309), .C(n1310), .D(n1311), .Q(reg_a_o[2]) );
  AOI220 U141 ( .A(n1276), .B(registers[2]), .C(n1277), .D(registers[18]), .Q(
        n1311) );
  AOI220 U142 ( .A(n1278), .B(registers[34]), .C(n1279), .D(registers[50]), 
        .Q(n1310) );
  AOI220 U143 ( .A(n1280), .B(registers[66]), .C(n1281), .D(registers[82]), 
        .Q(n1309) );
  AOI220 U144 ( .A(n1282), .B(registers[98]), .C(n1283), .D(registers[114]), 
        .Q(n1308) );
  NAND40 U145 ( .A(n1312), .B(n1313), .C(n1314), .D(n1315), .Q(reg_a_o[1]) );
  AOI220 U146 ( .A(n1276), .B(registers[1]), .C(n1277), .D(registers[17]), .Q(
        n1315) );
  AOI220 U147 ( .A(n1278), .B(registers[33]), .C(n1279), .D(registers[49]), 
        .Q(n1314) );
  AOI220 U148 ( .A(n1280), .B(registers[65]), .C(n1281), .D(registers[81]), 
        .Q(n1313) );
  AOI220 U149 ( .A(n1282), .B(registers[97]), .C(n1283), .D(registers[113]), 
        .Q(n1312) );
  NAND40 U150 ( .A(n1316), .B(n1317), .C(n1318), .D(n1319), .Q(reg_a_o[15]) );
  AOI220 U151 ( .A(n1276), .B(registers[15]), .C(n1277), .D(registers[31]), 
        .Q(n1319) );
  AOI220 U152 ( .A(n1278), .B(registers[47]), .C(n1279), .D(registers[63]), 
        .Q(n1318) );
  AOI220 U153 ( .A(n1280), .B(registers[79]), .C(n1281), .D(registers[95]), 
        .Q(n1317) );
  AOI220 U154 ( .A(n1282), .B(registers[111]), .C(n1283), .D(registers[127]), 
        .Q(n1316) );
  NAND40 U155 ( .A(n1320), .B(n1321), .C(n1322), .D(n1323), .Q(reg_a_o[14]) );
  AOI220 U156 ( .A(n1276), .B(registers[14]), .C(n1277), .D(registers[30]), 
        .Q(n1323) );
  AOI220 U157 ( .A(n1278), .B(registers[46]), .C(n1279), .D(registers[62]), 
        .Q(n1322) );
  AOI220 U158 ( .A(n1280), .B(registers[78]), .C(n1281), .D(registers[94]), 
        .Q(n1321) );
  AOI220 U159 ( .A(n1282), .B(registers[110]), .C(n1283), .D(registers[126]), 
        .Q(n1320) );
  NAND40 U160 ( .A(n1324), .B(n1325), .C(n1326), .D(n1327), .Q(reg_a_o[13]) );
  AOI220 U161 ( .A(n1276), .B(registers[13]), .C(n1277), .D(registers[29]), 
        .Q(n1327) );
  AOI220 U162 ( .A(n1278), .B(registers[45]), .C(n1279), .D(registers[61]), 
        .Q(n1326) );
  AOI220 U163 ( .A(n1280), .B(registers[77]), .C(n1281), .D(registers[93]), 
        .Q(n1325) );
  AOI220 U164 ( .A(n1282), .B(registers[109]), .C(n1283), .D(registers[125]), 
        .Q(n1324) );
  NAND40 U165 ( .A(n1328), .B(n1329), .C(n1330), .D(n1331), .Q(reg_a_o[12]) );
  AOI220 U166 ( .A(n1276), .B(registers[12]), .C(n1277), .D(registers[28]), 
        .Q(n1331) );
  AOI220 U167 ( .A(n1278), .B(registers[44]), .C(n1279), .D(registers[60]), 
        .Q(n1330) );
  AOI220 U168 ( .A(n1280), .B(registers[76]), .C(n1281), .D(registers[92]), 
        .Q(n1329) );
  AOI220 U169 ( .A(n1282), .B(registers[108]), .C(n1283), .D(registers[124]), 
        .Q(n1328) );
  NAND40 U170 ( .A(n1332), .B(n1333), .C(n1334), .D(n1335), .Q(reg_a_o[11]) );
  AOI220 U171 ( .A(n1276), .B(registers[11]), .C(n1277), .D(registers[27]), 
        .Q(n1335) );
  AOI220 U172 ( .A(n1278), .B(registers[43]), .C(n1279), .D(registers[59]), 
        .Q(n1334) );
  AOI220 U173 ( .A(n1280), .B(registers[75]), .C(n1281), .D(registers[91]), 
        .Q(n1333) );
  AOI220 U174 ( .A(n1282), .B(registers[107]), .C(n1283), .D(registers[123]), 
        .Q(n1332) );
  NAND40 U175 ( .A(n1336), .B(n1337), .C(n1338), .D(n1339), .Q(reg_a_o[10]) );
  AOI220 U176 ( .A(n1276), .B(registers[10]), .C(n1277), .D(registers[26]), 
        .Q(n1339) );
  AOI220 U177 ( .A(n1278), .B(registers[42]), .C(n1279), .D(registers[58]), 
        .Q(n1338) );
  AOI220 U178 ( .A(n1280), .B(registers[74]), .C(n1281), .D(registers[90]), 
        .Q(n1337) );
  AOI220 U179 ( .A(n1282), .B(registers[106]), .C(n1283), .D(registers[122]), 
        .Q(n1336) );
  NAND40 U180 ( .A(n1340), .B(n1341), .C(n1342), .D(n1343), .Q(reg_a_o[0]) );
  AOI220 U181 ( .A(n1276), .B(registers[0]), .C(n1277), .D(registers[16]), .Q(
        n1343) );
  AOI220 U182 ( .A(n1278), .B(registers[32]), .C(n1279), .D(registers[48]), 
        .Q(n1342) );
  AOI220 U183 ( .A(n1280), .B(registers[64]), .C(n1281), .D(registers[80]), 
        .Q(n1341) );
  AOI220 U184 ( .A(n1282), .B(registers[96]), .C(n1283), .D(registers[112]), 
        .Q(n1340) );
  NOR20 U185 ( .A(n1348), .B(n1349), .Q(n295) );
  CLKIN0 U186 ( .A(n1276), .Q(n1348) );
  NOR20 U187 ( .A(n1350), .B(n1349), .Q(n294) );
  CLKIN0 U188 ( .A(n1277), .Q(n1350) );
  NOR20 U189 ( .A(n1352), .B(n1349), .Q(n293) );
  CLKIN0 U190 ( .A(n1278), .Q(n1352) );
  NOR20 U191 ( .A(n1354), .B(n1349), .Q(n292) );
  CLKIN0 U192 ( .A(n1279), .Q(n1354) );
  NOR20 U193 ( .A(n1345), .B(n1349), .Q(n291) );
  NAND30 U194 ( .A(n1351), .B(n1353), .C(reg_a_idx_i[2]), .Q(n1345) );
  NOR20 U195 ( .A(n1344), .B(n1349), .Q(n290) );
  NAND30 U196 ( .A(reg_a_idx_i[0]), .B(n1353), .C(reg_a_idx_i[2]), .Q(n1344)
         );
  NOR20 U197 ( .A(n1347), .B(n1349), .Q(n289) );
  NAND30 U198 ( .A(reg_a_idx_i[1]), .B(n1351), .C(reg_a_idx_i[2]), .Q(n1347)
         );
  NOR20 U199 ( .A(n1346), .B(n1349), .Q(n288) );
  CLKIN0 U200 ( .A(reg_a_idx_i[3]), .Q(n1355) );
  NAND30 U201 ( .A(reg_a_idx_i[1]), .B(reg_a_idx_i[0]), .C(reg_a_idx_i[2]), 
        .Q(n1346) );
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
         n884, n885, n886, n887, n888, n889, n890, n891, n892, n893, n894,
         n895, n896, n897, n898, n899, n900, n901, n902, n903, n904, n905,
         n906, n907, n908, n909, n910, n911, n912, n913, n914, n915, n916,
         n917, n918, n919, n920, n921, n922, n923, n924, n925, n926, n927,
         n928, n929, n930, n931, n932, n933, n934, n935, n936, n937, n938,
         n939, n940, n941, n942, n943, n944, n945, n946, n947, n948, n949,
         n950, n951, n952, n953, n954, n955, n956, n957, n958, n959, n960,
         n961, n962, n963, n964, n965, n966, n967, n968, n969, n970, n971,
         n972, n973, n974, n975, n976, n977, n978, n979, n980, n981, n982,
         n983, n984, n985, n986, n987, n988, n989, n990, n991, n992, n993,
         n994, n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004,
         n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014,
         n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024,
         n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034,
         n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044,
         n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054,
         n1055, n1056, n1057;
  wire   [15:0] add_b;
  wire   SYNOPSYS_UNCONNECTED__0;

  alu_16_DW01_add_0 add_110 ( .A({n2, side_a_i, n1}), .B({n2, add_b, add_cin}), 
        .CI(n2), .SUM({res_v_17_, res_v_16_, res_v_15_, res_v_14_, res_v_13_, 
        res_v_12_, res_v_11_, res_v_10_, res_v_9_, res_v_8_, res_v_7_, 
        res_v_6_, res_v_5_, res_v_4_, res_v_3_, res_v_2_, res_v_1_, 
        SYNOPSYS_UNCONNECTED__0}) );
  INV3 U3 ( .A(alu_func_i[2]), .Q(n1030) );
  NAND31 U4 ( .A(n1032), .B(n1030), .C(alu_func_i[3]), .Q(n1028) );
  NOR32 U5 ( .A(n1030), .B(n1031), .C(n1032), .Q(n903) );
  INV3 U6 ( .A(n899), .Q(n905) );
  NOR22 U7 ( .A(n1028), .B(alu_func_i[1]), .Q(n1042) );
  NOR32 U8 ( .A(n1031), .B(alu_func_i[0]), .C(n1030), .Q(n899) );
  NAND22 U9 ( .A(n1037), .B(alu_func_i[0]), .Q(n889) );
  INV3 U10 ( .A(n1027), .Q(n1041) );
  NAND22 U11 ( .A(n1041), .B(alu_func_i[1]), .Q(n1040) );
  NAND22 U12 ( .A(n1037), .B(n1032), .Q(n901) );
  IMUX22 U13 ( .A(n1026), .B(n900), .S(alu_func_i[0]), .Q(n906) );
  OAI212 U14 ( .A(n1026), .B(n900), .C(alu_func_i[0]), .Q(n897) );
  NOR32 U15 ( .A(alu_func_i[1]), .B(alu_func_i[3]), .C(n1030), .Q(n900) );
  NAND22 U16 ( .A(n1027), .B(n1028), .Q(n893) );
  LOGIC0 U17 ( .Q(n2) );
  LOGIC1 U18 ( .Q(n1) );
  CLKIN0 U19 ( .A(n884), .Q(zero_o) );
  NAND40 U20 ( .A(n885), .B(n886), .C(n887), .D(n888), .Q(n884) );
  NOR40 U21 ( .A(result_o[9]), .B(result_o[8]), .C(result_o[7]), .D(
        result_o[6]), .Q(n888) );
  OAI2110 U22 ( .A(n889), .B(n890), .C(n891), .D(n892), .Q(result_o[6]) );
  AOI2110 U23 ( .A(res_v_7_), .B(n893), .C(n894), .D(n895), .Q(n892) );
  AOI210 U24 ( .A(n896), .B(n897), .C(n898), .Q(n895) );
  CLKIN0 U25 ( .A(side_b_i[6]), .Q(n898) );
  IMUX20 U26 ( .A(n899), .B(n900), .S(side_a_i[6]), .Q(n896) );
  NOR20 U27 ( .A(n901), .B(n902), .Q(n894) );
  IMUX20 U28 ( .A(n903), .B(n904), .S(side_a_i[6]), .Q(n891) );
  OAI210 U29 ( .A(side_b_i[6]), .B(n905), .C(n906), .Q(n904) );
  OAI2110 U30 ( .A(n907), .B(n889), .C(n908), .D(n909), .Q(result_o[7]) );
  AOI2110 U31 ( .A(res_v_8_), .B(n893), .C(n910), .D(n911), .Q(n909) );
  AOI210 U32 ( .A(n912), .B(n897), .C(n913), .Q(n911) );
  CLKIN0 U33 ( .A(side_b_i[7]), .Q(n913) );
  IMUX20 U34 ( .A(n899), .B(n900), .S(side_a_i[7]), .Q(n912) );
  NOR20 U35 ( .A(n901), .B(n914), .Q(n910) );
  IMUX20 U36 ( .A(n903), .B(n915), .S(side_a_i[7]), .Q(n908) );
  OAI210 U37 ( .A(side_b_i[7]), .B(n905), .C(n906), .Q(n915) );
  OAI2110 U38 ( .A(n916), .B(n889), .C(n917), .D(n918), .Q(result_o[8]) );
  AOI2110 U39 ( .A(res_v_9_), .B(n893), .C(n919), .D(n920), .Q(n918) );
  AOI210 U40 ( .A(n921), .B(n897), .C(n922), .Q(n920) );
  CLKIN0 U41 ( .A(side_b_i[8]), .Q(n922) );
  IMUX20 U42 ( .A(n899), .B(n900), .S(side_a_i[8]), .Q(n921) );
  NOR20 U43 ( .A(n901), .B(n890), .Q(n919) );
  CLKIN0 U44 ( .A(side_a_i[7]), .Q(n890) );
  IMUX20 U45 ( .A(n903), .B(n923), .S(side_a_i[8]), .Q(n917) );
  OAI210 U46 ( .A(side_b_i[8]), .B(n905), .C(n906), .Q(n923) );
  OAI2110 U47 ( .A(n889), .B(n924), .C(n925), .D(n926), .Q(result_o[9]) );
  AOI2110 U48 ( .A(res_v_10_), .B(n893), .C(n927), .D(n928), .Q(n926) );
  AOI210 U49 ( .A(n929), .B(n897), .C(n930), .Q(n928) );
  CLKIN0 U50 ( .A(side_b_i[9]), .Q(n930) );
  IMUX20 U51 ( .A(n899), .B(n900), .S(side_a_i[9]), .Q(n929) );
  NOR20 U52 ( .A(n901), .B(n907), .Q(n927) );
  CLKIN0 U53 ( .A(side_a_i[8]), .Q(n907) );
  IMUX20 U54 ( .A(n903), .B(n931), .S(side_a_i[9]), .Q(n925) );
  OAI210 U55 ( .A(side_b_i[9]), .B(n905), .C(n906), .Q(n931) );
  NOR40 U56 ( .A(result_o[5]), .B(result_o[4]), .C(result_o[3]), .D(
        result_o[2]), .Q(n887) );
  OAI2110 U57 ( .A(n889), .B(n932), .C(n933), .D(n934), .Q(result_o[2]) );
  AOI2110 U58 ( .A(res_v_3_), .B(n893), .C(n935), .D(n936), .Q(n934) );
  AOI210 U59 ( .A(n937), .B(n897), .C(n938), .Q(n936) );
  CLKIN0 U60 ( .A(side_b_i[2]), .Q(n938) );
  IMUX20 U61 ( .A(n899), .B(n900), .S(side_a_i[2]), .Q(n937) );
  NOR20 U62 ( .A(n901), .B(n939), .Q(n935) );
  IMUX20 U63 ( .A(n903), .B(n940), .S(side_a_i[2]), .Q(n933) );
  OAI210 U64 ( .A(side_b_i[2]), .B(n905), .C(n906), .Q(n940) );
  OAI2110 U65 ( .A(n889), .B(n941), .C(n942), .D(n943), .Q(result_o[3]) );
  AOI2110 U66 ( .A(res_v_4_), .B(n893), .C(n944), .D(n945), .Q(n943) );
  AOI210 U67 ( .A(n946), .B(n897), .C(n947), .Q(n945) );
  CLKIN0 U68 ( .A(side_b_i[3]), .Q(n947) );
  IMUX20 U69 ( .A(n899), .B(n900), .S(side_a_i[3]), .Q(n946) );
  NOR20 U70 ( .A(n901), .B(n948), .Q(n944) );
  IMUX20 U71 ( .A(n903), .B(n949), .S(side_a_i[3]), .Q(n942) );
  OAI210 U72 ( .A(side_b_i[3]), .B(n905), .C(n906), .Q(n949) );
  OAI2110 U73 ( .A(n889), .B(n902), .C(n950), .D(n951), .Q(result_o[4]) );
  AOI2110 U74 ( .A(res_v_5_), .B(n893), .C(n952), .D(n953), .Q(n951) );
  AOI210 U75 ( .A(n954), .B(n897), .C(n955), .Q(n953) );
  CLKIN0 U76 ( .A(side_b_i[4]), .Q(n955) );
  IMUX20 U77 ( .A(n899), .B(n900), .S(side_a_i[4]), .Q(n954) );
  NOR20 U78 ( .A(n901), .B(n932), .Q(n952) );
  CLKIN0 U79 ( .A(side_a_i[3]), .Q(n932) );
  IMUX20 U80 ( .A(n903), .B(n956), .S(side_a_i[4]), .Q(n950) );
  OAI210 U81 ( .A(side_b_i[4]), .B(n905), .C(n906), .Q(n956) );
  CLKIN0 U82 ( .A(side_a_i[5]), .Q(n902) );
  OAI2110 U83 ( .A(n889), .B(n914), .C(n957), .D(n958), .Q(result_o[5]) );
  AOI2110 U84 ( .A(res_v_6_), .B(n893), .C(n959), .D(n960), .Q(n958) );
  AOI210 U85 ( .A(n961), .B(n897), .C(n962), .Q(n960) );
  CLKIN0 U86 ( .A(side_b_i[5]), .Q(n962) );
  IMUX20 U87 ( .A(n899), .B(n900), .S(side_a_i[5]), .Q(n961) );
  NOR20 U88 ( .A(n901), .B(n941), .Q(n959) );
  CLKIN0 U89 ( .A(side_a_i[4]), .Q(n941) );
  IMUX20 U90 ( .A(n903), .B(n963), .S(side_a_i[5]), .Q(n957) );
  OAI210 U91 ( .A(side_b_i[5]), .B(n905), .C(n906), .Q(n963) );
  CLKIN0 U92 ( .A(side_a_i[6]), .Q(n914) );
  NOR40 U93 ( .A(result_o[1]), .B(result_o[15]), .C(result_o[14]), .D(
        result_o[13]), .Q(n886) );
  OAI2110 U94 ( .A(n889), .B(n964), .C(n965), .D(n966), .Q(result_o[13]) );
  AOI2110 U95 ( .A(res_v_14_), .B(n893), .C(n967), .D(n968), .Q(n966) );
  AOI210 U96 ( .A(n969), .B(n897), .C(n970), .Q(n968) );
  CLKIN0 U97 ( .A(side_b_i[13]), .Q(n970) );
  IMUX20 U98 ( .A(n899), .B(n900), .S(side_a_i[13]), .Q(n969) );
  NOR20 U99 ( .A(n901), .B(n971), .Q(n967) );
  IMUX20 U100 ( .A(n903), .B(n972), .S(side_a_i[13]), .Q(n965) );
  OAI210 U101 ( .A(side_b_i[13]), .B(n905), .C(n906), .Q(n972) );
  OAI2110 U102 ( .A(n889), .B(n973), .C(n974), .D(n975), .Q(result_o[14]) );
  AOI2110 U103 ( .A(res_v_15_), .B(n893), .C(n976), .D(n977), .Q(n975) );
  AOI210 U104 ( .A(n978), .B(n897), .C(n979), .Q(n977) );
  CLKIN0 U105 ( .A(side_b_i[14]), .Q(n979) );
  IMUX20 U106 ( .A(n899), .B(n900), .S(side_a_i[14]), .Q(n978) );
  NOR20 U107 ( .A(n901), .B(n980), .Q(n976) );
  IMUX20 U108 ( .A(n903), .B(n981), .S(side_a_i[14]), .Q(n974) );
  OAI210 U109 ( .A(side_b_i[14]), .B(n905), .C(n906), .Q(n981) );
  OAI2110 U110 ( .A(n889), .B(n982), .C(n983), .D(n984), .Q(result_o[15]) );
  AOI2110 U111 ( .A(res_v_16_), .B(n893), .C(n985), .D(n986), .Q(n984) );
  AOI210 U112 ( .A(n987), .B(n897), .C(n988), .Q(n986) );
  CLKIN0 U113 ( .A(side_b_i[15]), .Q(n988) );
  IMUX20 U114 ( .A(n899), .B(n900), .S(side_a_i[15]), .Q(n987) );
  NOR20 U115 ( .A(n901), .B(n964), .Q(n985) );
  CLKIN0 U116 ( .A(side_a_i[14]), .Q(n964) );
  IMUX20 U117 ( .A(n903), .B(n989), .S(side_a_i[15]), .Q(n983) );
  OAI210 U118 ( .A(side_b_i[15]), .B(n905), .C(n906), .Q(n989) );
  OAI2110 U119 ( .A(n889), .B(n948), .C(n990), .D(n991), .Q(result_o[1]) );
  AOI2110 U120 ( .A(res_v_2_), .B(n893), .C(n992), .D(n993), .Q(n991) );
  AOI210 U121 ( .A(n994), .B(n897), .C(n995), .Q(n993) );
  CLKIN0 U122 ( .A(side_b_i[1]), .Q(n995) );
  IMUX20 U123 ( .A(n899), .B(n900), .S(side_a_i[1]), .Q(n994) );
  NOR20 U124 ( .A(n901), .B(n996), .Q(n992) );
  IMUX20 U125 ( .A(n903), .B(n997), .S(side_a_i[1]), .Q(n990) );
  OAI210 U126 ( .A(side_b_i[1]), .B(n905), .C(n906), .Q(n997) );
  CLKIN0 U127 ( .A(side_a_i[2]), .Q(n948) );
  NOR40 U128 ( .A(result_o[12]), .B(result_o[11]), .C(result_o[10]), .D(
        result_o[0]), .Q(n885) );
  OAI2110 U129 ( .A(n889), .B(n939), .C(n998), .D(n999), .Q(result_o[0]) );
  AOI2110 U130 ( .A(res_v_1_), .B(n893), .C(n1000), .D(n1001), .Q(n999) );
  AOI210 U131 ( .A(n1002), .B(n897), .C(n1003), .Q(n1001) );
  CLKIN0 U132 ( .A(side_b_i[0]), .Q(n1003) );
  IMUX20 U133 ( .A(n900), .B(n899), .S(n996), .Q(n1002) );
  NOR20 U134 ( .A(n901), .B(n982), .Q(n1000) );
  CLKIN0 U135 ( .A(carry_i), .Q(n982) );
  IMUX20 U136 ( .A(n1004), .B(n903), .S(n996), .Q(n998) );
  OAI210 U137 ( .A(side_b_i[0]), .B(n905), .C(n906), .Q(n1004) );
  CLKIN0 U138 ( .A(side_a_i[1]), .Q(n939) );
  OAI2110 U139 ( .A(n889), .B(n1005), .C(n1006), .D(n1007), .Q(result_o[10])
         );
  AOI2110 U140 ( .A(res_v_11_), .B(n893), .C(n1008), .D(n1009), .Q(n1007) );
  AOI210 U141 ( .A(n1010), .B(n897), .C(n1011), .Q(n1009) );
  CLKIN0 U142 ( .A(side_b_i[10]), .Q(n1011) );
  IMUX20 U143 ( .A(n899), .B(n900), .S(side_a_i[10]), .Q(n1010) );
  NOR20 U144 ( .A(n916), .B(n901), .Q(n1008) );
  CLKIN0 U145 ( .A(side_a_i[9]), .Q(n916) );
  IMUX20 U146 ( .A(n903), .B(n1012), .S(side_a_i[10]), .Q(n1006) );
  OAI210 U147 ( .A(side_b_i[10]), .B(n905), .C(n906), .Q(n1012) );
  OAI2110 U148 ( .A(n889), .B(n971), .C(n1013), .D(n1014), .Q(result_o[11]) );
  AOI2110 U149 ( .A(res_v_12_), .B(n893), .C(n1015), .D(n1016), .Q(n1014) );
  AOI210 U150 ( .A(n1017), .B(n897), .C(n1018), .Q(n1016) );
  CLKIN0 U151 ( .A(side_b_i[11]), .Q(n1018) );
  IMUX20 U152 ( .A(n899), .B(n900), .S(side_a_i[11]), .Q(n1017) );
  NOR20 U153 ( .A(n901), .B(n924), .Q(n1015) );
  CLKIN0 U154 ( .A(side_a_i[10]), .Q(n924) );
  IMUX20 U155 ( .A(n903), .B(n1019), .S(side_a_i[11]), .Q(n1013) );
  OAI210 U156 ( .A(side_b_i[11]), .B(n905), .C(n906), .Q(n1019) );
  CLKIN0 U157 ( .A(side_a_i[12]), .Q(n971) );
  OAI2110 U158 ( .A(n889), .B(n980), .C(n1020), .D(n1021), .Q(result_o[12]) );
  AOI2110 U159 ( .A(res_v_13_), .B(n893), .C(n1022), .D(n1023), .Q(n1021) );
  AOI210 U160 ( .A(n1024), .B(n897), .C(n1025), .Q(n1023) );
  CLKIN0 U161 ( .A(side_b_i[12]), .Q(n1025) );
  IMUX20 U162 ( .A(n899), .B(n900), .S(side_a_i[12]), .Q(n1024) );
  NOR20 U163 ( .A(n901), .B(n1005), .Q(n1022) );
  CLKIN0 U164 ( .A(side_a_i[11]), .Q(n1005) );
  IMUX20 U165 ( .A(n903), .B(n1029), .S(side_a_i[12]), .Q(n1020) );
  OAI210 U166 ( .A(side_b_i[12]), .B(n905), .C(n906), .Q(n1029) );
  NOR20 U167 ( .A(alu_func_i[2]), .B(n1031), .Q(n1026) );
  NAND20 U168 ( .A(alu_func_i[1]), .B(n1033), .Q(n1031) );
  CLKIN0 U169 ( .A(side_a_i[13]), .Q(n980) );
  NAND20 U170 ( .A(n1034), .B(n1035), .Q(carry_o) );
  MUX21 U171 ( .A(n1027), .B(n1028), .S(res_v_17_), .Q(n1035) );
  CLKIN0 U172 ( .A(n1036), .Q(n1034) );
  OAI220 U173 ( .A(n973), .B(n901), .C(n996), .D(n889), .Q(n1036) );
  CLKIN0 U174 ( .A(side_a_i[0]), .Q(n996) );
  NOR30 U175 ( .A(n1030), .B(alu_func_i[1]), .C(n1033), .Q(n1037) );
  CLKIN0 U176 ( .A(alu_func_i[3]), .Q(n1033) );
  CLKIN0 U177 ( .A(side_a_i[15]), .Q(n973) );
  IMUX20 U178 ( .A(n1028), .B(n1027), .S(n1038), .Q(add_cin) );
  NOR20 U179 ( .A(alu_func_i[1]), .B(carry_i), .Q(n1038) );
  NAND20 U180 ( .A(n1039), .B(n1040), .Q(add_b[9]) );
  IMUX20 U181 ( .A(n1041), .B(n1042), .S(side_b_i[9]), .Q(n1039) );
  NAND20 U182 ( .A(n1043), .B(n1040), .Q(add_b[8]) );
  IMUX20 U183 ( .A(n1041), .B(n1042), .S(side_b_i[8]), .Q(n1043) );
  NAND20 U184 ( .A(n1044), .B(n1040), .Q(add_b[7]) );
  IMUX20 U185 ( .A(n1041), .B(n1042), .S(side_b_i[7]), .Q(n1044) );
  NAND20 U186 ( .A(n1045), .B(n1040), .Q(add_b[6]) );
  IMUX20 U187 ( .A(n1041), .B(n1042), .S(side_b_i[6]), .Q(n1045) );
  NAND20 U188 ( .A(n1046), .B(n1040), .Q(add_b[5]) );
  IMUX20 U189 ( .A(n1041), .B(n1042), .S(side_b_i[5]), .Q(n1046) );
  NAND20 U190 ( .A(n1047), .B(n1040), .Q(add_b[4]) );
  IMUX20 U191 ( .A(n1041), .B(n1042), .S(side_b_i[4]), .Q(n1047) );
  NAND20 U192 ( .A(n1048), .B(n1040), .Q(add_b[3]) );
  IMUX20 U193 ( .A(n1041), .B(n1042), .S(side_b_i[3]), .Q(n1048) );
  NAND20 U194 ( .A(n1049), .B(n1040), .Q(add_b[2]) );
  IMUX20 U195 ( .A(n1041), .B(n1042), .S(side_b_i[2]), .Q(n1049) );
  NAND20 U196 ( .A(n1050), .B(n1040), .Q(add_b[1]) );
  IMUX20 U197 ( .A(n1041), .B(n1042), .S(side_b_i[1]), .Q(n1050) );
  NAND20 U198 ( .A(n1051), .B(n1040), .Q(add_b[15]) );
  IMUX20 U199 ( .A(n1041), .B(n1042), .S(side_b_i[15]), .Q(n1051) );
  NAND20 U200 ( .A(n1052), .B(n1040), .Q(add_b[14]) );
  IMUX20 U201 ( .A(n1041), .B(n1042), .S(side_b_i[14]), .Q(n1052) );
  NAND20 U202 ( .A(n1053), .B(n1040), .Q(add_b[13]) );
  IMUX20 U203 ( .A(n1041), .B(n1042), .S(side_b_i[13]), .Q(n1053) );
  NAND20 U204 ( .A(n1054), .B(n1040), .Q(add_b[12]) );
  IMUX20 U205 ( .A(n1041), .B(n1042), .S(side_b_i[12]), .Q(n1054) );
  NAND20 U206 ( .A(n1055), .B(n1040), .Q(add_b[11]) );
  IMUX20 U207 ( .A(n1041), .B(n1042), .S(side_b_i[11]), .Q(n1055) );
  NAND20 U208 ( .A(n1056), .B(n1040), .Q(add_b[10]) );
  IMUX20 U209 ( .A(n1041), .B(n1042), .S(side_b_i[10]), .Q(n1056) );
  NAND20 U210 ( .A(n1057), .B(n1040), .Q(add_b[0]) );
  IMUX20 U211 ( .A(n1041), .B(n1042), .S(side_b_i[0]), .Q(n1057) );
  CLKIN0 U212 ( .A(alu_func_i[0]), .Q(n1032) );
  NAND30 U213 ( .A(alu_func_i[0]), .B(n1030), .C(alu_func_i[3]), .Q(n1027) );
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
  wire   NextMemRead, n49, n98, n99, n100, n11, n12, n264, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n503, n504;

  DFC3 Cycle_reg_0_ ( .D(n100), .C(clk_i), .RN(res_i), .Q(n501), .QN(n426) );
  DFC3 IllegalInst_reg ( .D(n504), .C(clk_i), .RN(res_i), .Q(illegal_inst_o), 
        .QN(n12) );
  DFC3 Cycle_reg_2_ ( .D(n99), .C(clk_i), .RN(res_i), .Q(n427), .QN(n500) );
  DFC3 Cycle_reg_1_ ( .D(n98), .C(clk_i), .RN(res_i), .Q(n424), .QN(n499) );
  DFC3 mem_rd_stb_o_reg ( .D(NextMemRead), .C(clk_i), .RN(res_i), .Q(
        mem_rd_stb_o) );
  DFC3 mem_wr_stb_o_reg ( .D(n264), .C(clk_i), .RN(res_i), .Q(mem_wr_stb_o) );
  DFC3 cpu_halt_o_reg ( .D(n503), .C(clk_i), .RN(res_i), .Q(cpu_halt_o) );
  DFEC1 Zero_reg ( .D(zero_i), .E(n49), .C(clk_i), .RN(res_i), .QN(n11) );
  DFEC1 Carry_reg ( .D(carry_i), .E(n49), .C(clk_i), .RN(res_i), .QN(n425) );
  NAND31 U3 ( .A(n426), .B(n424), .C(n500), .Q(n449) );
  NAND22 U4 ( .A(op_code_i[4]), .B(n470), .Q(n479) );
  INV0 U5 ( .A(n449), .Q(n470) );
  OAI222 U6 ( .A(n500), .B(n471), .C(n466), .D(n449), .Q(clk_en_op_code_o) );
  OAI211 U7 ( .A(n488), .B(n479), .C(n486), .Q(alu_func_o[0]) );
  OAI2111 U8 ( .A(n482), .B(n479), .C(n458), .D(n457), .Q(alu_func_o[3]) );
  NAND41 U9 ( .A(n485), .B(n486), .C(n458), .D(n457), .Q(alu_func_o[1]) );
  OAI212 U10 ( .A(n434), .B(n435), .C(n436), .Q(sel_addr_o) );
  NOR32 U11 ( .A(n449), .B(op_code_i[5]), .C(n438), .Q(sel_load_o) );
  INV6 U12 ( .A(n428), .Q(sel_pc_o) );
  NOR20 U13 ( .A(n456), .B(n457), .Q(n429) );
  CLKIN0 U14 ( .A(n458), .Q(n430) );
  NOR20 U15 ( .A(n430), .B(n431), .Q(n428) );
  NOR20 U16 ( .A(n429), .B(n504), .Q(n432) );
  CLKIN0 U17 ( .A(n432), .Q(n431) );
  NAND22 U18 ( .A(sel_load_o), .B(n435), .Q(n458) );
  NAND31 U19 ( .A(n501), .B(n500), .C(n499), .Q(n457) );
  AOI210 U20 ( .A(n437), .B(n438), .C(n439), .Q(clk_en_reg_file_o) );
  CLKIN0 U21 ( .A(n440), .Q(n437) );
  CLKIN0 U22 ( .A(n441), .Q(n503) );
  CLKIN0 U23 ( .A(n442), .Q(n504) );
  OAI310 U24 ( .A(n439), .B(op_code_i[5]), .C(n443), .D(n444), .Q(n99) );
  IMUX20 U25 ( .A(n445), .B(n446), .S(n500), .Q(n444) );
  NOR20 U26 ( .A(n447), .B(n448), .Q(n443) );
  OAI210 U27 ( .A(n12), .B(n449), .C(n450), .Q(n98) );
  AOI220 U28 ( .A(n445), .B(n424), .C(n451), .D(n452), .Q(n450) );
  CLKIN0 U29 ( .A(n453), .Q(n452) );
  AOI210 U30 ( .A(n454), .B(n455), .C(n439), .Q(n49) );
  OAI210 U31 ( .A(reg_decode_error_i), .B(n459), .C(n451), .Q(n442) );
  NOR40 U32 ( .A(n460), .B(n448), .C(n461), .D(n462), .Q(n456) );
  NOR20 U33 ( .A(n463), .B(n464), .Q(n461) );
  IMUX20 U34 ( .A(n425), .B(n11), .S(op_code_i[0]), .Q(n464) );
  NOR30 U35 ( .A(n457), .B(op_code_i[5]), .C(n465), .Q(n264) );
  OAI2110 U36 ( .A(n466), .B(n439), .C(n441), .D(n467), .Q(n100) );
  AOI220 U37 ( .A(n445), .B(n501), .C(n446), .D(n427), .Q(n467) );
  AOI210 U38 ( .A(n468), .B(n500), .C(n446), .Q(n445) );
  NAND20 U39 ( .A(n424), .B(n501), .Q(n468) );
  NAND30 U40 ( .A(n460), .B(n469), .C(n451), .Q(n441) );
  NAND20 U41 ( .A(n12), .B(n470), .Q(n439) );
  OAI210 U42 ( .A(n453), .B(n457), .C(n458), .Q(clk_en_pc_o) );
  NOR40 U43 ( .A(n462), .B(n459), .C(n448), .D(op_code_i[3]), .Q(n453) );
  AOI2110 U44 ( .A(n472), .B(n473), .C(op_code_i[3]), .D(n440), .Q(n466) );
  NAND30 U45 ( .A(n474), .B(n475), .C(n454), .Q(n440) );
  AOI2110 U46 ( .A(op_code_i[1]), .B(op_code_i[2]), .C(n476), .D(op_code_i[5]), 
        .Q(n454) );
  OAI210 U47 ( .A(op_code_i[1]), .B(n477), .C(op_code_i[4]), .Q(n474) );
  NOR40 U48 ( .A(op_code_i[5]), .B(n478), .C(n425), .D(n479), .Q(carry_o) );
  AOI220 U49 ( .A(n480), .B(op_code_i[0]), .C(n481), .D(op_code_i[1]), .Q(n478) );
  AOI2110 U50 ( .A(op_code_i[3]), .B(n483), .C(n480), .D(n481), .Q(n482) );
  AOI210 U51 ( .A(n475), .B(n484), .C(n479), .Q(alu_func_o[2]) );
  CLKIN0 U52 ( .A(op_code_i[0]), .Q(n435) );
  NAND30 U53 ( .A(op_code_i[1]), .B(n472), .C(n487), .Q(n485) );
  CLKIN0 U54 ( .A(n479), .Q(n487) );
  NAND40 U55 ( .A(n481), .B(n473), .C(n470), .D(n455), .Q(n486) );
  AOI210 U56 ( .A(n481), .B(op_code_i[0]), .C(n489), .Q(n488) );
  OAI220 U57 ( .A(op_code_i[2]), .B(n490), .C(n463), .D(n491), .Q(n489) );
  AOI210 U58 ( .A(op_code_i[0]), .B(op_code_i[1]), .C(n492), .Q(n490) );
  MUX21 U59 ( .A(n473), .B(n476), .S(n477), .Q(n492) );
  CLKIN0 U60 ( .A(n475), .Q(n481) );
  NAND30 U61 ( .A(n436), .B(n434), .C(n493), .Q(NextMemRead) );
  AOI220 U62 ( .A(n451), .B(n494), .C(n446), .D(n500), .Q(n493) );
  CLKIN0 U63 ( .A(n471), .Q(n446) );
  NAND20 U64 ( .A(n499), .B(n426), .Q(n471) );
  CLKIN0 U65 ( .A(n495), .Q(n494) );
  NOR40 U66 ( .A(n462), .B(n459), .C(n460), .D(op_code_i[3]), .Q(n495) );
  NOR30 U67 ( .A(n484), .B(op_code_i[4]), .C(n483), .Q(n460) );
  NAND20 U68 ( .A(n496), .B(n469), .Q(n459) );
  IMUX20 U69 ( .A(n497), .B(n498), .S(op_code_i[2]), .Q(n496) );
  NOR20 U70 ( .A(op_code_i[4]), .B(n473), .Q(n498) );
  NOR20 U71 ( .A(n477), .B(n483), .Q(n497) );
  OAI2110 U72 ( .A(n476), .B(n484), .C(n475), .D(n455), .Q(n462) );
  NAND20 U73 ( .A(op_code_i[3]), .B(op_code_i[2]), .Q(n475) );
  CLKIN0 U74 ( .A(n483), .Q(n476) );
  NAND20 U75 ( .A(op_code_i[0]), .B(n463), .Q(n483) );
  CLKIN0 U76 ( .A(n457), .Q(n451) );
  CLKIN0 U77 ( .A(sel_load_o), .Q(n434) );
  CLKIN0 U78 ( .A(n447), .Q(n438) );
  NOR30 U79 ( .A(n484), .B(op_code_i[4]), .C(n463), .Q(n447) );
  CLKIN0 U80 ( .A(op_code_i[1]), .Q(n463) );
  NAND20 U81 ( .A(n472), .B(n477), .Q(n484) );
  CLKIN0 U82 ( .A(op_code_i[2]), .Q(n472) );
  NAND30 U83 ( .A(n470), .B(n469), .C(n448), .Q(n436) );
  CLKIN0 U84 ( .A(n465), .Q(n448) );
  NAND30 U85 ( .A(n473), .B(n455), .C(n480), .Q(n465) );
  CLKIN0 U86 ( .A(n491), .Q(n480) );
  NAND20 U87 ( .A(op_code_i[2]), .B(n477), .Q(n491) );
  CLKIN0 U88 ( .A(op_code_i[3]), .Q(n477) );
  CLKIN0 U89 ( .A(op_code_i[4]), .Q(n455) );
  NOR20 U90 ( .A(op_code_i[1]), .B(op_code_i[0]), .Q(n473) );
  CLKIN0 U91 ( .A(op_code_i[5]), .Q(n469) );
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
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n258, n113,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405;
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
  DFC3 RegPC_reg_13_ ( .D(n397), .C(n258), .RN(res_i), .QN(n383) );
  DFC3 RegPC_reg_12_ ( .D(n396), .C(n258), .RN(res_i), .QN(n382) );
  DFC3 RegPC_reg_14_ ( .D(n398), .C(n258), .RN(res_i), .QN(n381) );
  DFC3 RegPC_reg_11_ ( .D(n395), .C(n258), .RN(res_i), .QN(n380) );
  DFC3 RegPC_reg_10_ ( .D(n394), .C(n258), .RN(res_i), .QN(n379) );
  DFC3 RegPC_reg_9_ ( .D(n393), .C(n258), .RN(res_i), .QN(n378) );
  DFC3 RegPC_reg_8_ ( .D(n392), .C(n258), .RN(res_i), .QN(n377) );
  DFC3 RegPC_reg_7_ ( .D(n391), .C(n258), .RN(res_i), .QN(n376) );
  DFC3 RegPC_reg_6_ ( .D(n390), .C(n258), .RN(res_i), .QN(n375) );
  DFC3 RegPC_reg_5_ ( .D(n389), .C(n258), .RN(res_i), .QN(n374) );
  DFC3 RegPC_reg_4_ ( .D(n388), .C(n258), .RN(res_i), .QN(n373) );
  DFC3 RegPC_reg_3_ ( .D(n387), .C(n258), .RN(res_i), .QN(n372) );
  DFC3 RegPC_reg_2_ ( .D(n386), .C(n258), .RN(res_i), .QN(n371) );
  DFC3 RegPC_reg_1_ ( .D(n385), .C(n258), .RN(res_i), .QN(n370) );
  DFC3 RegPC_reg_0_ ( .D(n384), .C(n258), .RN(res_i), .QN(n369) );
  DFC3 RegPC_reg_15_ ( .D(n399), .C(n258), .RN(res_i), .QN(n368) );
  alu_16 thealu ( .side_a_i(AluSideA), .side_b_i(RegTmpB), .carry_i(carry_i), 
        .alu_func_i(alu_func_i), .result_o(AluResult), .carry_o(carry_o), 
        .zero_o(zero_o) );
  reg_file_8_0 thereg_file ( .clk_i(clk_i), .reg_a_idx_i(RegAIdx), 
        .reg_b_idx_i(RegBIdx), .clk_en_reg_file_i(clk_en_reg_file_i), .reg_i({
        Load[15:10], n402, n403, Load[7:5], n400, n401, Load[2:0]}), .reg_a_o(
        RaValue), .reg_b_o(RbValue) );
  SNPS_CLOCK_GATE_HIGH_datapath_0 clk_gate_RegPC_reg_13_ ( .CLK(clk_i), .EN(
        clk_en_pc_i), .ENCLK(n258), .TE(n113) );
  DFEP1 RegBIdx_reg_3_ ( .D(n405), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegBIdx[3]) );
  DFEP1 RegAIdx_reg_3_ ( .D(n404), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegAIdx[3]) );
  DFEP1 RegAIdx_reg_1_ ( .D(N12), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegAIdx[1]) );
  DFEP1 RegAIdx_reg_0_ ( .D(N11), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegAIdx[0]) );
  DFEC1 RegOpcode_reg_4_ ( .D(mem_data_i[14]), .E(clk_en_op_code_i), .C(clk_i), 
        .RN(res_i), .Q(op_code_o[4]) );
  DFEC1 RegOpcode_reg_2_ ( .D(mem_data_i[12]), .E(clk_en_op_code_i), .C(clk_i), 
        .RN(res_i), .Q(op_code_o[2]) );
  DFEC1 RegOpcode_reg_3_ ( .D(mem_data_i[13]), .E(clk_en_op_code_i), .C(clk_i), 
        .RN(res_i), .Q(op_code_o[3]) );
  DFEP1 RegBIdx_reg_1_ ( .D(N18), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegBIdx[1]) );
  DFEP1 RegBIdx_reg_0_ ( .D(N17), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegBIdx[0]) );
  DFEP1 RegBIdx_reg_2_ ( .D(N19), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegBIdx[2]) );
  DFEC1 RegOpcode_reg_5_ ( .D(mem_data_i[15]), .E(clk_en_op_code_i), .C(clk_i), 
        .RN(res_i), .Q(op_code_o[5]) );
  DFEC1 RegOpcode_reg_1_ ( .D(mem_data_i[11]), .E(clk_en_op_code_i), .C(clk_i), 
        .RN(res_i), .Q(op_code_o[1]) );
  DFEC1 RegOpcode_reg_0_ ( .D(mem_data_i[10]), .E(clk_en_op_code_i), .C(clk_i), 
        .RN(res_i), .Q(op_code_o[0]) );
  DFEP3 RegAIdx_reg_2_ ( .D(N13), .E(clk_en_op_code_i), .C(clk_i), .SN(res_i), 
        .Q(RegAIdx[2]) );
  IMUX21 U3 ( .A(n91), .B(n382), .S(sel_pc_i), .Q(AluSideA[12]) );
  IMUX21 U4 ( .A(n92), .B(n380), .S(sel_pc_i), .Q(AluSideA[11]) );
  IMUX21 U5 ( .A(n89), .B(n381), .S(sel_pc_i), .Q(AluSideA[14]) );
  IMUX21 U6 ( .A(n90), .B(n383), .S(sel_pc_i), .Q(AluSideA[13]) );
  IMUX21 U7 ( .A(n101), .B(n371), .S(sel_pc_i), .Q(AluSideA[2]) );
  IMUX21 U8 ( .A(n93), .B(n379), .S(sel_pc_i), .Q(AluSideA[10]) );
  IMUX21 U9 ( .A(n98), .B(n374), .S(sel_pc_i), .Q(AluSideA[5]) );
  IMUX21 U10 ( .A(n99), .B(n373), .S(sel_pc_i), .Q(AluSideA[4]) );
  IMUX21 U11 ( .A(n100), .B(n372), .S(sel_pc_i), .Q(AluSideA[3]) );
  IMUX21 U12 ( .A(n95), .B(n377), .S(sel_pc_i), .Q(AluSideA[8]) );
  IMUX21 U13 ( .A(n96), .B(n376), .S(sel_pc_i), .Q(AluSideA[7]) );
  IMUX21 U14 ( .A(n94), .B(n378), .S(sel_pc_i), .Q(AluSideA[9]) );
  IMUX21 U15 ( .A(n97), .B(n375), .S(sel_pc_i), .Q(AluSideA[6]) );
  IMUX21 U16 ( .A(n102), .B(n370), .S(sel_pc_i), .Q(AluSideA[1]) );
  IMUX21 U17 ( .A(n88), .B(n368), .S(sel_pc_i), .Q(AluSideA[15]) );
  LOGIC0 U18 ( .Q(n113) );
  NAND20 U19 ( .A(n358), .B(n359), .Q(reg_decode_error_o) );
  NAND40 U20 ( .A(RegAIdx[0]), .B(RegAIdx[1]), .C(RegAIdx[3]), .D(RegAIdx[2]), 
        .Q(n359) );
  NAND40 U21 ( .A(RegBIdx[3]), .B(RegBIdx[2]), .C(RegBIdx[1]), .D(RegBIdx[0]), 
        .Q(n358) );
  MUX21 U22 ( .A(RaValue[0]), .B(AluResult[0]), .S(sel_pc_i), .Q(n384) );
  MUX21 U23 ( .A(RaValue[1]), .B(AluResult[1]), .S(sel_pc_i), .Q(n385) );
  MUX21 U24 ( .A(RaValue[2]), .B(AluResult[2]), .S(sel_pc_i), .Q(n386) );
  MUX21 U25 ( .A(RaValue[3]), .B(AluResult[3]), .S(sel_pc_i), .Q(n387) );
  MUX21 U26 ( .A(RaValue[4]), .B(AluResult[4]), .S(sel_pc_i), .Q(n388) );
  MUX21 U27 ( .A(RaValue[5]), .B(AluResult[5]), .S(sel_pc_i), .Q(n389) );
  MUX21 U28 ( .A(RaValue[6]), .B(AluResult[6]), .S(sel_pc_i), .Q(n390) );
  MUX21 U29 ( .A(RaValue[7]), .B(AluResult[7]), .S(sel_pc_i), .Q(n391) );
  MUX21 U30 ( .A(RaValue[8]), .B(AluResult[8]), .S(sel_pc_i), .Q(n392) );
  MUX21 U31 ( .A(RaValue[9]), .B(AluResult[9]), .S(sel_pc_i), .Q(n393) );
  MUX21 U32 ( .A(RaValue[10]), .B(AluResult[10]), .S(sel_pc_i), .Q(n394) );
  MUX21 U33 ( .A(RaValue[11]), .B(AluResult[11]), .S(sel_pc_i), .Q(n395) );
  MUX21 U34 ( .A(RaValue[12]), .B(AluResult[12]), .S(sel_pc_i), .Q(n396) );
  MUX21 U35 ( .A(RaValue[13]), .B(AluResult[13]), .S(sel_pc_i), .Q(n397) );
  MUX21 U36 ( .A(RaValue[14]), .B(AluResult[14]), .S(sel_pc_i), .Q(n398) );
  MUX21 U37 ( .A(RaValue[15]), .B(AluResult[15]), .S(sel_pc_i), .Q(n399) );
  MUX21 U38 ( .A(AluResult[4]), .B(mem_data_i[4]), .S(sel_load_i), .Q(n400) );
  MUX21 U39 ( .A(AluResult[3]), .B(mem_data_i[3]), .S(sel_load_i), .Q(n401) );
  MUX21 U40 ( .A(AluResult[9]), .B(mem_data_i[9]), .S(sel_load_i), .Q(n402) );
  MUX21 U41 ( .A(AluResult[8]), .B(mem_data_i[8]), .S(sel_load_i), .Q(n403) );
  CLKIN0 U42 ( .A(n360), .Q(n404) );
  CLKIN0 U43 ( .A(n361), .Q(n405) );
  IMUX20 U44 ( .A(n378), .B(n37), .S(sel_addr_i), .Q(mem_addr_o[9]) );
  IMUX20 U45 ( .A(n377), .B(n38), .S(sel_addr_i), .Q(mem_addr_o[8]) );
  IMUX20 U46 ( .A(n376), .B(n39), .S(sel_addr_i), .Q(mem_addr_o[7]) );
  IMUX20 U47 ( .A(n375), .B(n40), .S(sel_addr_i), .Q(mem_addr_o[6]) );
  IMUX20 U48 ( .A(n374), .B(n41), .S(sel_addr_i), .Q(mem_addr_o[5]) );
  IMUX20 U49 ( .A(n373), .B(n42), .S(sel_addr_i), .Q(mem_addr_o[4]) );
  IMUX20 U50 ( .A(n372), .B(n43), .S(sel_addr_i), .Q(mem_addr_o[3]) );
  IMUX20 U51 ( .A(n371), .B(n44), .S(sel_addr_i), .Q(mem_addr_o[2]) );
  IMUX20 U52 ( .A(n370), .B(n45), .S(sel_addr_i), .Q(mem_addr_o[1]) );
  IMUX20 U53 ( .A(n368), .B(n31), .S(sel_addr_i), .Q(mem_addr_o[15]) );
  IMUX20 U54 ( .A(n381), .B(n32), .S(sel_addr_i), .Q(mem_addr_o[14]) );
  IMUX20 U55 ( .A(n383), .B(n33), .S(sel_addr_i), .Q(mem_addr_o[13]) );
  IMUX20 U56 ( .A(n382), .B(n34), .S(sel_addr_i), .Q(mem_addr_o[12]) );
  IMUX20 U57 ( .A(n380), .B(n35), .S(sel_addr_i), .Q(mem_addr_o[11]) );
  IMUX20 U58 ( .A(n379), .B(n36), .S(sel_addr_i), .Q(mem_addr_o[10]) );
  IMUX20 U59 ( .A(n369), .B(n46), .S(sel_addr_i), .Q(mem_addr_o[0]) );
  NAND20 U60 ( .A(n361), .B(n362), .Q(N19) );
  CLKIN0 U61 ( .A(mem_data_i[2]), .Q(n362) );
  NAND20 U62 ( .A(n361), .B(n363), .Q(N18) );
  CLKIN0 U63 ( .A(mem_data_i[1]), .Q(n363) );
  NAND20 U64 ( .A(n361), .B(n364), .Q(N17) );
  CLKIN0 U65 ( .A(mem_data_i[0]), .Q(n364) );
  NOR20 U66 ( .A(mem_data_i[4]), .B(mem_data_i[3]), .Q(n361) );
  NAND20 U67 ( .A(n360), .B(n365), .Q(N13) );
  CLKIN0 U68 ( .A(mem_data_i[7]), .Q(n365) );
  NAND20 U69 ( .A(n360), .B(n366), .Q(N12) );
  CLKIN0 U70 ( .A(mem_data_i[6]), .Q(n366) );
  NAND20 U71 ( .A(n360), .B(n367), .Q(N11) );
  CLKIN0 U72 ( .A(mem_data_i[5]), .Q(n367) );
  NOR20 U73 ( .A(mem_data_i[9]), .B(mem_data_i[8]), .Q(n360) );
  MUX21 U74 ( .A(AluResult[7]), .B(mem_data_i[7]), .S(sel_load_i), .Q(Load[7])
         );
  MUX21 U75 ( .A(AluResult[6]), .B(mem_data_i[6]), .S(sel_load_i), .Q(Load[6])
         );
  MUX21 U76 ( .A(AluResult[5]), .B(mem_data_i[5]), .S(sel_load_i), .Q(Load[5])
         );
  MUX21 U77 ( .A(AluResult[2]), .B(mem_data_i[2]), .S(sel_load_i), .Q(Load[2])
         );
  MUX21 U78 ( .A(AluResult[1]), .B(mem_data_i[1]), .S(sel_load_i), .Q(Load[1])
         );
  MUX21 U79 ( .A(AluResult[15]), .B(mem_data_i[15]), .S(sel_load_i), .Q(
        Load[15]) );
  MUX21 U80 ( .A(AluResult[14]), .B(mem_data_i[14]), .S(sel_load_i), .Q(
        Load[14]) );
  MUX21 U81 ( .A(AluResult[13]), .B(mem_data_i[13]), .S(sel_load_i), .Q(
        Load[13]) );
  MUX21 U82 ( .A(AluResult[12]), .B(mem_data_i[12]), .S(sel_load_i), .Q(
        Load[12]) );
  MUX21 U83 ( .A(AluResult[11]), .B(mem_data_i[11]), .S(sel_load_i), .Q(
        Load[11]) );
  MUX21 U84 ( .A(AluResult[10]), .B(mem_data_i[10]), .S(sel_load_i), .Q(
        Load[10]) );
  MUX21 U85 ( .A(AluResult[0]), .B(mem_data_i[0]), .S(sel_load_i), .Q(Load[0])
         );
  IMUX20 U86 ( .A(n103), .B(n369), .S(sel_pc_i), .Q(AluSideA[0]) );
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
         mem_rd_stb, mem_wr_stb, n34, n35, n36, n37;
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
  IMUX20 U33 ( .A(n34), .B(n35), .S(test_mode_i), .Q(mem_we_no) );
  NOR20 U34 ( .A(clk_i), .B(n35), .Q(n34) );
  CLKIN0 U35 ( .A(mem_wr_stb), .Q(n35) );
  IMUX20 U36 ( .A(n36), .B(n37), .S(test_mode_i), .Q(mem_oe_no) );
  NOR20 U37 ( .A(clk_i), .B(n37), .Q(n36) );
  CLKIN0 U38 ( .A(mem_rd_stb), .Q(n37) );
  NOR20 U39 ( .A(mem_wr_stb), .B(mem_rd_stb), .Q(mem_ce_no) );
endmodule


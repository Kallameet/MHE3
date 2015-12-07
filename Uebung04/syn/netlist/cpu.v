`include "/eda/ams/verilog/c35b3/c35_CORELIB.v"
`include "/eda/ams/verilog/udp.v"

module control_test_1 ( clk_i, res_i, op_code_i, reg_decode_error_i, sel_pc_o, 
        sel_load_o, sel_addr_o, clk_en_pc_o, clk_en_reg_file_o, 
        clk_en_op_code_o, alu_func_o, carry_o, carry_i, zero_i, mem_rd_stb_o, 
        mem_wr_stb_o, illegal_inst_o, cpu_halt_o, test_si, test_se );
  input [5:0] op_code_i;
  output [3:0] alu_func_o;
  input clk_i, res_i, reg_decode_error_i, carry_i, zero_i, test_si, test_se;
  output sel_pc_o, sel_load_o, sel_addr_o, clk_en_pc_o, clk_en_reg_file_o,
         clk_en_op_code_o, carry_o, mem_rd_stb_o, mem_wr_stb_o, illegal_inst_o,
         cpu_halt_o;
  wire   n94, NextMemRead, NextMemWrite, n58, n107, n11, n12, n95, n97, n98,
         n178, n180, n181, n182, n183, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258;

  DFSEC1 Zero_reg ( .D(zero_i), .SD(illegal_inst_o), .E(n58), .SE(test_se), 
        .C(clk_i), .RN(res_i), .Q(n257), .QN(n11) );
  DFSC1 Cycle_reg_2_ ( .D(n254), .SD(n181), .SE(test_se), .C(clk_i), .RN(res_i), .Q(n183), .QN(n95) );
  DFSC1 Cycle_reg_0_ ( .D(n178), .SD(n258), .SE(test_se), .C(clk_i), .RN(res_i), .Q(n180), .QN(n97) );
  DFSC1 Cycle_reg_1_ ( .D(n107), .SD(n180), .SE(test_se), .C(clk_i), .RN(res_i), .Q(n181), .QN(n98) );
  DFSC1 IllegalInst_reg ( .D(n256), .SD(n183), .SE(test_se), .C(clk_i), .RN(
        res_i), .Q(illegal_inst_o), .QN(n12) );
  DFSEC1 Carry_reg ( .D(carry_i), .SD(test_si), .E(n58), .SE(test_se), .C(
        clk_i), .RN(res_i), .Q(n258), .QN(n182) );
  DFSC1 mem_wr_stb_o_reg ( .D(NextMemWrite), .SD(mem_rd_stb_o), .SE(test_se), 
        .C(clk_i), .RN(res_i), .Q(mem_wr_stb_o) );
  DFSC1 mem_rd_stb_o_reg ( .D(NextMemRead), .SD(cpu_halt_o), .SE(test_se), .C(
        clk_i), .RN(res_i), .Q(mem_rd_stb_o) );
  DFSC1 cpu_halt_o_reg ( .D(n255), .SD(n257), .SE(test_se), .C(clk_i), .RN(
        res_i), .Q(cpu_halt_o) );
  NOR32 U3 ( .A(n222), .B(op_code_i[5]), .C(n216), .Q(sel_load_o) );
  OAI222 U4 ( .A(n95), .B(n225), .C(n213), .D(n216), .Q(clk_en_op_code_o) );
  OAI212 U5 ( .A(n219), .B(n202), .C(n203), .Q(clk_en_pc_o) );
  OAI212 U6 ( .A(n189), .B(n190), .C(n191), .Q(sel_addr_o) );
  BUF2 U7 ( .A(n94), .Q(sel_pc_o) );
  OAI2111 U8 ( .A(n201), .B(n202), .C(n203), .D(n200), .Q(n94) );
  OAI310 U10 ( .A(n192), .B(op_code_i[5]), .C(n193), .D(n194), .Q(n254) );
  IMUX20 U11 ( .A(n195), .B(n196), .S(n95), .Q(n194) );
  NOR20 U12 ( .A(n197), .B(n198), .Q(n193) );
  CLKIN0 U13 ( .A(n199), .Q(n255) );
  CLKIN0 U14 ( .A(n200), .Q(n256) );
  OAI210 U15 ( .A(reg_decode_error_i), .B(n204), .C(n205), .Q(n200) );
  NOR40 U16 ( .A(n198), .B(n206), .C(n207), .D(n208), .Q(n201) );
  NOR20 U17 ( .A(n209), .B(n210), .Q(n207) );
  IMUX20 U18 ( .A(n182), .B(n11), .S(op_code_i[0]), .Q(n210) );
  AOI210 U19 ( .A(n211), .B(n212), .C(n192), .Q(n58) );
  OAI2110 U20 ( .A(n213), .B(n192), .C(n199), .D(n214), .Q(n178) );
  AOI220 U21 ( .A(n195), .B(n180), .C(n196), .D(n183), .Q(n214) );
  NAND30 U22 ( .A(n206), .B(n215), .C(n205), .Q(n199) );
  OAI210 U23 ( .A(n12), .B(n216), .C(n217), .Q(n107) );
  AOI220 U24 ( .A(n195), .B(n181), .C(n205), .D(n218), .Q(n217) );
  CLKIN0 U25 ( .A(n219), .Q(n218) );
  NOR20 U26 ( .A(n220), .B(n196), .Q(n195) );
  AOI210 U27 ( .A(n181), .B(n180), .C(n183), .Q(n220) );
  AOI210 U28 ( .A(n221), .B(n222), .C(n192), .Q(clk_en_reg_file_o) );
  NAND20 U29 ( .A(n12), .B(n223), .Q(n192) );
  CLKIN0 U30 ( .A(n224), .Q(n221) );
  NOR40 U31 ( .A(n208), .B(n204), .C(n198), .D(op_code_i[3]), .Q(n219) );
  AOI2110 U32 ( .A(n226), .B(n227), .C(op_code_i[3]), .D(n224), .Q(n213) );
  NAND30 U33 ( .A(n228), .B(n229), .C(n211), .Q(n224) );
  AOI2110 U34 ( .A(op_code_i[1]), .B(op_code_i[2]), .C(n230), .D(op_code_i[5]), 
        .Q(n211) );
  OAI210 U35 ( .A(op_code_i[1]), .B(n231), .C(op_code_i[4]), .Q(n228) );
  NOR40 U36 ( .A(op_code_i[5]), .B(n232), .C(n182), .D(n233), .Q(carry_o) );
  AOI220 U37 ( .A(n234), .B(op_code_i[0]), .C(n235), .D(op_code_i[1]), .Q(n232) );
  OAI2110 U38 ( .A(n236), .B(n233), .C(n203), .D(n202), .Q(alu_func_o[3]) );
  AOI2110 U39 ( .A(op_code_i[3]), .B(n237), .C(n235), .D(n234), .Q(n236) );
  AOI210 U40 ( .A(n229), .B(n238), .C(n233), .Q(alu_func_o[2]) );
  NAND30 U41 ( .A(n203), .B(n202), .C(n239), .Q(alu_func_o[1]) );
  CLKIN0 U42 ( .A(n240), .Q(n239) );
  OAI310 U43 ( .A(n209), .B(op_code_i[2]), .C(n233), .D(n241), .Q(n240) );
  NAND20 U44 ( .A(sel_load_o), .B(n190), .Q(n203) );
  CLKIN0 U45 ( .A(op_code_i[0]), .Q(n190) );
  OAI210 U46 ( .A(n242), .B(n233), .C(n241), .Q(alu_func_o[0]) );
  NAND40 U47 ( .A(n235), .B(n227), .C(n223), .D(n212), .Q(n241) );
  NAND20 U48 ( .A(op_code_i[4]), .B(n223), .Q(n233) );
  AOI210 U49 ( .A(n235), .B(op_code_i[0]), .C(n243), .Q(n242) );
  OAI220 U50 ( .A(op_code_i[2]), .B(n244), .C(n209), .D(n245), .Q(n243) );
  AOI210 U51 ( .A(op_code_i[0]), .B(op_code_i[1]), .C(n246), .Q(n244) );
  MUX21 U52 ( .A(n227), .B(n230), .S(n231), .Q(n246) );
  CLKIN0 U53 ( .A(n229), .Q(n235) );
  NOR30 U54 ( .A(n202), .B(op_code_i[5]), .C(n247), .Q(NextMemWrite) );
  NAND30 U55 ( .A(n191), .B(n189), .C(n248), .Q(NextMemRead) );
  AOI220 U56 ( .A(n205), .B(n249), .C(n196), .D(n95), .Q(n248) );
  CLKIN0 U57 ( .A(n225), .Q(n196) );
  NAND20 U58 ( .A(n98), .B(n97), .Q(n225) );
  CLKIN0 U59 ( .A(n250), .Q(n249) );
  NOR40 U60 ( .A(n208), .B(n204), .C(n206), .D(op_code_i[3]), .Q(n250) );
  NOR30 U61 ( .A(n238), .B(op_code_i[4]), .C(n237), .Q(n206) );
  NAND20 U62 ( .A(n251), .B(n215), .Q(n204) );
  IMUX20 U63 ( .A(n252), .B(n253), .S(op_code_i[2]), .Q(n251) );
  NOR20 U64 ( .A(op_code_i[4]), .B(n227), .Q(n253) );
  NOR20 U65 ( .A(n237), .B(n231), .Q(n252) );
  OAI2110 U66 ( .A(n230), .B(n238), .C(n229), .D(n212), .Q(n208) );
  NAND20 U67 ( .A(op_code_i[3]), .B(op_code_i[2]), .Q(n229) );
  CLKIN0 U68 ( .A(n237), .Q(n230) );
  NAND20 U69 ( .A(op_code_i[0]), .B(n209), .Q(n237) );
  CLKIN0 U70 ( .A(n202), .Q(n205) );
  NAND30 U71 ( .A(n95), .B(n180), .C(n98), .Q(n202) );
  CLKIN0 U72 ( .A(sel_load_o), .Q(n189) );
  CLKIN0 U73 ( .A(n197), .Q(n222) );
  NOR30 U74 ( .A(n238), .B(op_code_i[4]), .C(n209), .Q(n197) );
  CLKIN0 U75 ( .A(op_code_i[1]), .Q(n209) );
  NAND20 U76 ( .A(n226), .B(n231), .Q(n238) );
  CLKIN0 U77 ( .A(op_code_i[2]), .Q(n226) );
  NAND30 U78 ( .A(n223), .B(n215), .C(n198), .Q(n191) );
  CLKIN0 U79 ( .A(n247), .Q(n198) );
  NAND30 U80 ( .A(n234), .B(n212), .C(n227), .Q(n247) );
  NOR20 U81 ( .A(op_code_i[0]), .B(op_code_i[1]), .Q(n227) );
  CLKIN0 U82 ( .A(op_code_i[4]), .Q(n212) );
  CLKIN0 U83 ( .A(n245), .Q(n234) );
  NAND20 U84 ( .A(op_code_i[2]), .B(n231), .Q(n245) );
  CLKIN0 U85 ( .A(op_code_i[3]), .Q(n231) );
  CLKIN0 U86 ( .A(op_code_i[5]), .Q(n215) );
  CLKIN0 U87 ( .A(n216), .Q(n223) );
  NAND30 U88 ( .A(n95), .B(n181), .C(n97), .Q(n216) );
endmodule


module reg_file_8_0_test_1 ( clk_i, reg_a_idx_i, reg_b_idx_i, 
        clk_en_reg_file_i, reg_i, reg_a_o, reg_b_o, test_si, test_so, test_se
 );
  input [3:0] reg_a_idx_i;
  input [3:0] reg_b_idx_i;
  input [15:0] reg_i;
  output [15:0] reg_a_o;
  output [15:0] reg_b_o;
  input clk_i, clk_en_reg_file_i, test_si, test_se;
  output test_so;
  wire   registers_7__14_, registers_7__13_, registers_7__12_,
         registers_7__11_, registers_7__10_, registers_7__9_, registers_7__8_,
         registers_7__7_, registers_7__6_, registers_7__5_, registers_7__4_,
         registers_7__3_, registers_7__2_, registers_7__1_, registers_7__0_,
         registers_6__15_, registers_6__14_, registers_6__13_,
         registers_6__12_, registers_6__11_, registers_6__10_, registers_6__9_,
         registers_6__8_, registers_6__7_, registers_6__6_, registers_6__5_,
         registers_6__4_, registers_6__3_, registers_6__2_, registers_6__1_,
         registers_6__0_, registers_5__15_, registers_5__14_, registers_5__13_,
         registers_5__12_, registers_5__11_, registers_5__10_, registers_5__9_,
         registers_5__8_, registers_5__7_, registers_5__6_, registers_5__5_,
         registers_5__4_, registers_5__3_, registers_5__2_, registers_5__1_,
         registers_5__0_, registers_4__15_, registers_4__14_, registers_4__13_,
         registers_4__12_, registers_4__11_, registers_4__10_, registers_4__9_,
         registers_4__8_, registers_4__7_, registers_4__6_, registers_4__5_,
         registers_4__4_, registers_4__3_, registers_4__2_, registers_4__1_,
         registers_4__0_, registers_3__15_, registers_3__14_, registers_3__13_,
         registers_3__12_, registers_3__11_, registers_3__10_, registers_3__9_,
         registers_3__8_, registers_3__7_, registers_3__6_, registers_3__5_,
         registers_3__4_, registers_3__3_, registers_3__2_, registers_3__1_,
         registers_3__0_, registers_2__15_, registers_2__14_, registers_2__13_,
         registers_2__12_, registers_2__11_, registers_2__10_, registers_2__9_,
         registers_2__8_, registers_2__7_, registers_2__6_, registers_2__5_,
         registers_2__4_, registers_2__3_, registers_2__2_, registers_2__1_,
         registers_2__0_, registers_1__15_, registers_1__14_, registers_1__13_,
         registers_1__12_, registers_1__11_, registers_1__10_, registers_1__9_,
         registers_1__8_, registers_1__7_, registers_1__6_, registers_1__5_,
         registers_1__4_, registers_1__3_, registers_1__2_, registers_1__1_,
         registers_1__0_, registers_0__15_, registers_0__14_, registers_0__13_,
         registers_0__12_, registers_0__11_, registers_0__10_, registers_0__9_,
         registers_0__8_, registers_0__7_, registers_0__6_, registers_0__5_,
         registers_0__4_, registers_0__3_, registers_0__2_, registers_0__1_,
         registers_0__0_, n289, n290, n291, n292, n293, n294, n295, n296, n713,
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
         n868, n869, n870, n871, n872;

  DFSE1 registers_reg_7__15_ ( .D(reg_i[15]), .SD(registers_7__14_), .E(n289), 
        .SE(test_se), .C(clk_i), .Q(test_so) );
  DFSE1 registers_reg_7__14_ ( .D(reg_i[14]), .SD(registers_7__13_), .E(n289), 
        .SE(test_se), .C(clk_i), .Q(registers_7__14_) );
  DFSE1 registers_reg_7__13_ ( .D(reg_i[13]), .SD(registers_7__12_), .E(n289), 
        .SE(test_se), .C(clk_i), .Q(registers_7__13_) );
  DFSE1 registers_reg_7__12_ ( .D(reg_i[12]), .SD(registers_7__11_), .E(n289), 
        .SE(test_se), .C(clk_i), .Q(registers_7__12_) );
  DFSE1 registers_reg_7__11_ ( .D(reg_i[11]), .SD(registers_7__10_), .E(n289), 
        .SE(test_se), .C(clk_i), .Q(registers_7__11_) );
  DFSE1 registers_reg_7__10_ ( .D(reg_i[10]), .SD(registers_7__9_), .E(n289), 
        .SE(test_se), .C(clk_i), .Q(registers_7__10_) );
  DFSE1 registers_reg_7__9_ ( .D(reg_i[9]), .SD(registers_7__8_), .E(n289), 
        .SE(test_se), .C(clk_i), .Q(registers_7__9_) );
  DFSE1 registers_reg_7__8_ ( .D(reg_i[8]), .SD(registers_7__7_), .E(n289), 
        .SE(test_se), .C(clk_i), .Q(registers_7__8_) );
  DFSE1 registers_reg_7__7_ ( .D(reg_i[7]), .SD(registers_7__6_), .E(n289), 
        .SE(test_se), .C(clk_i), .Q(registers_7__7_) );
  DFSE1 registers_reg_7__6_ ( .D(reg_i[6]), .SD(registers_7__5_), .E(n289), 
        .SE(test_se), .C(clk_i), .Q(registers_7__6_) );
  DFSE1 registers_reg_7__5_ ( .D(reg_i[5]), .SD(registers_7__4_), .E(n289), 
        .SE(test_se), .C(clk_i), .Q(registers_7__5_) );
  DFSE1 registers_reg_7__4_ ( .D(reg_i[4]), .SD(registers_7__3_), .E(n289), 
        .SE(test_se), .C(clk_i), .Q(registers_7__4_) );
  DFSE1 registers_reg_7__3_ ( .D(reg_i[3]), .SD(registers_7__2_), .E(n289), 
        .SE(test_se), .C(clk_i), .Q(registers_7__3_) );
  DFSE1 registers_reg_7__2_ ( .D(reg_i[2]), .SD(registers_7__1_), .E(n289), 
        .SE(test_se), .C(clk_i), .Q(registers_7__2_) );
  DFSE1 registers_reg_7__1_ ( .D(reg_i[1]), .SD(registers_7__0_), .E(n289), 
        .SE(test_se), .C(clk_i), .Q(registers_7__1_) );
  DFSE1 registers_reg_7__0_ ( .D(reg_i[0]), .SD(registers_6__15_), .E(n289), 
        .SE(test_se), .C(clk_i), .Q(registers_7__0_) );
  DFSE1 registers_reg_6__15_ ( .D(reg_i[15]), .SD(registers_6__14_), .E(n290), 
        .SE(test_se), .C(clk_i), .Q(registers_6__15_) );
  DFSE1 registers_reg_6__14_ ( .D(reg_i[14]), .SD(registers_6__13_), .E(n290), 
        .SE(test_se), .C(clk_i), .Q(registers_6__14_) );
  DFSE1 registers_reg_6__13_ ( .D(reg_i[13]), .SD(registers_6__12_), .E(n290), 
        .SE(test_se), .C(clk_i), .Q(registers_6__13_) );
  DFSE1 registers_reg_6__12_ ( .D(reg_i[12]), .SD(registers_6__11_), .E(n290), 
        .SE(test_se), .C(clk_i), .Q(registers_6__12_) );
  DFSE1 registers_reg_6__11_ ( .D(reg_i[11]), .SD(registers_6__10_), .E(n290), 
        .SE(test_se), .C(clk_i), .Q(registers_6__11_) );
  DFSE1 registers_reg_6__10_ ( .D(reg_i[10]), .SD(registers_6__9_), .E(n290), 
        .SE(test_se), .C(clk_i), .Q(registers_6__10_) );
  DFSE1 registers_reg_6__9_ ( .D(reg_i[9]), .SD(registers_6__8_), .E(n290), 
        .SE(test_se), .C(clk_i), .Q(registers_6__9_) );
  DFSE1 registers_reg_6__8_ ( .D(reg_i[8]), .SD(registers_6__7_), .E(n290), 
        .SE(test_se), .C(clk_i), .Q(registers_6__8_) );
  DFSE1 registers_reg_6__7_ ( .D(reg_i[7]), .SD(registers_6__6_), .E(n290), 
        .SE(test_se), .C(clk_i), .Q(registers_6__7_) );
  DFSE1 registers_reg_6__6_ ( .D(reg_i[6]), .SD(registers_6__5_), .E(n290), 
        .SE(test_se), .C(clk_i), .Q(registers_6__6_) );
  DFSE1 registers_reg_6__5_ ( .D(reg_i[5]), .SD(registers_6__4_), .E(n290), 
        .SE(test_se), .C(clk_i), .Q(registers_6__5_) );
  DFSE1 registers_reg_6__4_ ( .D(reg_i[4]), .SD(registers_6__3_), .E(n290), 
        .SE(test_se), .C(clk_i), .Q(registers_6__4_) );
  DFSE1 registers_reg_6__3_ ( .D(reg_i[3]), .SD(registers_6__2_), .E(n290), 
        .SE(test_se), .C(clk_i), .Q(registers_6__3_) );
  DFSE1 registers_reg_6__2_ ( .D(reg_i[2]), .SD(registers_6__1_), .E(n290), 
        .SE(test_se), .C(clk_i), .Q(registers_6__2_) );
  DFSE1 registers_reg_6__1_ ( .D(reg_i[1]), .SD(registers_6__0_), .E(n290), 
        .SE(test_se), .C(clk_i), .Q(registers_6__1_) );
  DFSE1 registers_reg_6__0_ ( .D(reg_i[0]), .SD(registers_5__15_), .E(n290), 
        .SE(test_se), .C(clk_i), .Q(registers_6__0_) );
  DFSE1 registers_reg_5__15_ ( .D(reg_i[15]), .SD(registers_5__14_), .E(n291), 
        .SE(test_se), .C(clk_i), .Q(registers_5__15_) );
  DFSE1 registers_reg_5__14_ ( .D(reg_i[14]), .SD(registers_5__13_), .E(n291), 
        .SE(test_se), .C(clk_i), .Q(registers_5__14_) );
  DFSE1 registers_reg_5__13_ ( .D(reg_i[13]), .SD(registers_5__12_), .E(n291), 
        .SE(test_se), .C(clk_i), .Q(registers_5__13_) );
  DFSE1 registers_reg_5__12_ ( .D(reg_i[12]), .SD(registers_5__11_), .E(n291), 
        .SE(test_se), .C(clk_i), .Q(registers_5__12_) );
  DFSE1 registers_reg_5__11_ ( .D(reg_i[11]), .SD(registers_5__10_), .E(n291), 
        .SE(test_se), .C(clk_i), .Q(registers_5__11_) );
  DFSE1 registers_reg_5__10_ ( .D(reg_i[10]), .SD(registers_5__9_), .E(n291), 
        .SE(test_se), .C(clk_i), .Q(registers_5__10_) );
  DFSE1 registers_reg_5__9_ ( .D(reg_i[9]), .SD(registers_5__8_), .E(n291), 
        .SE(test_se), .C(clk_i), .Q(registers_5__9_) );
  DFSE1 registers_reg_5__8_ ( .D(reg_i[8]), .SD(registers_5__7_), .E(n291), 
        .SE(test_se), .C(clk_i), .Q(registers_5__8_) );
  DFSE1 registers_reg_5__7_ ( .D(reg_i[7]), .SD(registers_5__6_), .E(n291), 
        .SE(test_se), .C(clk_i), .Q(registers_5__7_) );
  DFSE1 registers_reg_5__6_ ( .D(reg_i[6]), .SD(registers_5__5_), .E(n291), 
        .SE(test_se), .C(clk_i), .Q(registers_5__6_) );
  DFSE1 registers_reg_5__5_ ( .D(reg_i[5]), .SD(registers_5__4_), .E(n291), 
        .SE(test_se), .C(clk_i), .Q(registers_5__5_) );
  DFSE1 registers_reg_5__4_ ( .D(reg_i[4]), .SD(registers_5__3_), .E(n291), 
        .SE(test_se), .C(clk_i), .Q(registers_5__4_) );
  DFSE1 registers_reg_5__3_ ( .D(reg_i[3]), .SD(registers_5__2_), .E(n291), 
        .SE(test_se), .C(clk_i), .Q(registers_5__3_) );
  DFSE1 registers_reg_5__2_ ( .D(reg_i[2]), .SD(registers_5__1_), .E(n291), 
        .SE(test_se), .C(clk_i), .Q(registers_5__2_) );
  DFSE1 registers_reg_5__1_ ( .D(reg_i[1]), .SD(registers_5__0_), .E(n291), 
        .SE(test_se), .C(clk_i), .Q(registers_5__1_) );
  DFSE1 registers_reg_5__0_ ( .D(reg_i[0]), .SD(registers_4__15_), .E(n291), 
        .SE(test_se), .C(clk_i), .Q(registers_5__0_) );
  DFSE1 registers_reg_4__15_ ( .D(reg_i[15]), .SD(registers_4__14_), .E(n292), 
        .SE(test_se), .C(clk_i), .Q(registers_4__15_) );
  DFSE1 registers_reg_4__14_ ( .D(reg_i[14]), .SD(registers_4__13_), .E(n292), 
        .SE(test_se), .C(clk_i), .Q(registers_4__14_) );
  DFSE1 registers_reg_4__13_ ( .D(reg_i[13]), .SD(registers_4__12_), .E(n292), 
        .SE(test_se), .C(clk_i), .Q(registers_4__13_) );
  DFSE1 registers_reg_4__12_ ( .D(reg_i[12]), .SD(registers_4__11_), .E(n292), 
        .SE(test_se), .C(clk_i), .Q(registers_4__12_) );
  DFSE1 registers_reg_4__11_ ( .D(reg_i[11]), .SD(registers_4__10_), .E(n292), 
        .SE(test_se), .C(clk_i), .Q(registers_4__11_) );
  DFSE1 registers_reg_4__10_ ( .D(reg_i[10]), .SD(registers_4__9_), .E(n292), 
        .SE(test_se), .C(clk_i), .Q(registers_4__10_) );
  DFSE1 registers_reg_4__9_ ( .D(reg_i[9]), .SD(registers_4__8_), .E(n292), 
        .SE(test_se), .C(clk_i), .Q(registers_4__9_) );
  DFSE1 registers_reg_4__8_ ( .D(reg_i[8]), .SD(registers_4__7_), .E(n292), 
        .SE(test_se), .C(clk_i), .Q(registers_4__8_) );
  DFSE1 registers_reg_4__7_ ( .D(reg_i[7]), .SD(registers_4__6_), .E(n292), 
        .SE(test_se), .C(clk_i), .Q(registers_4__7_) );
  DFSE1 registers_reg_4__6_ ( .D(reg_i[6]), .SD(registers_4__5_), .E(n292), 
        .SE(test_se), .C(clk_i), .Q(registers_4__6_) );
  DFSE1 registers_reg_4__5_ ( .D(reg_i[5]), .SD(registers_4__4_), .E(n292), 
        .SE(test_se), .C(clk_i), .Q(registers_4__5_) );
  DFSE1 registers_reg_4__4_ ( .D(reg_i[4]), .SD(registers_4__3_), .E(n292), 
        .SE(test_se), .C(clk_i), .Q(registers_4__4_) );
  DFSE1 registers_reg_4__3_ ( .D(reg_i[3]), .SD(registers_4__2_), .E(n292), 
        .SE(test_se), .C(clk_i), .Q(registers_4__3_) );
  DFSE1 registers_reg_4__2_ ( .D(reg_i[2]), .SD(registers_4__1_), .E(n292), 
        .SE(test_se), .C(clk_i), .Q(registers_4__2_) );
  DFSE1 registers_reg_4__1_ ( .D(reg_i[1]), .SD(registers_4__0_), .E(n292), 
        .SE(test_se), .C(clk_i), .Q(registers_4__1_) );
  DFSE1 registers_reg_4__0_ ( .D(reg_i[0]), .SD(registers_3__15_), .E(n292), 
        .SE(test_se), .C(clk_i), .Q(registers_4__0_) );
  DFSE1 registers_reg_3__15_ ( .D(reg_i[15]), .SD(registers_3__14_), .E(n293), 
        .SE(test_se), .C(clk_i), .Q(registers_3__15_) );
  DFSE1 registers_reg_3__14_ ( .D(reg_i[14]), .SD(registers_3__13_), .E(n293), 
        .SE(test_se), .C(clk_i), .Q(registers_3__14_) );
  DFSE1 registers_reg_3__13_ ( .D(reg_i[13]), .SD(registers_3__12_), .E(n293), 
        .SE(test_se), .C(clk_i), .Q(registers_3__13_) );
  DFSE1 registers_reg_3__12_ ( .D(reg_i[12]), .SD(registers_3__11_), .E(n293), 
        .SE(test_se), .C(clk_i), .Q(registers_3__12_) );
  DFSE1 registers_reg_3__11_ ( .D(reg_i[11]), .SD(registers_3__10_), .E(n293), 
        .SE(test_se), .C(clk_i), .Q(registers_3__11_) );
  DFSE1 registers_reg_3__10_ ( .D(reg_i[10]), .SD(registers_3__9_), .E(n293), 
        .SE(test_se), .C(clk_i), .Q(registers_3__10_) );
  DFSE1 registers_reg_3__9_ ( .D(reg_i[9]), .SD(registers_3__8_), .E(n293), 
        .SE(test_se), .C(clk_i), .Q(registers_3__9_) );
  DFSE1 registers_reg_3__8_ ( .D(reg_i[8]), .SD(registers_3__7_), .E(n293), 
        .SE(test_se), .C(clk_i), .Q(registers_3__8_) );
  DFSE1 registers_reg_3__7_ ( .D(reg_i[7]), .SD(registers_3__6_), .E(n293), 
        .SE(test_se), .C(clk_i), .Q(registers_3__7_) );
  DFSE1 registers_reg_3__6_ ( .D(reg_i[6]), .SD(registers_3__5_), .E(n293), 
        .SE(test_se), .C(clk_i), .Q(registers_3__6_) );
  DFSE1 registers_reg_3__5_ ( .D(reg_i[5]), .SD(registers_3__4_), .E(n293), 
        .SE(test_se), .C(clk_i), .Q(registers_3__5_) );
  DFSE1 registers_reg_3__4_ ( .D(reg_i[4]), .SD(registers_3__3_), .E(n293), 
        .SE(test_se), .C(clk_i), .Q(registers_3__4_) );
  DFSE1 registers_reg_3__3_ ( .D(reg_i[3]), .SD(registers_3__2_), .E(n293), 
        .SE(test_se), .C(clk_i), .Q(registers_3__3_) );
  DFSE1 registers_reg_3__2_ ( .D(reg_i[2]), .SD(registers_3__1_), .E(n293), 
        .SE(test_se), .C(clk_i), .Q(registers_3__2_) );
  DFSE1 registers_reg_3__1_ ( .D(reg_i[1]), .SD(registers_3__0_), .E(n293), 
        .SE(test_se), .C(clk_i), .Q(registers_3__1_) );
  DFSE1 registers_reg_3__0_ ( .D(reg_i[0]), .SD(registers_2__15_), .E(n293), 
        .SE(test_se), .C(clk_i), .Q(registers_3__0_) );
  DFSE1 registers_reg_2__15_ ( .D(reg_i[15]), .SD(registers_2__14_), .E(n294), 
        .SE(test_se), .C(clk_i), .Q(registers_2__15_) );
  DFSE1 registers_reg_2__14_ ( .D(reg_i[14]), .SD(registers_2__13_), .E(n294), 
        .SE(test_se), .C(clk_i), .Q(registers_2__14_) );
  DFSE1 registers_reg_2__13_ ( .D(reg_i[13]), .SD(registers_2__12_), .E(n294), 
        .SE(test_se), .C(clk_i), .Q(registers_2__13_) );
  DFSE1 registers_reg_2__12_ ( .D(reg_i[12]), .SD(registers_2__11_), .E(n294), 
        .SE(test_se), .C(clk_i), .Q(registers_2__12_) );
  DFSE1 registers_reg_2__11_ ( .D(reg_i[11]), .SD(registers_2__10_), .E(n294), 
        .SE(test_se), .C(clk_i), .Q(registers_2__11_) );
  DFSE1 registers_reg_2__10_ ( .D(reg_i[10]), .SD(registers_2__9_), .E(n294), 
        .SE(test_se), .C(clk_i), .Q(registers_2__10_) );
  DFSE1 registers_reg_2__9_ ( .D(reg_i[9]), .SD(registers_2__8_), .E(n294), 
        .SE(test_se), .C(clk_i), .Q(registers_2__9_) );
  DFSE1 registers_reg_2__8_ ( .D(reg_i[8]), .SD(registers_2__7_), .E(n294), 
        .SE(test_se), .C(clk_i), .Q(registers_2__8_) );
  DFSE1 registers_reg_2__7_ ( .D(reg_i[7]), .SD(registers_2__6_), .E(n294), 
        .SE(test_se), .C(clk_i), .Q(registers_2__7_) );
  DFSE1 registers_reg_2__6_ ( .D(reg_i[6]), .SD(registers_2__5_), .E(n294), 
        .SE(test_se), .C(clk_i), .Q(registers_2__6_) );
  DFSE1 registers_reg_2__5_ ( .D(reg_i[5]), .SD(registers_2__4_), .E(n294), 
        .SE(test_se), .C(clk_i), .Q(registers_2__5_) );
  DFSE1 registers_reg_2__4_ ( .D(reg_i[4]), .SD(registers_2__3_), .E(n294), 
        .SE(test_se), .C(clk_i), .Q(registers_2__4_) );
  DFSE1 registers_reg_2__3_ ( .D(reg_i[3]), .SD(registers_2__2_), .E(n294), 
        .SE(test_se), .C(clk_i), .Q(registers_2__3_) );
  DFSE1 registers_reg_2__2_ ( .D(reg_i[2]), .SD(registers_2__1_), .E(n294), 
        .SE(test_se), .C(clk_i), .Q(registers_2__2_) );
  DFSE1 registers_reg_2__1_ ( .D(reg_i[1]), .SD(registers_2__0_), .E(n294), 
        .SE(test_se), .C(clk_i), .Q(registers_2__1_) );
  DFSE1 registers_reg_2__0_ ( .D(reg_i[0]), .SD(registers_1__15_), .E(n294), 
        .SE(test_se), .C(clk_i), .Q(registers_2__0_) );
  DFSE1 registers_reg_1__15_ ( .D(reg_i[15]), .SD(registers_1__14_), .E(n295), 
        .SE(test_se), .C(clk_i), .Q(registers_1__15_) );
  DFSE1 registers_reg_1__14_ ( .D(reg_i[14]), .SD(registers_1__13_), .E(n295), 
        .SE(test_se), .C(clk_i), .Q(registers_1__14_) );
  DFSE1 registers_reg_1__13_ ( .D(reg_i[13]), .SD(registers_1__12_), .E(n295), 
        .SE(test_se), .C(clk_i), .Q(registers_1__13_) );
  DFSE1 registers_reg_1__12_ ( .D(reg_i[12]), .SD(registers_1__11_), .E(n295), 
        .SE(test_se), .C(clk_i), .Q(registers_1__12_) );
  DFSE1 registers_reg_1__11_ ( .D(reg_i[11]), .SD(registers_1__10_), .E(n295), 
        .SE(test_se), .C(clk_i), .Q(registers_1__11_) );
  DFSE1 registers_reg_1__10_ ( .D(reg_i[10]), .SD(registers_1__9_), .E(n295), 
        .SE(test_se), .C(clk_i), .Q(registers_1__10_) );
  DFSE1 registers_reg_1__9_ ( .D(reg_i[9]), .SD(registers_1__8_), .E(n295), 
        .SE(test_se), .C(clk_i), .Q(registers_1__9_) );
  DFSE1 registers_reg_1__8_ ( .D(reg_i[8]), .SD(registers_1__7_), .E(n295), 
        .SE(test_se), .C(clk_i), .Q(registers_1__8_) );
  DFSE1 registers_reg_1__7_ ( .D(reg_i[7]), .SD(registers_1__6_), .E(n295), 
        .SE(test_se), .C(clk_i), .Q(registers_1__7_) );
  DFSE1 registers_reg_1__6_ ( .D(reg_i[6]), .SD(registers_1__5_), .E(n295), 
        .SE(test_se), .C(clk_i), .Q(registers_1__6_) );
  DFSE1 registers_reg_1__5_ ( .D(reg_i[5]), .SD(registers_1__4_), .E(n295), 
        .SE(test_se), .C(clk_i), .Q(registers_1__5_) );
  DFSE1 registers_reg_1__4_ ( .D(reg_i[4]), .SD(registers_1__3_), .E(n295), 
        .SE(test_se), .C(clk_i), .Q(registers_1__4_) );
  DFSE1 registers_reg_1__3_ ( .D(reg_i[3]), .SD(registers_1__2_), .E(n295), 
        .SE(test_se), .C(clk_i), .Q(registers_1__3_) );
  DFSE1 registers_reg_1__2_ ( .D(reg_i[2]), .SD(registers_1__1_), .E(n295), 
        .SE(test_se), .C(clk_i), .Q(registers_1__2_) );
  DFSE1 registers_reg_1__1_ ( .D(reg_i[1]), .SD(registers_1__0_), .E(n295), 
        .SE(test_se), .C(clk_i), .Q(registers_1__1_) );
  DFSE1 registers_reg_1__0_ ( .D(reg_i[0]), .SD(registers_0__15_), .E(n295), 
        .SE(test_se), .C(clk_i), .Q(registers_1__0_) );
  DFSE1 registers_reg_0__15_ ( .D(reg_i[15]), .SD(registers_0__14_), .E(n296), 
        .SE(test_se), .C(clk_i), .Q(registers_0__15_) );
  DFSE1 registers_reg_0__14_ ( .D(reg_i[14]), .SD(registers_0__13_), .E(n296), 
        .SE(test_se), .C(clk_i), .Q(registers_0__14_) );
  DFSE1 registers_reg_0__13_ ( .D(reg_i[13]), .SD(registers_0__12_), .E(n296), 
        .SE(test_se), .C(clk_i), .Q(registers_0__13_) );
  DFSE1 registers_reg_0__12_ ( .D(reg_i[12]), .SD(registers_0__11_), .E(n296), 
        .SE(test_se), .C(clk_i), .Q(registers_0__12_) );
  DFSE1 registers_reg_0__11_ ( .D(reg_i[11]), .SD(registers_0__10_), .E(n296), 
        .SE(test_se), .C(clk_i), .Q(registers_0__11_) );
  DFSE1 registers_reg_0__10_ ( .D(reg_i[10]), .SD(registers_0__9_), .E(n296), 
        .SE(test_se), .C(clk_i), .Q(registers_0__10_) );
  DFSE1 registers_reg_0__9_ ( .D(reg_i[9]), .SD(registers_0__8_), .E(n296), 
        .SE(test_se), .C(clk_i), .Q(registers_0__9_) );
  DFSE1 registers_reg_0__8_ ( .D(reg_i[8]), .SD(registers_0__7_), .E(n296), 
        .SE(test_se), .C(clk_i), .Q(registers_0__8_) );
  DFSE1 registers_reg_0__7_ ( .D(reg_i[7]), .SD(registers_0__6_), .E(n296), 
        .SE(test_se), .C(clk_i), .Q(registers_0__7_) );
  DFSE1 registers_reg_0__6_ ( .D(reg_i[6]), .SD(registers_0__5_), .E(n296), 
        .SE(test_se), .C(clk_i), .Q(registers_0__6_) );
  DFSE1 registers_reg_0__5_ ( .D(reg_i[5]), .SD(registers_0__4_), .E(n296), 
        .SE(test_se), .C(clk_i), .Q(registers_0__5_) );
  DFSE1 registers_reg_0__4_ ( .D(reg_i[4]), .SD(registers_0__3_), .E(n296), 
        .SE(test_se), .C(clk_i), .Q(registers_0__4_) );
  DFSE1 registers_reg_0__3_ ( .D(reg_i[3]), .SD(registers_0__2_), .E(n296), 
        .SE(test_se), .C(clk_i), .Q(registers_0__3_) );
  DFSE1 registers_reg_0__2_ ( .D(reg_i[2]), .SD(registers_0__1_), .E(n296), 
        .SE(test_se), .C(clk_i), .Q(registers_0__2_) );
  DFSE1 registers_reg_0__1_ ( .D(reg_i[1]), .SD(registers_0__0_), .E(n296), 
        .SE(test_se), .C(clk_i), .Q(registers_0__1_) );
  DFSE1 registers_reg_0__0_ ( .D(reg_i[0]), .SD(test_si), .E(n296), .SE(
        test_se), .C(clk_i), .Q(registers_0__0_) );
  NOR21 U2 ( .A(n728), .B(n713), .Q(n289) );
  OAI212 U3 ( .A(n728), .B(n729), .C(clk_en_reg_file_i), .Q(n713) );
  NOR21 U4 ( .A(n713), .B(n720), .Q(n293) );
  NOR31 U5 ( .A(n803), .B(reg_b_idx_i[1]), .C(n805), .Q(n738) );
  NOR21 U6 ( .A(n713), .B(n724), .Q(n291) );
  NOR31 U7 ( .A(n870), .B(reg_a_idx_i[2]), .C(n871), .Q(n721) );
  NOR31 U8 ( .A(n804), .B(reg_b_idx_i[2]), .C(n805), .Q(n740) );
  NOR21 U9 ( .A(n713), .B(n718), .Q(n294) );
  NOR31 U10 ( .A(n870), .B(reg_a_idx_i[1]), .C(n872), .Q(n725) );
  NOR31 U11 ( .A(n804), .B(reg_b_idx_i[0]), .C(n803), .Q(n735) );
  NOR31 U12 ( .A(reg_b_idx_i[1]), .B(reg_b_idx_i[2]), .C(n805), .Q(n742) );
  NOR21 U13 ( .A(n713), .B(n722), .Q(n292) );
  NOR31 U14 ( .A(reg_a_idx_i[0]), .B(reg_a_idx_i[2]), .C(n871), .Q(n719) );
  NOR31 U15 ( .A(reg_b_idx_i[0]), .B(reg_b_idx_i[2]), .C(n804), .Q(n739) );
  NOR21 U16 ( .A(n713), .B(n726), .Q(n290) );
  NOR31 U17 ( .A(reg_a_idx_i[0]), .B(reg_a_idx_i[1]), .C(n872), .Q(n723) );
  NOR31 U18 ( .A(reg_b_idx_i[0]), .B(reg_b_idx_i[1]), .C(n803), .Q(n737) );
  NOR21 U19 ( .A(n713), .B(n714), .Q(n296) );
  NOR31 U20 ( .A(n871), .B(reg_a_idx_i[0]), .C(n872), .Q(n727) );
  NOR31 U21 ( .A(reg_a_idx_i[1]), .B(reg_a_idx_i[2]), .C(n870), .Q(n717) );
  NOR31 U22 ( .A(n803), .B(n804), .C(n805), .Q(n736) );
  NOR31 U23 ( .A(reg_b_idx_i[1]), .B(reg_b_idx_i[2]), .C(reg_b_idx_i[0]), .Q(
        n741) );
  NOR21 U24 ( .A(n713), .B(n716), .Q(n295) );
  NOR31 U25 ( .A(n871), .B(n870), .C(n872), .Q(n730) );
  NOR31 U26 ( .A(reg_a_idx_i[1]), .B(reg_a_idx_i[2]), .C(reg_a_idx_i[0]), .Q(
        n715) );
  CLKIN0 U28 ( .A(n715), .Q(n714) );
  CLKIN0 U29 ( .A(n717), .Q(n716) );
  CLKIN0 U30 ( .A(n719), .Q(n718) );
  CLKIN0 U31 ( .A(n721), .Q(n720) );
  CLKIN0 U32 ( .A(n723), .Q(n722) );
  CLKIN0 U33 ( .A(n725), .Q(n724) );
  CLKIN0 U34 ( .A(n727), .Q(n726) );
  CLKIN0 U35 ( .A(reg_a_idx_i[3]), .Q(n729) );
  CLKIN0 U36 ( .A(n730), .Q(n728) );
  NAND40 U37 ( .A(n731), .B(n732), .C(n733), .D(n734), .Q(reg_b_o[0]) );
  AOI220 U38 ( .A(registers_6__0_), .B(n735), .C(registers_7__0_), .D(n736), 
        .Q(n734) );
  AOI220 U39 ( .A(registers_4__0_), .B(n737), .C(registers_5__0_), .D(n738), 
        .Q(n733) );
  AOI220 U40 ( .A(registers_2__0_), .B(n739), .C(registers_3__0_), .D(n740), 
        .Q(n732) );
  AOI220 U41 ( .A(registers_0__0_), .B(n741), .C(registers_1__0_), .D(n742), 
        .Q(n731) );
  NAND40 U42 ( .A(n743), .B(n744), .C(n745), .D(n746), .Q(reg_b_o[1]) );
  AOI220 U43 ( .A(registers_6__1_), .B(n735), .C(registers_7__1_), .D(n736), 
        .Q(n746) );
  AOI220 U44 ( .A(registers_4__1_), .B(n737), .C(registers_5__1_), .D(n738), 
        .Q(n745) );
  AOI220 U45 ( .A(registers_2__1_), .B(n739), .C(registers_3__1_), .D(n740), 
        .Q(n744) );
  AOI220 U46 ( .A(registers_0__1_), .B(n741), .C(registers_1__1_), .D(n742), 
        .Q(n743) );
  NAND40 U47 ( .A(n747), .B(n748), .C(n749), .D(n750), .Q(reg_b_o[2]) );
  AOI220 U48 ( .A(registers_6__2_), .B(n735), .C(registers_7__2_), .D(n736), 
        .Q(n750) );
  AOI220 U49 ( .A(registers_4__2_), .B(n737), .C(registers_5__2_), .D(n738), 
        .Q(n749) );
  AOI220 U50 ( .A(registers_2__2_), .B(n739), .C(registers_3__2_), .D(n740), 
        .Q(n748) );
  AOI220 U51 ( .A(registers_0__2_), .B(n741), .C(registers_1__2_), .D(n742), 
        .Q(n747) );
  NAND40 U52 ( .A(n751), .B(n752), .C(n753), .D(n754), .Q(reg_b_o[3]) );
  AOI220 U53 ( .A(registers_6__3_), .B(n735), .C(registers_7__3_), .D(n736), 
        .Q(n754) );
  AOI220 U54 ( .A(registers_4__3_), .B(n737), .C(registers_5__3_), .D(n738), 
        .Q(n753) );
  AOI220 U55 ( .A(registers_2__3_), .B(n739), .C(registers_3__3_), .D(n740), 
        .Q(n752) );
  AOI220 U56 ( .A(registers_0__3_), .B(n741), .C(registers_1__3_), .D(n742), 
        .Q(n751) );
  NAND40 U57 ( .A(n755), .B(n756), .C(n757), .D(n758), .Q(reg_b_o[4]) );
  AOI220 U58 ( .A(registers_6__4_), .B(n735), .C(registers_7__4_), .D(n736), 
        .Q(n758) );
  AOI220 U59 ( .A(registers_4__4_), .B(n737), .C(registers_5__4_), .D(n738), 
        .Q(n757) );
  AOI220 U60 ( .A(registers_2__4_), .B(n739), .C(registers_3__4_), .D(n740), 
        .Q(n756) );
  AOI220 U61 ( .A(registers_0__4_), .B(n741), .C(registers_1__4_), .D(n742), 
        .Q(n755) );
  NAND40 U62 ( .A(n759), .B(n760), .C(n761), .D(n762), .Q(reg_b_o[5]) );
  AOI220 U63 ( .A(registers_6__5_), .B(n735), .C(registers_7__5_), .D(n736), 
        .Q(n762) );
  AOI220 U64 ( .A(registers_4__5_), .B(n737), .C(registers_5__5_), .D(n738), 
        .Q(n761) );
  AOI220 U65 ( .A(registers_2__5_), .B(n739), .C(registers_3__5_), .D(n740), 
        .Q(n760) );
  AOI220 U66 ( .A(registers_0__5_), .B(n741), .C(registers_1__5_), .D(n742), 
        .Q(n759) );
  NAND40 U67 ( .A(n763), .B(n764), .C(n765), .D(n766), .Q(reg_b_o[6]) );
  AOI220 U68 ( .A(registers_6__6_), .B(n735), .C(registers_7__6_), .D(n736), 
        .Q(n766) );
  AOI220 U69 ( .A(registers_4__6_), .B(n737), .C(registers_5__6_), .D(n738), 
        .Q(n765) );
  AOI220 U70 ( .A(registers_2__6_), .B(n739), .C(registers_3__6_), .D(n740), 
        .Q(n764) );
  AOI220 U71 ( .A(registers_0__6_), .B(n741), .C(registers_1__6_), .D(n742), 
        .Q(n763) );
  NAND40 U72 ( .A(n767), .B(n768), .C(n769), .D(n770), .Q(reg_b_o[7]) );
  AOI220 U73 ( .A(registers_6__7_), .B(n735), .C(registers_7__7_), .D(n736), 
        .Q(n770) );
  AOI220 U74 ( .A(registers_4__7_), .B(n737), .C(registers_5__7_), .D(n738), 
        .Q(n769) );
  AOI220 U75 ( .A(registers_2__7_), .B(n739), .C(registers_3__7_), .D(n740), 
        .Q(n768) );
  AOI220 U76 ( .A(registers_0__7_), .B(n741), .C(registers_1__7_), .D(n742), 
        .Q(n767) );
  NAND40 U77 ( .A(n771), .B(n772), .C(n773), .D(n774), .Q(reg_b_o[8]) );
  AOI220 U78 ( .A(registers_6__8_), .B(n735), .C(registers_7__8_), .D(n736), 
        .Q(n774) );
  AOI220 U79 ( .A(registers_4__8_), .B(n737), .C(registers_5__8_), .D(n738), 
        .Q(n773) );
  AOI220 U80 ( .A(registers_2__8_), .B(n739), .C(registers_3__8_), .D(n740), 
        .Q(n772) );
  AOI220 U81 ( .A(registers_0__8_), .B(n741), .C(registers_1__8_), .D(n742), 
        .Q(n771) );
  NAND40 U82 ( .A(n775), .B(n776), .C(n777), .D(n778), .Q(reg_b_o[9]) );
  AOI220 U83 ( .A(registers_6__9_), .B(n735), .C(registers_7__9_), .D(n736), 
        .Q(n778) );
  AOI220 U84 ( .A(registers_4__9_), .B(n737), .C(registers_5__9_), .D(n738), 
        .Q(n777) );
  AOI220 U85 ( .A(registers_2__9_), .B(n739), .C(registers_3__9_), .D(n740), 
        .Q(n776) );
  AOI220 U86 ( .A(registers_0__9_), .B(n741), .C(registers_1__9_), .D(n742), 
        .Q(n775) );
  NAND40 U87 ( .A(n779), .B(n780), .C(n781), .D(n782), .Q(reg_b_o[10]) );
  AOI220 U88 ( .A(registers_6__10_), .B(n735), .C(registers_7__10_), .D(n736), 
        .Q(n782) );
  AOI220 U89 ( .A(registers_4__10_), .B(n737), .C(registers_5__10_), .D(n738), 
        .Q(n781) );
  AOI220 U90 ( .A(registers_2__10_), .B(n739), .C(registers_3__10_), .D(n740), 
        .Q(n780) );
  AOI220 U91 ( .A(registers_0__10_), .B(n741), .C(registers_1__10_), .D(n742), 
        .Q(n779) );
  NAND40 U92 ( .A(n783), .B(n784), .C(n785), .D(n786), .Q(reg_b_o[11]) );
  AOI220 U93 ( .A(registers_6__11_), .B(n735), .C(registers_7__11_), .D(n736), 
        .Q(n786) );
  AOI220 U94 ( .A(registers_4__11_), .B(n737), .C(registers_5__11_), .D(n738), 
        .Q(n785) );
  AOI220 U95 ( .A(registers_2__11_), .B(n739), .C(registers_3__11_), .D(n740), 
        .Q(n784) );
  AOI220 U96 ( .A(registers_0__11_), .B(n741), .C(registers_1__11_), .D(n742), 
        .Q(n783) );
  NAND40 U97 ( .A(n787), .B(n788), .C(n789), .D(n790), .Q(reg_b_o[12]) );
  AOI220 U98 ( .A(registers_6__12_), .B(n735), .C(registers_7__12_), .D(n736), 
        .Q(n790) );
  AOI220 U99 ( .A(registers_4__12_), .B(n737), .C(registers_5__12_), .D(n738), 
        .Q(n789) );
  AOI220 U100 ( .A(registers_2__12_), .B(n739), .C(registers_3__12_), .D(n740), 
        .Q(n788) );
  AOI220 U101 ( .A(registers_0__12_), .B(n741), .C(registers_1__12_), .D(n742), 
        .Q(n787) );
  NAND40 U102 ( .A(n791), .B(n792), .C(n793), .D(n794), .Q(reg_b_o[13]) );
  AOI220 U103 ( .A(registers_6__13_), .B(n735), .C(registers_7__13_), .D(n736), 
        .Q(n794) );
  AOI220 U104 ( .A(registers_4__13_), .B(n737), .C(registers_5__13_), .D(n738), 
        .Q(n793) );
  AOI220 U105 ( .A(registers_2__13_), .B(n739), .C(registers_3__13_), .D(n740), 
        .Q(n792) );
  AOI220 U106 ( .A(registers_0__13_), .B(n741), .C(registers_1__13_), .D(n742), 
        .Q(n791) );
  NAND40 U107 ( .A(n795), .B(n796), .C(n797), .D(n798), .Q(reg_b_o[14]) );
  AOI220 U108 ( .A(registers_6__14_), .B(n735), .C(registers_7__14_), .D(n736), 
        .Q(n798) );
  AOI220 U109 ( .A(registers_4__14_), .B(n737), .C(registers_5__14_), .D(n738), 
        .Q(n797) );
  AOI220 U110 ( .A(registers_2__14_), .B(n739), .C(registers_3__14_), .D(n740), 
        .Q(n796) );
  AOI220 U111 ( .A(registers_0__14_), .B(n741), .C(registers_1__14_), .D(n742), 
        .Q(n795) );
  NAND40 U112 ( .A(n799), .B(n800), .C(n801), .D(n802), .Q(reg_b_o[15]) );
  AOI220 U113 ( .A(registers_6__15_), .B(n735), .C(test_so), .D(n736), .Q(n802) );
  AOI220 U114 ( .A(registers_4__15_), .B(n737), .C(registers_5__15_), .D(n738), 
        .Q(n801) );
  CLKIN0 U115 ( .A(reg_b_idx_i[2]), .Q(n803) );
  AOI220 U116 ( .A(registers_2__15_), .B(n739), .C(registers_3__15_), .D(n740), 
        .Q(n800) );
  CLKIN0 U117 ( .A(reg_b_idx_i[1]), .Q(n804) );
  AOI220 U118 ( .A(registers_0__15_), .B(n741), .C(registers_1__15_), .D(n742), 
        .Q(n799) );
  CLKIN0 U119 ( .A(reg_b_idx_i[0]), .Q(n805) );
  NAND40 U120 ( .A(n806), .B(n807), .C(n808), .D(n809), .Q(reg_a_o[0]) );
  AOI220 U121 ( .A(registers_1__0_), .B(n717), .C(registers_0__0_), .D(n715), 
        .Q(n809) );
  AOI220 U122 ( .A(registers_3__0_), .B(n721), .C(registers_2__0_), .D(n719), 
        .Q(n808) );
  AOI220 U123 ( .A(registers_5__0_), .B(n725), .C(registers_4__0_), .D(n723), 
        .Q(n807) );
  AOI220 U124 ( .A(registers_7__0_), .B(n730), .C(registers_6__0_), .D(n727), 
        .Q(n806) );
  NAND40 U125 ( .A(n810), .B(n811), .C(n812), .D(n813), .Q(reg_a_o[1]) );
  AOI220 U126 ( .A(registers_1__1_), .B(n717), .C(registers_0__1_), .D(n715), 
        .Q(n813) );
  AOI220 U127 ( .A(registers_3__1_), .B(n721), .C(registers_2__1_), .D(n719), 
        .Q(n812) );
  AOI220 U128 ( .A(registers_5__1_), .B(n725), .C(registers_4__1_), .D(n723), 
        .Q(n811) );
  AOI220 U129 ( .A(registers_7__1_), .B(n730), .C(registers_6__1_), .D(n727), 
        .Q(n810) );
  NAND40 U130 ( .A(n814), .B(n815), .C(n816), .D(n817), .Q(reg_a_o[2]) );
  AOI220 U131 ( .A(registers_1__2_), .B(n717), .C(registers_0__2_), .D(n715), 
        .Q(n817) );
  AOI220 U132 ( .A(registers_3__2_), .B(n721), .C(registers_2__2_), .D(n719), 
        .Q(n816) );
  AOI220 U133 ( .A(registers_5__2_), .B(n725), .C(registers_4__2_), .D(n723), 
        .Q(n815) );
  AOI220 U134 ( .A(registers_7__2_), .B(n730), .C(registers_6__2_), .D(n727), 
        .Q(n814) );
  NAND40 U135 ( .A(n818), .B(n819), .C(n820), .D(n821), .Q(reg_a_o[3]) );
  AOI220 U136 ( .A(registers_1__3_), .B(n717), .C(registers_0__3_), .D(n715), 
        .Q(n821) );
  AOI220 U137 ( .A(registers_3__3_), .B(n721), .C(registers_2__3_), .D(n719), 
        .Q(n820) );
  AOI220 U138 ( .A(registers_5__3_), .B(n725), .C(registers_4__3_), .D(n723), 
        .Q(n819) );
  AOI220 U139 ( .A(registers_7__3_), .B(n730), .C(registers_6__3_), .D(n727), 
        .Q(n818) );
  NAND40 U140 ( .A(n822), .B(n823), .C(n824), .D(n825), .Q(reg_a_o[4]) );
  AOI220 U141 ( .A(registers_1__4_), .B(n717), .C(registers_0__4_), .D(n715), 
        .Q(n825) );
  AOI220 U142 ( .A(registers_3__4_), .B(n721), .C(registers_2__4_), .D(n719), 
        .Q(n824) );
  AOI220 U143 ( .A(registers_5__4_), .B(n725), .C(registers_4__4_), .D(n723), 
        .Q(n823) );
  AOI220 U144 ( .A(registers_7__4_), .B(n730), .C(registers_6__4_), .D(n727), 
        .Q(n822) );
  NAND40 U145 ( .A(n826), .B(n827), .C(n828), .D(n829), .Q(reg_a_o[5]) );
  AOI220 U146 ( .A(registers_1__5_), .B(n717), .C(registers_0__5_), .D(n715), 
        .Q(n829) );
  AOI220 U147 ( .A(registers_3__5_), .B(n721), .C(registers_2__5_), .D(n719), 
        .Q(n828) );
  AOI220 U148 ( .A(registers_5__5_), .B(n725), .C(registers_4__5_), .D(n723), 
        .Q(n827) );
  AOI220 U149 ( .A(registers_7__5_), .B(n730), .C(registers_6__5_), .D(n727), 
        .Q(n826) );
  NAND40 U150 ( .A(n830), .B(n831), .C(n832), .D(n833), .Q(reg_a_o[6]) );
  AOI220 U151 ( .A(registers_1__6_), .B(n717), .C(registers_0__6_), .D(n715), 
        .Q(n833) );
  AOI220 U152 ( .A(registers_3__6_), .B(n721), .C(registers_2__6_), .D(n719), 
        .Q(n832) );
  AOI220 U153 ( .A(registers_5__6_), .B(n725), .C(registers_4__6_), .D(n723), 
        .Q(n831) );
  AOI220 U154 ( .A(registers_7__6_), .B(n730), .C(registers_6__6_), .D(n727), 
        .Q(n830) );
  NAND40 U155 ( .A(n834), .B(n835), .C(n836), .D(n837), .Q(reg_a_o[7]) );
  AOI220 U156 ( .A(registers_1__7_), .B(n717), .C(registers_0__7_), .D(n715), 
        .Q(n837) );
  AOI220 U157 ( .A(registers_3__7_), .B(n721), .C(registers_2__7_), .D(n719), 
        .Q(n836) );
  AOI220 U158 ( .A(registers_5__7_), .B(n725), .C(registers_4__7_), .D(n723), 
        .Q(n835) );
  AOI220 U159 ( .A(registers_7__7_), .B(n730), .C(registers_6__7_), .D(n727), 
        .Q(n834) );
  NAND40 U160 ( .A(n838), .B(n839), .C(n840), .D(n841), .Q(reg_a_o[8]) );
  AOI220 U161 ( .A(registers_1__8_), .B(n717), .C(registers_0__8_), .D(n715), 
        .Q(n841) );
  AOI220 U162 ( .A(registers_3__8_), .B(n721), .C(registers_2__8_), .D(n719), 
        .Q(n840) );
  AOI220 U163 ( .A(registers_5__8_), .B(n725), .C(registers_4__8_), .D(n723), 
        .Q(n839) );
  AOI220 U164 ( .A(registers_7__8_), .B(n730), .C(registers_6__8_), .D(n727), 
        .Q(n838) );
  NAND40 U165 ( .A(n842), .B(n843), .C(n844), .D(n845), .Q(reg_a_o[9]) );
  AOI220 U166 ( .A(registers_1__9_), .B(n717), .C(registers_0__9_), .D(n715), 
        .Q(n845) );
  AOI220 U167 ( .A(registers_3__9_), .B(n721), .C(registers_2__9_), .D(n719), 
        .Q(n844) );
  AOI220 U168 ( .A(registers_5__9_), .B(n725), .C(registers_4__9_), .D(n723), 
        .Q(n843) );
  AOI220 U169 ( .A(registers_7__9_), .B(n730), .C(registers_6__9_), .D(n727), 
        .Q(n842) );
  NAND40 U170 ( .A(n846), .B(n847), .C(n848), .D(n849), .Q(reg_a_o[10]) );
  AOI220 U171 ( .A(registers_1__10_), .B(n717), .C(registers_0__10_), .D(n715), 
        .Q(n849) );
  AOI220 U172 ( .A(registers_3__10_), .B(n721), .C(registers_2__10_), .D(n719), 
        .Q(n848) );
  AOI220 U173 ( .A(registers_5__10_), .B(n725), .C(registers_4__10_), .D(n723), 
        .Q(n847) );
  AOI220 U174 ( .A(registers_7__10_), .B(n730), .C(registers_6__10_), .D(n727), 
        .Q(n846) );
  NAND40 U175 ( .A(n850), .B(n851), .C(n852), .D(n853), .Q(reg_a_o[11]) );
  AOI220 U176 ( .A(registers_1__11_), .B(n717), .C(registers_0__11_), .D(n715), 
        .Q(n853) );
  AOI220 U177 ( .A(registers_3__11_), .B(n721), .C(registers_2__11_), .D(n719), 
        .Q(n852) );
  AOI220 U178 ( .A(registers_5__11_), .B(n725), .C(registers_4__11_), .D(n723), 
        .Q(n851) );
  AOI220 U179 ( .A(registers_7__11_), .B(n730), .C(registers_6__11_), .D(n727), 
        .Q(n850) );
  NAND40 U180 ( .A(n854), .B(n855), .C(n856), .D(n857), .Q(reg_a_o[12]) );
  AOI220 U181 ( .A(registers_1__12_), .B(n717), .C(registers_0__12_), .D(n715), 
        .Q(n857) );
  AOI220 U182 ( .A(registers_3__12_), .B(n721), .C(registers_2__12_), .D(n719), 
        .Q(n856) );
  AOI220 U183 ( .A(registers_5__12_), .B(n725), .C(registers_4__12_), .D(n723), 
        .Q(n855) );
  AOI220 U184 ( .A(registers_7__12_), .B(n730), .C(registers_6__12_), .D(n727), 
        .Q(n854) );
  NAND40 U185 ( .A(n858), .B(n859), .C(n860), .D(n861), .Q(reg_a_o[13]) );
  AOI220 U186 ( .A(registers_1__13_), .B(n717), .C(registers_0__13_), .D(n715), 
        .Q(n861) );
  AOI220 U187 ( .A(registers_3__13_), .B(n721), .C(registers_2__13_), .D(n719), 
        .Q(n860) );
  AOI220 U188 ( .A(registers_5__13_), .B(n725), .C(registers_4__13_), .D(n723), 
        .Q(n859) );
  AOI220 U189 ( .A(registers_7__13_), .B(n730), .C(registers_6__13_), .D(n727), 
        .Q(n858) );
  NAND40 U190 ( .A(n862), .B(n863), .C(n864), .D(n865), .Q(reg_a_o[14]) );
  AOI220 U191 ( .A(registers_1__14_), .B(n717), .C(registers_0__14_), .D(n715), 
        .Q(n865) );
  AOI220 U192 ( .A(registers_3__14_), .B(n721), .C(registers_2__14_), .D(n719), 
        .Q(n864) );
  AOI220 U193 ( .A(registers_5__14_), .B(n725), .C(registers_4__14_), .D(n723), 
        .Q(n863) );
  AOI220 U194 ( .A(registers_7__14_), .B(n730), .C(registers_6__14_), .D(n727), 
        .Q(n862) );
  NAND40 U195 ( .A(n866), .B(n867), .C(n868), .D(n869), .Q(reg_a_o[15]) );
  AOI220 U196 ( .A(registers_1__15_), .B(n717), .C(registers_0__15_), .D(n715), 
        .Q(n869) );
  AOI220 U197 ( .A(registers_3__15_), .B(n721), .C(registers_2__15_), .D(n719), 
        .Q(n868) );
  AOI220 U198 ( .A(registers_5__15_), .B(n725), .C(registers_4__15_), .D(n723), 
        .Q(n867) );
  AOI220 U199 ( .A(test_so), .B(n730), .C(registers_6__15_), .D(n727), .Q(n866) );
  CLKIN0 U200 ( .A(reg_a_idx_i[2]), .Q(n872) );
  CLKIN0 U201 ( .A(reg_a_idx_i[0]), .Q(n870) );
  CLKIN0 U202 ( .A(reg_a_idx_i[1]), .Q(n871) );
endmodule


module datapath_test_1 ( clk_i, res_i, op_code_o, reg_decode_error_o, sel_pc_i, 
        sel_load_i, sel_addr_i, clk_en_pc_i, clk_en_reg_file_i, 
        clk_en_op_code_i, alu_func_i, carry_i, carry_o, zero_o, mem_addr_o, 
        mem_data_o, mem_data_i, test_si1, test_se );
  output [5:0] op_code_o;
  input [3:0] alu_func_i;
  output [15:0] mem_addr_o;
  output [15:0] mem_data_o;
  input [15:0] mem_data_i;
  input clk_i, res_i, sel_pc_i, sel_load_i, sel_addr_i, clk_en_pc_i,
         clk_en_reg_file_i, clk_en_op_code_i, carry_i, test_si1, test_se;
  output reg_decode_error_o, carry_o, zero_o;
  wire   N11, N12, N13, N17, N18, N19, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222;
  wire   [15:0] AluSideA;
  wire   [15:0] RegTmpB;
  wire   [15:0] AluResult;
  wire   [3:0] RegAIdx;
  wire   [3:0] RegBIdx;
  wire   [15:0] Load;
  wire   [15:0] RaValue;
  wire   [15:0] RbValue;

  DFS3 RegTmpA_reg_0_ ( .D(RaValue[0]), .SD(n207), .SE(test_se), .C(clk_i), 
        .Q(mem_data_o[0]), .QN(n165) );
  DFS3 RegTmpA_reg_1_ ( .D(RaValue[1]), .SD(mem_data_o[0]), .SE(test_se), .C(
        clk_i), .Q(mem_data_o[1]), .QN(n164) );
  DFS3 RegTmpA_reg_2_ ( .D(RaValue[2]), .SD(mem_data_o[1]), .SE(test_se), .C(
        clk_i), .Q(mem_data_o[2]), .QN(n163) );
  DFS3 RegTmpA_reg_3_ ( .D(RaValue[3]), .SD(mem_data_o[2]), .SE(test_se), .C(
        clk_i), .Q(mem_data_o[3]), .QN(n162) );
  DFS3 RegTmpA_reg_4_ ( .D(RaValue[4]), .SD(mem_data_o[3]), .SE(test_se), .C(
        clk_i), .Q(mem_data_o[4]), .QN(n161) );
  DFS3 RegTmpA_reg_5_ ( .D(RaValue[5]), .SD(mem_data_o[4]), .SE(test_se), .C(
        clk_i), .Q(mem_data_o[5]), .QN(n160) );
  DFS3 RegTmpA_reg_6_ ( .D(RaValue[6]), .SD(mem_data_o[5]), .SE(test_se), .C(
        clk_i), .Q(mem_data_o[6]), .QN(n159) );
  DFS3 RegTmpA_reg_7_ ( .D(RaValue[7]), .SD(mem_data_o[6]), .SE(test_se), .C(
        clk_i), .Q(mem_data_o[7]), .QN(n158) );
  DFS3 RegTmpA_reg_8_ ( .D(RaValue[8]), .SD(mem_data_o[7]), .SE(test_se), .C(
        clk_i), .Q(mem_data_o[8]), .QN(n157) );
  DFS3 RegTmpA_reg_9_ ( .D(RaValue[9]), .SD(mem_data_o[8]), .SE(test_se), .C(
        clk_i), .Q(mem_data_o[9]), .QN(n156) );
  DFS3 RegTmpA_reg_10_ ( .D(RaValue[10]), .SD(mem_data_o[9]), .SE(test_se), 
        .C(clk_i), .Q(mem_data_o[10]), .QN(n155) );
  DFS3 RegTmpA_reg_11_ ( .D(RaValue[11]), .SD(mem_data_o[10]), .SE(test_se), 
        .C(clk_i), .Q(mem_data_o[11]), .QN(n154) );
  DFS3 RegTmpA_reg_12_ ( .D(RaValue[12]), .SD(mem_data_o[11]), .SE(test_se), 
        .C(clk_i), .Q(mem_data_o[12]), .QN(n153) );
  DFS3 RegTmpA_reg_13_ ( .D(RaValue[13]), .SD(mem_data_o[12]), .SE(test_se), 
        .C(clk_i), .Q(mem_data_o[13]), .QN(n152) );
  DFS3 RegTmpA_reg_14_ ( .D(RaValue[14]), .SD(mem_data_o[13]), .SE(test_se), 
        .C(clk_i), .Q(mem_data_o[14]), .QN(n151) );
  DFS3 RegTmpA_reg_15_ ( .D(RaValue[15]), .SD(n206), .SE(test_se), .C(clk_i), 
        .Q(mem_data_o[15]), .QN(n150) );
  DFS3 RegTmpB_reg_0_ ( .D(RbValue[0]), .SD(mem_data_o[14]), .SE(test_se), .C(
        clk_i), .Q(RegTmpB[0]), .QN(n47) );
  DFS3 RegTmpB_reg_1_ ( .D(RbValue[1]), .SD(RegTmpB[0]), .SE(test_se), .C(
        clk_i), .Q(RegTmpB[1]), .QN(n46) );
  DFS3 RegTmpB_reg_2_ ( .D(RbValue[2]), .SD(RegTmpB[1]), .SE(test_se), .C(
        clk_i), .Q(RegTmpB[2]), .QN(n45) );
  DFS3 RegTmpB_reg_3_ ( .D(RbValue[3]), .SD(RegTmpB[2]), .SE(test_se), .C(
        clk_i), .Q(RegTmpB[3]), .QN(n44) );
  DFS3 RegTmpB_reg_4_ ( .D(RbValue[4]), .SD(RegTmpB[3]), .SE(test_se), .C(
        clk_i), .Q(RegTmpB[4]), .QN(n43) );
  DFS3 RegTmpB_reg_5_ ( .D(RbValue[5]), .SD(RegTmpB[4]), .SE(test_se), .C(
        clk_i), .Q(RegTmpB[5]), .QN(n42) );
  DFS3 RegTmpB_reg_6_ ( .D(RbValue[6]), .SD(RegTmpB[5]), .SE(test_se), .C(
        clk_i), .Q(RegTmpB[6]), .QN(n41) );
  DFS3 RegTmpB_reg_7_ ( .D(RbValue[7]), .SD(RegTmpB[6]), .SE(test_se), .C(
        clk_i), .Q(RegTmpB[7]), .QN(n40) );
  DFS3 RegTmpB_reg_8_ ( .D(RbValue[8]), .SD(RegTmpB[7]), .SE(test_se), .C(
        clk_i), .Q(RegTmpB[8]), .QN(n39) );
  DFS3 RegTmpB_reg_9_ ( .D(RbValue[9]), .SD(RegTmpB[8]), .SE(test_se), .C(
        clk_i), .Q(RegTmpB[9]), .QN(n38) );
  DFS3 RegTmpB_reg_10_ ( .D(RbValue[10]), .SD(RegTmpB[9]), .SE(test_se), .C(
        clk_i), .Q(RegTmpB[10]), .QN(n37) );
  DFS3 RegTmpB_reg_11_ ( .D(RbValue[11]), .SD(RegTmpB[10]), .SE(test_se), .C(
        clk_i), .Q(RegTmpB[11]), .QN(n36) );
  DFS3 RegTmpB_reg_12_ ( .D(RbValue[12]), .SD(RegTmpB[11]), .SE(test_se), .C(
        clk_i), .Q(RegTmpB[12]), .QN(n35) );
  DFS3 RegTmpB_reg_13_ ( .D(RbValue[13]), .SD(RegTmpB[12]), .SE(test_se), .C(
        clk_i), .Q(RegTmpB[13]), .QN(n34) );
  DFS3 RegTmpB_reg_14_ ( .D(RbValue[14]), .SD(RegTmpB[13]), .SE(test_se), .C(
        clk_i), .Q(RegTmpB[14]), .QN(n33) );
  DFS3 RegTmpB_reg_15_ ( .D(RbValue[15]), .SD(RegTmpB[14]), .SE(test_se), .C(
        clk_i), .Q(RegTmpB[15]), .QN(n32) );
  alu_16 thealu ( .side_a_i(AluSideA), .side_b_i(RegTmpB), .carry_i(carry_i), 
        .alu_func_i(alu_func_i), .result_o(AluResult), .carry_o(carry_o), 
        .zero_o(zero_o) );
  reg_file_8_0_test_1 thereg_file ( .clk_i(clk_i), .reg_a_idx_i(RegAIdx), 
        .reg_b_idx_i(RegBIdx), .clk_en_reg_file_i(clk_en_reg_file_i), .reg_i({
        Load[15:10], n200, n201, Load[7:5], n202, n203, Load[2:0]}), .reg_a_o(
        RaValue), .reg_b_o(RbValue), .test_si(RegTmpB[15]), .test_so(n206), 
        .test_se(test_se) );
  DFSEP1 RegBIdx_reg_3_ ( .D(n205), .SD(RegBIdx[2]), .E(clk_en_op_code_i), 
        .SE(test_se), .C(clk_i), .SN(res_i), .Q(RegBIdx[3]) );
  DFSEC1 RegPC_reg_15_ ( .D(n184), .SD(n208), .E(clk_en_pc_i), .SE(test_se), 
        .C(clk_i), .RN(res_i), .Q(n207), .QN(n137) );
  DFSEC1 RegPC_reg_0_ ( .D(n199), .SD(op_code_o[5]), .E(clk_en_pc_i), .SE(
        test_se), .C(clk_i), .RN(res_i), .Q(n222), .QN(n143) );
  DFSEC1 RegPC_reg_1_ ( .D(n198), .SD(n222), .E(clk_en_pc_i), .SE(test_se), 
        .C(clk_i), .RN(res_i), .Q(n221), .QN(n136) );
  DFSEC1 RegPC_reg_2_ ( .D(n197), .SD(n221), .E(clk_en_pc_i), .SE(test_se), 
        .C(clk_i), .RN(res_i), .Q(n220), .QN(n135) );
  DFSEC1 RegPC_reg_3_ ( .D(n196), .SD(n220), .E(clk_en_pc_i), .SE(test_se), 
        .C(clk_i), .RN(res_i), .Q(n219), .QN(n134) );
  DFSEC1 RegPC_reg_4_ ( .D(n195), .SD(n219), .E(clk_en_pc_i), .SE(test_se), 
        .C(clk_i), .RN(res_i), .Q(n218), .QN(n133) );
  DFSEC1 RegPC_reg_5_ ( .D(n194), .SD(n218), .E(clk_en_pc_i), .SE(test_se), 
        .C(clk_i), .RN(res_i), .Q(n217), .QN(n132) );
  DFSEC1 RegPC_reg_6_ ( .D(n193), .SD(n217), .E(clk_en_pc_i), .SE(test_se), 
        .C(clk_i), .RN(res_i), .Q(n216), .QN(n131) );
  DFSEC1 RegPC_reg_7_ ( .D(n192), .SD(n216), .E(clk_en_pc_i), .SE(test_se), 
        .C(clk_i), .RN(res_i), .Q(n215), .QN(n130) );
  DFSEC1 RegPC_reg_8_ ( .D(n191), .SD(n215), .E(clk_en_pc_i), .SE(test_se), 
        .C(clk_i), .RN(res_i), .Q(n214), .QN(n129) );
  DFSEC1 RegPC_reg_9_ ( .D(n190), .SD(n214), .E(clk_en_pc_i), .SE(test_se), 
        .C(clk_i), .RN(res_i), .Q(n213), .QN(n128) );
  DFSEC1 RegPC_reg_10_ ( .D(n189), .SD(n213), .E(clk_en_pc_i), .SE(test_se), 
        .C(clk_i), .RN(res_i), .Q(n212), .QN(n142) );
  DFSEC1 RegPC_reg_11_ ( .D(n188), .SD(n212), .E(clk_en_pc_i), .SE(test_se), 
        .C(clk_i), .RN(res_i), .Q(n211), .QN(n141) );
  DFSEC1 RegPC_reg_12_ ( .D(n187), .SD(n211), .E(clk_en_pc_i), .SE(test_se), 
        .C(clk_i), .RN(res_i), .Q(n210), .QN(n140) );
  DFSEC1 RegPC_reg_13_ ( .D(n186), .SD(n210), .E(clk_en_pc_i), .SE(test_se), 
        .C(clk_i), .RN(res_i), .Q(n209), .QN(n139) );
  DFSEC1 RegPC_reg_14_ ( .D(n185), .SD(n209), .E(clk_en_pc_i), .SE(test_se), 
        .C(clk_i), .RN(res_i), .Q(n208), .QN(n138) );
  DFSEP1 RegAIdx_reg_3_ ( .D(n204), .SD(RegAIdx[2]), .E(clk_en_op_code_i), 
        .SE(test_se), .C(clk_i), .SN(res_i), .Q(RegAIdx[3]) );
  DFSEC1 RegOpcode_reg_4_ ( .D(mem_data_i[14]), .SD(op_code_o[3]), .E(
        clk_en_op_code_i), .SE(test_se), .C(clk_i), .RN(res_i), .Q(
        op_code_o[4]) );
  DFSEC1 RegOpcode_reg_1_ ( .D(mem_data_i[11]), .SD(op_code_o[0]), .E(
        clk_en_op_code_i), .SE(test_se), .C(clk_i), .RN(res_i), .Q(
        op_code_o[1]) );
  DFSEP1 RegAIdx_reg_1_ ( .D(N12), .SD(RegAIdx[0]), .E(clk_en_op_code_i), .SE(
        test_se), .C(clk_i), .SN(res_i), .Q(RegAIdx[1]) );
  DFSEP1 RegBIdx_reg_0_ ( .D(N17), .SD(RegAIdx[3]), .E(clk_en_op_code_i), .SE(
        test_se), .C(clk_i), .SN(res_i), .Q(RegBIdx[0]) );
  DFSEC1 RegOpcode_reg_3_ ( .D(mem_data_i[13]), .SD(op_code_o[2]), .E(
        clk_en_op_code_i), .SE(test_se), .C(clk_i), .RN(res_i), .Q(
        op_code_o[3]) );
  DFSEP1 RegAIdx_reg_0_ ( .D(N11), .SD(test_si1), .E(clk_en_op_code_i), .SE(
        test_se), .C(clk_i), .SN(res_i), .Q(RegAIdx[0]) );
  DFSEP1 RegBIdx_reg_1_ ( .D(N18), .SD(RegBIdx[0]), .E(clk_en_op_code_i), .SE(
        test_se), .C(clk_i), .SN(res_i), .Q(RegBIdx[1]) );
  DFSEP1 RegBIdx_reg_2_ ( .D(N19), .SD(RegBIdx[1]), .E(clk_en_op_code_i), .SE(
        test_se), .C(clk_i), .SN(res_i), .Q(RegBIdx[2]) );
  DFSEP1 RegAIdx_reg_2_ ( .D(N13), .SD(RegAIdx[1]), .E(clk_en_op_code_i), .SE(
        test_se), .C(clk_i), .SN(res_i), .Q(RegAIdx[2]) );
  DFSEC1 RegOpcode_reg_5_ ( .D(mem_data_i[15]), .SD(op_code_o[4]), .E(
        clk_en_op_code_i), .SE(test_se), .C(clk_i), .RN(res_i), .Q(
        op_code_o[5]) );
  DFSEC1 RegOpcode_reg_0_ ( .D(mem_data_i[10]), .SD(RegBIdx[3]), .E(
        clk_en_op_code_i), .SE(test_se), .C(clk_i), .RN(res_i), .Q(
        op_code_o[0]) );
  DFSEC1 RegOpcode_reg_2_ ( .D(mem_data_i[12]), .SD(op_code_o[1]), .E(
        clk_en_op_code_i), .SE(test_se), .C(clk_i), .RN(res_i), .Q(
        op_code_o[2]) );
  MUX21 U4 ( .A(RaValue[15]), .B(AluResult[15]), .S(sel_pc_i), .Q(n184) );
  MUX21 U5 ( .A(RaValue[14]), .B(AluResult[14]), .S(sel_pc_i), .Q(n185) );
  MUX21 U6 ( .A(RaValue[13]), .B(AluResult[13]), .S(sel_pc_i), .Q(n186) );
  MUX21 U7 ( .A(RaValue[12]), .B(AluResult[12]), .S(sel_pc_i), .Q(n187) );
  MUX21 U8 ( .A(RaValue[11]), .B(AluResult[11]), .S(sel_pc_i), .Q(n188) );
  MUX21 U9 ( .A(RaValue[10]), .B(AluResult[10]), .S(sel_pc_i), .Q(n189) );
  MUX21 U10 ( .A(RaValue[9]), .B(AluResult[9]), .S(sel_pc_i), .Q(n190) );
  MUX21 U11 ( .A(RaValue[8]), .B(AluResult[8]), .S(sel_pc_i), .Q(n191) );
  MUX21 U12 ( .A(RaValue[7]), .B(AluResult[7]), .S(sel_pc_i), .Q(n192) );
  MUX21 U13 ( .A(RaValue[6]), .B(AluResult[6]), .S(sel_pc_i), .Q(n193) );
  MUX21 U14 ( .A(RaValue[5]), .B(AluResult[5]), .S(sel_pc_i), .Q(n194) );
  MUX21 U15 ( .A(RaValue[4]), .B(AluResult[4]), .S(sel_pc_i), .Q(n195) );
  MUX21 U16 ( .A(RaValue[3]), .B(AluResult[3]), .S(sel_pc_i), .Q(n196) );
  MUX21 U17 ( .A(RaValue[2]), .B(AluResult[2]), .S(sel_pc_i), .Q(n197) );
  MUX21 U18 ( .A(RaValue[1]), .B(AluResult[1]), .S(sel_pc_i), .Q(n198) );
  MUX21 U19 ( .A(RaValue[0]), .B(AluResult[0]), .S(sel_pc_i), .Q(n199) );
  MUX21 U20 ( .A(AluResult[9]), .B(mem_data_i[9]), .S(sel_load_i), .Q(n200) );
  MUX21 U21 ( .A(AluResult[8]), .B(mem_data_i[8]), .S(sel_load_i), .Q(n201) );
  MUX21 U22 ( .A(AluResult[4]), .B(mem_data_i[4]), .S(sel_load_i), .Q(n202) );
  MUX21 U23 ( .A(AluResult[3]), .B(mem_data_i[3]), .S(sel_load_i), .Q(n203) );
  CLKIN0 U24 ( .A(n174), .Q(n204) );
  CLKIN0 U25 ( .A(n175), .Q(n205) );
  IMUX20 U26 ( .A(n128), .B(n38), .S(sel_addr_i), .Q(mem_addr_o[9]) );
  IMUX20 U27 ( .A(n129), .B(n39), .S(sel_addr_i), .Q(mem_addr_o[8]) );
  IMUX20 U28 ( .A(n130), .B(n40), .S(sel_addr_i), .Q(mem_addr_o[7]) );
  IMUX20 U29 ( .A(n131), .B(n41), .S(sel_addr_i), .Q(mem_addr_o[6]) );
  IMUX20 U30 ( .A(n132), .B(n42), .S(sel_addr_i), .Q(mem_addr_o[5]) );
  IMUX20 U31 ( .A(n133), .B(n43), .S(sel_addr_i), .Q(mem_addr_o[4]) );
  IMUX20 U32 ( .A(n134), .B(n44), .S(sel_addr_i), .Q(mem_addr_o[3]) );
  IMUX20 U33 ( .A(n135), .B(n45), .S(sel_addr_i), .Q(mem_addr_o[2]) );
  IMUX20 U34 ( .A(n136), .B(n46), .S(sel_addr_i), .Q(mem_addr_o[1]) );
  IMUX20 U35 ( .A(n137), .B(n32), .S(sel_addr_i), .Q(mem_addr_o[15]) );
  IMUX20 U36 ( .A(n138), .B(n33), .S(sel_addr_i), .Q(mem_addr_o[14]) );
  IMUX20 U37 ( .A(n139), .B(n34), .S(sel_addr_i), .Q(mem_addr_o[13]) );
  IMUX20 U38 ( .A(n140), .B(n35), .S(sel_addr_i), .Q(mem_addr_o[12]) );
  IMUX20 U39 ( .A(n141), .B(n36), .S(sel_addr_i), .Q(mem_addr_o[11]) );
  IMUX20 U40 ( .A(n142), .B(n37), .S(sel_addr_i), .Q(mem_addr_o[10]) );
  IMUX20 U41 ( .A(n143), .B(n47), .S(sel_addr_i), .Q(mem_addr_o[0]) );
  NAND20 U42 ( .A(n176), .B(n177), .Q(reg_decode_error_o) );
  NAND40 U43 ( .A(RegAIdx[1]), .B(RegAIdx[3]), .C(RegAIdx[2]), .D(RegAIdx[0]), 
        .Q(n177) );
  NAND40 U44 ( .A(RegBIdx[3]), .B(RegBIdx[2]), .C(RegBIdx[0]), .D(RegBIdx[1]), 
        .Q(n176) );
  NAND20 U45 ( .A(n175), .B(n178), .Q(N19) );
  CLKIN0 U46 ( .A(mem_data_i[2]), .Q(n178) );
  NAND20 U47 ( .A(n175), .B(n179), .Q(N18) );
  CLKIN0 U48 ( .A(mem_data_i[1]), .Q(n179) );
  NAND20 U49 ( .A(n175), .B(n180), .Q(N17) );
  CLKIN0 U50 ( .A(mem_data_i[0]), .Q(n180) );
  NOR20 U51 ( .A(mem_data_i[4]), .B(mem_data_i[3]), .Q(n175) );
  NAND20 U52 ( .A(n174), .B(n181), .Q(N13) );
  CLKIN0 U53 ( .A(mem_data_i[7]), .Q(n181) );
  NAND20 U54 ( .A(n174), .B(n182), .Q(N12) );
  CLKIN0 U55 ( .A(mem_data_i[6]), .Q(n182) );
  NAND20 U56 ( .A(n174), .B(n183), .Q(N11) );
  CLKIN0 U57 ( .A(mem_data_i[5]), .Q(n183) );
  NOR20 U58 ( .A(mem_data_i[9]), .B(mem_data_i[8]), .Q(n174) );
  MUX21 U59 ( .A(AluResult[7]), .B(mem_data_i[7]), .S(sel_load_i), .Q(Load[7])
         );
  MUX21 U60 ( .A(AluResult[6]), .B(mem_data_i[6]), .S(sel_load_i), .Q(Load[6])
         );
  MUX21 U61 ( .A(AluResult[5]), .B(mem_data_i[5]), .S(sel_load_i), .Q(Load[5])
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
  IMUX20 U71 ( .A(n156), .B(n128), .S(sel_pc_i), .Q(AluSideA[9]) );
  IMUX20 U72 ( .A(n157), .B(n129), .S(sel_pc_i), .Q(AluSideA[8]) );
  IMUX20 U73 ( .A(n158), .B(n130), .S(sel_pc_i), .Q(AluSideA[7]) );
  IMUX20 U74 ( .A(n159), .B(n131), .S(sel_pc_i), .Q(AluSideA[6]) );
  IMUX20 U75 ( .A(n160), .B(n132), .S(sel_pc_i), .Q(AluSideA[5]) );
  IMUX20 U76 ( .A(n161), .B(n133), .S(sel_pc_i), .Q(AluSideA[4]) );
  IMUX20 U77 ( .A(n162), .B(n134), .S(sel_pc_i), .Q(AluSideA[3]) );
  IMUX20 U78 ( .A(n163), .B(n135), .S(sel_pc_i), .Q(AluSideA[2]) );
  IMUX20 U79 ( .A(n164), .B(n136), .S(sel_pc_i), .Q(AluSideA[1]) );
  IMUX20 U80 ( .A(n150), .B(n137), .S(sel_pc_i), .Q(AluSideA[15]) );
  IMUX20 U81 ( .A(n151), .B(n138), .S(sel_pc_i), .Q(AluSideA[14]) );
  IMUX20 U82 ( .A(n152), .B(n139), .S(sel_pc_i), .Q(AluSideA[13]) );
  IMUX20 U83 ( .A(n153), .B(n140), .S(sel_pc_i), .Q(AluSideA[12]) );
  IMUX20 U84 ( .A(n154), .B(n141), .S(sel_pc_i), .Q(AluSideA[11]) );
  IMUX20 U85 ( .A(n155), .B(n142), .S(sel_pc_i), .Q(AluSideA[10]) );
  IMUX20 U86 ( .A(n165), .B(n143), .S(sel_pc_i), .Q(AluSideA[0]) );
endmodule


module alu_16_DW01_add_0 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   carry_16, carry_15, carry_14, carry_13, carry_12, carry_11, carry_10,
         carry_9, carry_8, carry_7, carry_6, carry_5, carry_4, carry_3,
         carry_2;

  ADD32 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry_16), .CO(SUM[17]), .S(SUM[16])
         );
  ADD32 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry_15), .CO(carry_16), .S(SUM[15]) );
  ADD32 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry_14), .CO(carry_15), .S(SUM[14]) );
  ADD32 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry_13), .CO(carry_14), .S(SUM[13]) );
  ADD32 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry_12), .CO(carry_13), .S(SUM[12]) );
  ADD32 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry_11), .CO(carry_12), .S(SUM[11]) );
  ADD32 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry_10), .CO(carry_11), .S(SUM[10]) );
  ADD32 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry_9), .CO(carry_10), .S(SUM[9]) );
  ADD32 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry_8), .CO(carry_9), .S(SUM[8]) );
  ADD32 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry_7), .CO(carry_8), .S(SUM[7]) );
  ADD32 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry_6), .CO(carry_7), .S(SUM[6]) );
  ADD32 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry_5), .CO(carry_6), .S(SUM[5]) );
  ADD32 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry_4), .CO(carry_5), .S(SUM[4]) );
  ADD32 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry_3), .CO(carry_4), .S(SUM[3]) );
  ADD32 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry_2), .CO(carry_3), .S(SUM[2]) );
  ADD32 U1_1 ( .A(A[1]), .B(B[1]), .CI(B[0]), .CO(carry_2), .S(SUM[1]) );
endmodule


module alu_16 ( side_a_i, side_b_i, carry_i, alu_func_i, result_o, carry_o, 
        zero_o );
  input [15:0] side_a_i;
  input [15:0] side_b_i;
  input [3:0] alu_func_i;
  output [15:0] result_o;
  input carry_i;
  output carry_o, zero_o;
  wire   add_cin, res_v_17, res_v_16, res_v_15, res_v_14, res_v_13, res_v_12,
         res_v_11, res_v_10, res_v_9, res_v_8, res_v_7, res_v_6, res_v_5,
         res_v_4, res_v_3, res_v_2, res_v_1, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176;
  wire   [15:0] add_b;
  wire   SYNOPSYS_UNCONNECTED__0;

  alu_16_DW01_add_0 add_110 ( .A({n2, side_a_i, n1}), .B({n2, add_b, add_cin}), 
        .CI(n2), .SUM({res_v_17, res_v_16, res_v_15, res_v_14, res_v_13, 
        res_v_12, res_v_11, res_v_10, res_v_9, res_v_8, res_v_7, res_v_6, 
        res_v_5, res_v_4, res_v_3, res_v_2, res_v_1, SYNOPSYS_UNCONNECTED__0})
         );

  // undetectable error
  assign SYNOPSYS_UNCONNECTED__0 = 1;

  NOR31 U3 ( .A(n150), .B(n151), .C(n152), .Q(n22) );
  NOR21 U4 ( .A(n148), .B(alu_func_i[1]), .Q(n161) );
  INV3 U5 ( .A(n18), .Q(n24) );
  INV3 U6 ( .A(n154), .Q(n8) );
  NOR31 U7 ( .A(n151), .B(alu_func_i[0]), .C(n150), .Q(n18) );
  NAND22 U8 ( .A(n160), .B(alu_func_i[1]), .Q(n159) );
  CLKIN2 U9 ( .A(n147), .Q(n160) );
  INV3 U10 ( .A(n146), .Q(n20) );
  NAND30 U11 ( .A(alu_func_i[0]), .B(n150), .C(alu_func_i[3]), .Q(n147) );
  IMUX21 U12 ( .A(n145), .B(n19), .S(alu_func_i[0]), .Q(n25) );
  OAI211 U13 ( .A(n145), .B(n19), .C(alu_func_i[0]), .Q(n16) );
  NOR31 U14 ( .A(alu_func_i[1]), .B(alu_func_i[3]), .C(n150), .Q(n19) );
  NAND22 U15 ( .A(n147), .B(n148), .Q(n12) );
  LOGIC0 U16 ( .Q(n2) );
  LOGIC1 U17 ( .Q(n1) );
  CLKIN0 U18 ( .A(n3), .Q(zero_o) );
  NAND40 U19 ( .A(n4), .B(n5), .C(n6), .D(n7), .Q(n3) );
  NOR40 U20 ( .A(result_o[9]), .B(result_o[8]), .C(result_o[7]), .D(
        result_o[6]), .Q(n7) );
  OAI2110 U21 ( .A(n8), .B(n9), .C(n10), .D(n11), .Q(result_o[6]) );
  AOI2110 U22 ( .A(res_v_7), .B(n12), .C(n13), .D(n14), .Q(n11) );
  AOI210 U23 ( .A(n15), .B(n16), .C(n17), .Q(n14) );
  CLKIN0 U24 ( .A(side_b_i[6]), .Q(n17) );
  IMUX20 U25 ( .A(n18), .B(n19), .S(side_a_i[6]), .Q(n15) );
  NOR20 U26 ( .A(n20), .B(n21), .Q(n13) );
  IMUX20 U27 ( .A(n22), .B(n23), .S(side_a_i[6]), .Q(n10) );
  OAI210 U28 ( .A(side_b_i[6]), .B(n24), .C(n25), .Q(n23) );
  OAI2110 U29 ( .A(n8), .B(n26), .C(n27), .D(n28), .Q(result_o[7]) );
  AOI2110 U30 ( .A(res_v_8), .B(n12), .C(n29), .D(n30), .Q(n28) );
  AOI210 U31 ( .A(n31), .B(n16), .C(n32), .Q(n30) );
  CLKIN0 U32 ( .A(side_b_i[7]), .Q(n32) );
  IMUX20 U33 ( .A(n18), .B(n19), .S(side_a_i[7]), .Q(n31) );
  NOR20 U34 ( .A(n20), .B(n33), .Q(n29) );
  IMUX20 U35 ( .A(n22), .B(n34), .S(side_a_i[7]), .Q(n27) );
  OAI210 U36 ( .A(side_b_i[7]), .B(n24), .C(n25), .Q(n34) );
  OAI2110 U37 ( .A(n8), .B(n21), .C(n35), .D(n36), .Q(result_o[8]) );
  AOI2110 U38 ( .A(res_v_9), .B(n12), .C(n37), .D(n38), .Q(n36) );
  AOI210 U39 ( .A(n39), .B(n16), .C(n40), .Q(n38) );
  CLKIN0 U40 ( .A(side_b_i[8]), .Q(n40) );
  IMUX20 U41 ( .A(n18), .B(n19), .S(side_a_i[8]), .Q(n39) );
  NOR20 U42 ( .A(n41), .B(n20), .Q(n37) );
  IMUX20 U43 ( .A(n22), .B(n42), .S(side_a_i[8]), .Q(n35) );
  OAI210 U44 ( .A(side_b_i[8]), .B(n24), .C(n25), .Q(n42) );
  CLKIN0 U45 ( .A(side_a_i[7]), .Q(n21) );
  OAI2110 U46 ( .A(n8), .B(n33), .C(n43), .D(n44), .Q(result_o[9]) );
  AOI2110 U47 ( .A(res_v_10), .B(n12), .C(n45), .D(n46), .Q(n44) );
  AOI210 U48 ( .A(n47), .B(n16), .C(n48), .Q(n46) );
  CLKIN0 U49 ( .A(side_b_i[9]), .Q(n48) );
  IMUX20 U50 ( .A(n18), .B(n19), .S(side_a_i[9]), .Q(n47) );
  NOR20 U51 ( .A(n20), .B(n49), .Q(n45) );
  IMUX20 U52 ( .A(n22), .B(n50), .S(side_a_i[9]), .Q(n43) );
  OAI210 U53 ( .A(side_b_i[9]), .B(n24), .C(n25), .Q(n50) );
  CLKIN0 U54 ( .A(side_a_i[8]), .Q(n33) );
  NOR40 U55 ( .A(result_o[5]), .B(result_o[4]), .C(result_o[3]), .D(
        result_o[2]), .Q(n6) );
  OAI2110 U56 ( .A(n8), .B(n51), .C(n52), .D(n53), .Q(result_o[2]) );
  AOI2110 U57 ( .A(res_v_3), .B(n12), .C(n54), .D(n55), .Q(n53) );
  AOI210 U58 ( .A(n56), .B(n16), .C(n57), .Q(n55) );
  CLKIN0 U59 ( .A(side_b_i[2]), .Q(n57) );
  IMUX20 U60 ( .A(n18), .B(n19), .S(side_a_i[2]), .Q(n56) );
  NOR20 U61 ( .A(n20), .B(n58), .Q(n54) );
  IMUX20 U62 ( .A(n22), .B(n59), .S(side_a_i[2]), .Q(n52) );
  OAI210 U63 ( .A(side_b_i[2]), .B(n24), .C(n25), .Q(n59) );
  OAI2110 U64 ( .A(n8), .B(n60), .C(n61), .D(n62), .Q(result_o[3]) );
  AOI2110 U65 ( .A(res_v_4), .B(n12), .C(n63), .D(n64), .Q(n62) );
  AOI210 U66 ( .A(n65), .B(n16), .C(n66), .Q(n64) );
  CLKIN0 U67 ( .A(side_b_i[3]), .Q(n66) );
  IMUX20 U68 ( .A(n18), .B(n19), .S(side_a_i[3]), .Q(n65) );
  NOR20 U69 ( .A(n20), .B(n67), .Q(n63) );
  IMUX20 U70 ( .A(n22), .B(n68), .S(side_a_i[3]), .Q(n61) );
  OAI210 U71 ( .A(side_b_i[3]), .B(n24), .C(n25), .Q(n68) );
  OAI2110 U72 ( .A(n8), .B(n58), .C(n69), .D(n70), .Q(result_o[4]) );
  AOI2110 U73 ( .A(res_v_5), .B(n12), .C(n71), .D(n72), .Q(n70) );
  AOI210 U74 ( .A(n73), .B(n16), .C(n74), .Q(n72) );
  CLKIN0 U75 ( .A(side_b_i[4]), .Q(n74) );
  IMUX20 U76 ( .A(n18), .B(n19), .S(side_a_i[4]), .Q(n73) );
  NOR20 U77 ( .A(n20), .B(n9), .Q(n71) );
  CLKIN0 U78 ( .A(side_a_i[5]), .Q(n9) );
  IMUX20 U79 ( .A(n22), .B(n75), .S(side_a_i[4]), .Q(n69) );
  OAI210 U80 ( .A(side_b_i[4]), .B(n24), .C(n25), .Q(n75) );
  CLKIN0 U81 ( .A(side_a_i[3]), .Q(n58) );
  OAI2110 U82 ( .A(n8), .B(n67), .C(n76), .D(n77), .Q(result_o[5]) );
  AOI2110 U83 ( .A(res_v_6), .B(n12), .C(n78), .D(n79), .Q(n77) );
  AOI210 U84 ( .A(n80), .B(n16), .C(n81), .Q(n79) );
  CLKIN0 U85 ( .A(side_b_i[5]), .Q(n81) );
  IMUX20 U86 ( .A(n18), .B(n19), .S(side_a_i[5]), .Q(n80) );
  NOR20 U87 ( .A(n20), .B(n26), .Q(n78) );
  CLKIN0 U88 ( .A(side_a_i[6]), .Q(n26) );
  IMUX20 U89 ( .A(n22), .B(n82), .S(side_a_i[5]), .Q(n76) );
  OAI210 U90 ( .A(side_b_i[5]), .B(n24), .C(n25), .Q(n82) );
  CLKIN0 U91 ( .A(side_a_i[4]), .Q(n67) );
  NOR40 U92 ( .A(result_o[15]), .B(result_o[14]), .C(result_o[13]), .D(
        result_o[12]), .Q(n5) );
  OAI2110 U93 ( .A(n8), .B(n83), .C(n84), .D(n85), .Q(result_o[12]) );
  AOI2110 U94 ( .A(res_v_13), .B(n12), .C(n86), .D(n87), .Q(n85) );
  AOI210 U95 ( .A(n88), .B(n16), .C(n89), .Q(n87) );
  CLKIN0 U96 ( .A(side_b_i[12]), .Q(n89) );
  IMUX20 U97 ( .A(n18), .B(n19), .S(side_a_i[12]), .Q(n88) );
  NOR20 U98 ( .A(n20), .B(n90), .Q(n86) );
  IMUX20 U99 ( .A(n22), .B(n91), .S(side_a_i[12]), .Q(n84) );
  OAI210 U100 ( .A(side_b_i[12]), .B(n24), .C(n25), .Q(n91) );
  OAI2110 U101 ( .A(n8), .B(n92), .C(n93), .D(n94), .Q(result_o[13]) );
  AOI2110 U102 ( .A(res_v_14), .B(n12), .C(n95), .D(n96), .Q(n94) );
  AOI210 U103 ( .A(n97), .B(n16), .C(n98), .Q(n96) );
  CLKIN0 U104 ( .A(side_b_i[13]), .Q(n98) );
  IMUX20 U105 ( .A(n18), .B(n19), .S(side_a_i[13]), .Q(n97) );
  NOR20 U106 ( .A(n20), .B(n99), .Q(n95) );
  IMUX20 U107 ( .A(n22), .B(n100), .S(side_a_i[13]), .Q(n93) );
  OAI210 U108 ( .A(side_b_i[13]), .B(n24), .C(n25), .Q(n100) );
  OAI2110 U109 ( .A(n8), .B(n90), .C(n101), .D(n102), .Q(result_o[14]) );
  AOI2110 U110 ( .A(res_v_15), .B(n12), .C(n103), .D(n104), .Q(n102) );
  AOI210 U111 ( .A(n105), .B(n16), .C(n106), .Q(n104) );
  CLKIN0 U112 ( .A(side_b_i[14]), .Q(n106) );
  IMUX20 U113 ( .A(n18), .B(n19), .S(side_a_i[14]), .Q(n105) );
  NOR20 U114 ( .A(n20), .B(n107), .Q(n103) );
  IMUX20 U115 ( .A(n22), .B(n108), .S(side_a_i[14]), .Q(n101) );
  OAI210 U116 ( .A(side_b_i[14]), .B(n24), .C(n25), .Q(n108) );
  CLKIN0 U117 ( .A(side_a_i[13]), .Q(n90) );
  OAI2110 U118 ( .A(n8), .B(n99), .C(n109), .D(n110), .Q(result_o[15]) );
  AOI2110 U119 ( .A(res_v_16), .B(n12), .C(n111), .D(n112), .Q(n110) );
  AOI210 U120 ( .A(n113), .B(n16), .C(n114), .Q(n112) );
  CLKIN0 U121 ( .A(side_b_i[15]), .Q(n114) );
  IMUX20 U122 ( .A(n19), .B(n18), .S(n107), .Q(n113) );
  NOR20 U123 ( .A(n20), .B(n115), .Q(n111) );
  IMUX20 U124 ( .A(n116), .B(n22), .S(n107), .Q(n109) );
  CLKIN0 U125 ( .A(side_a_i[15]), .Q(n107) );
  OAI210 U126 ( .A(side_b_i[15]), .B(n24), .C(n25), .Q(n116) );
  CLKIN0 U127 ( .A(side_a_i[14]), .Q(n99) );
  NOR40 U128 ( .A(result_o[11]), .B(result_o[10]), .C(result_o[1]), .D(
        result_o[0]), .Q(n4) );
  OAI2110 U129 ( .A(n8), .B(n115), .C(n117), .D(n118), .Q(result_o[0]) );
  AOI2110 U130 ( .A(res_v_1), .B(n12), .C(n119), .D(n120), .Q(n118) );
  AOI210 U131 ( .A(n121), .B(n16), .C(n122), .Q(n120) );
  CLKIN0 U132 ( .A(side_b_i[0]), .Q(n122) );
  IMUX20 U133 ( .A(n18), .B(n19), .S(side_a_i[0]), .Q(n121) );
  NOR20 U134 ( .A(n20), .B(n51), .Q(n119) );
  CLKIN0 U135 ( .A(side_a_i[1]), .Q(n51) );
  IMUX20 U136 ( .A(n22), .B(n123), .S(side_a_i[0]), .Q(n117) );
  OAI210 U137 ( .A(side_b_i[0]), .B(n24), .C(n25), .Q(n123) );
  CLKIN0 U138 ( .A(carry_i), .Q(n115) );
  OAI2110 U139 ( .A(n8), .B(n124), .C(n125), .D(n126), .Q(result_o[1]) );
  AOI2110 U140 ( .A(res_v_2), .B(n12), .C(n127), .D(n128), .Q(n126) );
  AOI210 U141 ( .A(n129), .B(n16), .C(n130), .Q(n128) );
  CLKIN0 U142 ( .A(side_b_i[1]), .Q(n130) );
  IMUX20 U143 ( .A(n18), .B(n19), .S(side_a_i[1]), .Q(n129) );
  NOR20 U144 ( .A(n20), .B(n60), .Q(n127) );
  CLKIN0 U145 ( .A(side_a_i[2]), .Q(n60) );
  IMUX20 U146 ( .A(n22), .B(n131), .S(side_a_i[1]), .Q(n125) );
  OAI210 U147 ( .A(side_b_i[1]), .B(n24), .C(n25), .Q(n131) );
  CLKIN0 U148 ( .A(side_a_i[0]), .Q(n124) );
  OAI2110 U149 ( .A(n41), .B(n8), .C(n132), .D(n133), .Q(result_o[10]) );
  AOI2110 U150 ( .A(res_v_11), .B(n12), .C(n134), .D(n135), .Q(n133) );
  AOI210 U151 ( .A(n136), .B(n16), .C(n137), .Q(n135) );
  CLKIN0 U152 ( .A(side_b_i[10]), .Q(n137) );
  IMUX20 U153 ( .A(n18), .B(n19), .S(side_a_i[10]), .Q(n136) );
  NOR20 U154 ( .A(n20), .B(n83), .Q(n134) );
  CLKIN0 U155 ( .A(side_a_i[11]), .Q(n83) );
  IMUX20 U156 ( .A(n22), .B(n138), .S(side_a_i[10]), .Q(n132) );
  OAI210 U157 ( .A(side_b_i[10]), .B(n24), .C(n25), .Q(n138) );
  CLKIN0 U158 ( .A(side_a_i[9]), .Q(n41) );
  OAI2110 U159 ( .A(n49), .B(n8), .C(n139), .D(n140), .Q(result_o[11]) );
  AOI2110 U160 ( .A(res_v_12), .B(n12), .C(n141), .D(n142), .Q(n140) );
  AOI210 U161 ( .A(n143), .B(n16), .C(n144), .Q(n142) );
  CLKIN0 U162 ( .A(side_b_i[11]), .Q(n144) );
  IMUX20 U163 ( .A(n18), .B(n19), .S(side_a_i[11]), .Q(n143) );
  NOR20 U164 ( .A(n20), .B(n92), .Q(n141) );
  CLKIN0 U165 ( .A(side_a_i[12]), .Q(n92) );
  IMUX20 U166 ( .A(n22), .B(n149), .S(side_a_i[11]), .Q(n139) );
  OAI210 U167 ( .A(side_b_i[11]), .B(n24), .C(n25), .Q(n149) );
  NOR20 U168 ( .A(alu_func_i[2]), .B(n151), .Q(n145) );
  NAND20 U169 ( .A(alu_func_i[1]), .B(n153), .Q(n151) );
  CLKIN0 U170 ( .A(side_a_i[10]), .Q(n49) );
  NAND20 U171 ( .A(n155), .B(n156), .Q(carry_o) );
  MUX21 U172 ( .A(n147), .B(n148), .S(res_v_17), .Q(n156) );
  AOI220 U173 ( .A(side_a_i[0]), .B(n146), .C(side_a_i[15]), .D(n154), .Q(n155) );
  NOR40 U174 ( .A(n153), .B(n150), .C(alu_func_i[0]), .D(alu_func_i[1]), .Q(
        n154) );
  NOR40 U175 ( .A(n153), .B(n152), .C(n150), .D(alu_func_i[1]), .Q(n146) );
  CLKIN0 U176 ( .A(alu_func_i[3]), .Q(n153) );
  IMUX20 U177 ( .A(n148), .B(n147), .S(n157), .Q(add_cin) );
  NOR20 U178 ( .A(alu_func_i[1]), .B(carry_i), .Q(n157) );
  NAND20 U179 ( .A(n158), .B(n159), .Q(add_b[9]) );
  IMUX20 U180 ( .A(n160), .B(n161), .S(side_b_i[9]), .Q(n158) );
  NAND20 U181 ( .A(n162), .B(n159), .Q(add_b[8]) );
  IMUX20 U182 ( .A(n160), .B(n161), .S(side_b_i[8]), .Q(n162) );
  NAND20 U183 ( .A(n163), .B(n159), .Q(add_b[7]) );
  IMUX20 U184 ( .A(n160), .B(n161), .S(side_b_i[7]), .Q(n163) );
  NAND20 U185 ( .A(n164), .B(n159), .Q(add_b[6]) );
  IMUX20 U186 ( .A(n160), .B(n161), .S(side_b_i[6]), .Q(n164) );
  NAND20 U187 ( .A(n165), .B(n159), .Q(add_b[5]) );
  IMUX20 U188 ( .A(n160), .B(n161), .S(side_b_i[5]), .Q(n165) );
  NAND20 U189 ( .A(n166), .B(n159), .Q(add_b[4]) );
  IMUX20 U190 ( .A(n160), .B(n161), .S(side_b_i[4]), .Q(n166) );
  NAND20 U191 ( .A(n167), .B(n159), .Q(add_b[3]) );
  IMUX20 U192 ( .A(n160), .B(n161), .S(side_b_i[3]), .Q(n167) );
  NAND20 U193 ( .A(n168), .B(n159), .Q(add_b[2]) );
  IMUX20 U194 ( .A(n160), .B(n161), .S(side_b_i[2]), .Q(n168) );
  NAND20 U195 ( .A(n169), .B(n159), .Q(add_b[15]) );
  IMUX20 U196 ( .A(n160), .B(n161), .S(side_b_i[15]), .Q(n169) );
  NAND20 U197 ( .A(n170), .B(n159), .Q(add_b[14]) );
  IMUX20 U198 ( .A(n160), .B(n161), .S(side_b_i[14]), .Q(n170) );
  NAND20 U199 ( .A(n171), .B(n159), .Q(add_b[13]) );
  IMUX20 U200 ( .A(n160), .B(n161), .S(side_b_i[13]), .Q(n171) );
  NAND20 U201 ( .A(n172), .B(n159), .Q(add_b[12]) );
  IMUX20 U202 ( .A(n160), .B(n161), .S(side_b_i[12]), .Q(n172) );
  NAND20 U203 ( .A(n173), .B(n159), .Q(add_b[11]) );
  IMUX20 U204 ( .A(n160), .B(n161), .S(side_b_i[11]), .Q(n173) );
  NAND20 U205 ( .A(n174), .B(n159), .Q(add_b[10]) );
  IMUX20 U206 ( .A(n160), .B(n161), .S(side_b_i[10]), .Q(n174) );
  NAND20 U207 ( .A(n175), .B(n159), .Q(add_b[1]) );
  IMUX20 U208 ( .A(n160), .B(n161), .S(side_b_i[1]), .Q(n175) );
  NAND20 U209 ( .A(n176), .B(n159), .Q(add_b[0]) );
  IMUX20 U210 ( .A(n160), .B(n161), .S(side_b_i[0]), .Q(n176) );
  
  // no error
  NAND30 U211 ( .A(n152), .B(n150), .C(alu_func_i[3]), .Q(n148) );

  //detectable error
  //assign n148 = 0;
  //NAND30 U211 ( .A(n152), .B(n150), .C(alu_func_i[3]), .Q() );

  CLKIN0 U212 ( .A(alu_func_i[0]), .Q(n152) );
  CLKIN0 U213 ( .A(alu_func_i[2]), .Q(n150) );
endmodule


module cpu ( clk_i, res_i, test_mode_i, scan_enable_i, mem_addr_o, mem_data_o, 
        mem_data_i, mem_ce_no, mem_oe_no, mem_we_no, illegal_inst_o, 
        cpu_halt_o );
  output [15:0] mem_addr_o;
  output [15:0] mem_data_o;
  input [15:0] mem_data_i;
  input clk_i, res_i, test_mode_i, scan_enable_i;
  output mem_ce_no, mem_oe_no, mem_we_no, illegal_inst_o, cpu_halt_o;
  wire   n13, reg_decode_error, sel_pc, sel_load, sel_addr, clk_en_pc,
         clk_en_reg_file, clk_en_op_code, carry_in, carry_out, zero,
         mem_rd_stb, mem_wr_stb, n7, n8, n9, n10;
  wire   [5:0] op_code;
  wire   [3:0] alu_func;

  datapath_test_1 datapath_inst ( .clk_i(clk_i), .res_i(res_i), .op_code_o(
        op_code), .reg_decode_error_o(reg_decode_error), .sel_pc_i(sel_pc), 
        .sel_load_i(sel_load), .sel_addr_i(sel_addr), .clk_en_pc_i(clk_en_pc), 
        .clk_en_reg_file_i(clk_en_reg_file), .clk_en_op_code_i(clk_en_op_code), 
        .alu_func_i(alu_func), .carry_i(carry_in), .carry_o(carry_out), 
        .zero_o(zero), .mem_addr_o(mem_addr_o), .mem_data_o({mem_data_o[15:1], 
        n13}), .mem_data_i(mem_data_i), .test_si1(mem_wr_stb), .test_se(
        scan_enable_i) );
  control_test_1 control_inst ( .clk_i(clk_i), .res_i(res_i), .op_code_i(
        op_code), .reg_decode_error_i(reg_decode_error), .sel_pc_o(sel_pc), 
        .sel_load_o(sel_load), .sel_addr_o(sel_addr), .clk_en_pc_o(clk_en_pc), 
        .clk_en_reg_file_o(clk_en_reg_file), .clk_en_op_code_o(clk_en_op_code), 
        .alu_func_o(alu_func), .carry_o(carry_in), .carry_i(carry_out), 
        .zero_i(zero), .mem_rd_stb_o(mem_rd_stb), .mem_wr_stb_o(mem_wr_stb), 
        .illegal_inst_o(illegal_inst_o), .cpu_halt_o(cpu_halt_o), .test_si(
        mem_data_i[0]), .test_se(scan_enable_i) );
  IMUX20 U9 ( .A(n7), .B(n8), .S(test_mode_i), .Q(mem_we_no) );
  NOR20 U10 ( .A(clk_i), .B(n8), .Q(n7) );
  CLKIN0 U11 ( .A(mem_wr_stb), .Q(n8) );
  IMUX20 U12 ( .A(n9), .B(n10), .S(test_mode_i), .Q(mem_oe_no) );
  NOR20 U13 ( .A(clk_i), .B(n10), .Q(n9) );
  CLKIN0 U14 ( .A(mem_rd_stb), .Q(n10) );
  NOR20 U15 ( .A(mem_wr_stb), .B(mem_rd_stb), .Q(mem_ce_no) );
  MUX21 U16 ( .A(n13), .B(mem_data_o[15]), .S(scan_enable_i), .Q(mem_data_o[0]) );
endmodule


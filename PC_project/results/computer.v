/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12
// Date      : Thu Aug  1 18:00:05 2024
/////////////////////////////////////////////////////////////


module control_unit ( clock, reset, IR_Load, IR, MAR_Load, PC_Load, PC_Inc, 
        A_Load, B_Load, ALU_Sel, CCR_Result, CCR_Load, Bus2_Sel, Bus1_Sel, 
        write );
  input [7:0] IR;
  output [2:0] ALU_Sel;
  input [3:0] CCR_Result;
  output [1:0] Bus2_Sel;
  output [1:0] Bus1_Sel;
  input clock, reset;
  output IR_Load, MAR_Load, PC_Load, PC_Inc, A_Load, B_Load, CCR_Load, write;
  wire   N206, N207, N208, N209, N210, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106;
  wire   [3:0] next_state;

  GTECH_LD1 next_state_reg_0_ ( .G(N206), .D(N207), .Q(next_state[0]) );
  GTECH_FD2 current_state_reg_0_ ( .D(next_state[0]), .CP(n3), .CD(n1), .QN(
        n104) );
  GTECH_LD1 next_state_reg_3_ ( .G(N206), .D(N210), .Q(next_state[3]) );
  GTECH_FD2 current_state_reg_3_ ( .D(next_state[3]), .CP(n3), .CD(n1), .QN(
        n106) );
  GTECH_LD1 next_state_reg_2_ ( .G(N206), .D(N209), .Q(next_state[2]) );
  GTECH_FD2 current_state_reg_2_ ( .D(next_state[2]), .CP(n3), .CD(n1), .QN(
        n103) );
  GTECH_LD1 next_state_reg_1_ ( .G(N206), .D(N208), .Q(next_state[1]) );
  GTECH_FD2 current_state_reg_1_ ( .D(next_state[1]), .CP(n3), .CD(n1), .QN(
        n105) );
  GTECH_NOT U3 ( .A(n2), .Z(n1) );
  GTECH_NOT U4 ( .A(reset), .Z(n2) );
  GTECH_NOT U5 ( .A(n4), .Z(n3) );
  GTECH_NOT U6 ( .A(clock), .Z(n4) );
  GTECH_NOT U7 ( .A(n5), .Z(A_Load) );
  GTECH_AOI222 U8 ( .A(CCR_Load), .B(n6), .C(n7), .D(n8), .E(n9), .F(n10), .Z(
        n5) );
  GTECH_AND_NOT U9 ( .A(n11), .B(n12), .Z(n7) );
  GTECH_NOT U10 ( .A(n13), .Z(B_Load) );
  GTECH_AOI222 U11 ( .A(n14), .B(CCR_Load), .C(n15), .D(n16), .E(n17), .F(n10), 
        .Z(n13) );
  GTECH_AND_NOT U12 ( .A(n18), .B(n12), .Z(n15) );
  GTECH_AND3 U13 ( .A(n19), .B(n20), .C(n21), .Z(PC_Load) );
  GTECH_OA21 U14 ( .A(n22), .B(n23), .C(n24), .Z(n21) );
  GTECH_OA21 U15 ( .A(n25), .B(n26), .C(n27), .Z(n23) );
  GTECH_MUXI2 U16 ( .A(n28), .B(n29), .S(n30), .Z(n26) );
  GTECH_OA21 U17 ( .A(IR[1]), .B(n31), .C(n32), .Z(n29) );
  GTECH_MUXI2 U18 ( .A(n33), .B(n31), .S(n11), .Z(n32) );
  GTECH_AND_NOT U19 ( .A(CCR_Result[2]), .B(n34), .Z(n33) );
  GTECH_NOT U20 ( .A(CCR_Result[3]), .Z(n31) );
  GTECH_MUXI2 U21 ( .A(n35), .B(n36), .S(IR[1]), .Z(n28) );
  GTECH_MUXI2 U22 ( .A(CCR_Result[1]), .B(n37), .S(IR[0]), .Z(n36) );
  GTECH_AND_NOT U23 ( .A(CCR_Result[1]), .B(n11), .Z(n35) );
  GTECH_NOR3 U24 ( .A(IR[0]), .B(IR[1]), .C(CCR_Result[2]), .Z(n25) );
  GTECH_AND3 U25 ( .A(n16), .B(n37), .C(n38), .Z(n22) );
  GTECH_NOT U26 ( .A(CCR_Result[0]), .Z(n37) );
  GTECH_OAI21 U27 ( .A(n39), .B(n40), .C(n41), .Z(PC_Inc) );
  GTECH_AND2 U28 ( .A(n42), .B(n43), .Z(n41) );
  GTECH_OAI21 U29 ( .A(n44), .B(n27), .C(n45), .Z(n43) );
  GTECH_AND3 U30 ( .A(n46), .B(n11), .C(n38), .Z(n44) );
  GTECH_OAI21 U31 ( .A(n47), .B(n48), .C(n49), .Z(N210) );
  GTECH_NAND2 U32 ( .A(n50), .B(n51), .Z(N209) );
  GTECH_NAND5 U33 ( .A(n42), .B(n52), .C(n40), .D(n49), .E(n50), .Z(N208) );
  GTECH_AND_NOT U34 ( .A(n53), .B(n54), .Z(n49) );
  GTECH_OR3 U35 ( .A(n20), .B(n19), .C(n55), .Z(n42) );
  GTECH_NAND4 U36 ( .A(n56), .B(n57), .C(n58), .D(n59), .Z(N207) );
  GTECH_AND3 U37 ( .A(n53), .B(n52), .C(n50), .Z(n59) );
  GTECH_AO21 U38 ( .A(n11), .B(n60), .C(n12), .Z(n50) );
  GTECH_NOT U39 ( .A(n45), .Z(n53) );
  GTECH_AND3 U40 ( .A(n19), .B(n20), .C(n61), .Z(n45) );
  GTECH_OR3 U41 ( .A(n47), .B(n62), .C(n48), .Z(n58) );
  GTECH_NAND4 U42 ( .A(n51), .B(n106), .C(n63), .D(n64), .Z(N206) );
  GTECH_OA21 U43 ( .A(n65), .B(n48), .C(n66), .Z(n64) );
  GTECH_AND_NOT U44 ( .A(n20), .B(n67), .Z(n66) );
  GTECH_AOI21 U45 ( .A(IR[5]), .B(n68), .C(n62), .Z(n65) );
  GTECH_AND3 U46 ( .A(n69), .B(n70), .C(n71), .Z(n62) );
  GTECH_MUXI2 U47 ( .A(n72), .B(IR[3]), .S(n73), .Z(n71) );
  GTECH_OA21 U48 ( .A(n74), .B(n48), .C(n75), .Z(n51) );
  GTECH_AND2 U49 ( .A(n40), .B(n57), .Z(n75) );
  GTECH_OR_NOT U50 ( .A(n76), .B(n77), .Z(n40) );
  GTECH_OR_NOT U51 ( .A(n78), .B(n24), .Z(n48) );
  GTECH_OAI21 U52 ( .A(n79), .B(n12), .C(n80), .Z(MAR_Load) );
  GTECH_NOT U53 ( .A(Bus2_Sel[0]), .Z(n80) );
  GTECH_NAND2 U54 ( .A(n81), .B(n63), .Z(Bus2_Sel[1]) );
  GTECH_OA21 U55 ( .A(n74), .B(n12), .C(n82), .Z(n63) );
  GTECH_AOI21 U56 ( .A(n83), .B(n10), .C(IR_Load), .Z(n82) );
  GTECH_NOT U57 ( .A(n52), .Z(IR_Load) );
  GTECH_OR_NOT U58 ( .A(n78), .B(n61), .Z(n52) );
  GTECH_OR3 U59 ( .A(n78), .B(n103), .C(n77), .Z(n12) );
  GTECH_NOT U60 ( .A(n47), .Z(n74) );
  GTECH_OR_NOT U61 ( .A(n60), .B(n79), .Z(n47) );
  GTECH_AND_NOT U62 ( .A(n84), .B(n83), .Z(n79) );
  GTECH_OR2 U63 ( .A(n9), .B(n17), .Z(n83) );
  GTECH_AND3 U64 ( .A(IR[0]), .B(n18), .C(n85), .Z(n17) );
  GTECH_AND2 U65 ( .A(n8), .B(IR[0]), .Z(n9) );
  GTECH_NAND4 U66 ( .A(n24), .B(n86), .C(n19), .D(n20), .Z(n81) );
  GTECH_AO21 U67 ( .A(n16), .B(n38), .C(n27), .Z(n86) );
  GTECH_AND2 U68 ( .A(n72), .B(n38), .Z(n27) );
  GTECH_NOT U69 ( .A(n87), .Z(n38) );
  GTECH_OR3 U70 ( .A(IR[6]), .B(IR[7]), .C(n88), .Z(n87) );
  GTECH_AND_NOT U71 ( .A(n85), .B(IR[0]), .Z(n16) );
  GTECH_OAI21 U72 ( .A(n39), .B(n57), .C(n89), .Z(Bus2_Sel[0]) );
  GTECH_AND2 U73 ( .A(n56), .B(n90), .Z(n89) );
  GTECH_NAND3 U74 ( .A(n68), .B(IR[5]), .C(n54), .Z(n90) );
  GTECH_NOR3 U75 ( .A(n20), .B(n106), .C(n55), .Z(n54) );
  GTECH_NOT U76 ( .A(n24), .Z(n55) );
  GTECH_AND2 U77 ( .A(n103), .B(n77), .Z(n24) );
  GTECH_NOR3 U78 ( .A(IR[6]), .B(IR[7]), .C(n91), .Z(n68) );
  GTECH_AOI21 U79 ( .A(n11), .B(n46), .C(n72), .Z(n91) );
  GTECH_NAND3 U80 ( .A(n61), .B(n106), .C(n105), .Z(n56) );
  GTECH_OR2 U81 ( .A(n76), .B(n77), .Z(n57) );
  GTECH_OR3 U82 ( .A(n19), .B(n103), .C(n20), .Z(n76) );
  GTECH_NOR2 U83 ( .A(n67), .B(n60), .Z(n39) );
  GTECH_AO21 U84 ( .A(n18), .B(n85), .C(n8), .Z(n60) );
  GTECH_AND4 U85 ( .A(n72), .B(IR[2]), .C(IR[1]), .D(n18), .Z(n8) );
  GTECH_NOT U86 ( .A(n92), .Z(n18) );
  GTECH_AO22 U87 ( .A(IR[0]), .B(write), .C(CCR_Load), .D(n14), .Z(Bus1_Sel[1]) );
  GTECH_AND_NOT U88 ( .A(IR[0]), .B(n93), .Z(n14) );
  GTECH_AO22 U89 ( .A(n6), .B(CCR_Load), .C(n11), .D(write), .Z(Bus1_Sel[0])
         );
  GTECH_AND2 U90 ( .A(n10), .B(n67), .Z(write) );
  GTECH_NOT U91 ( .A(n84), .Z(n67) );
  GTECH_OR5 U92 ( .A(n92), .B(IR[3]), .C(n34), .D(n70), .E(n30), .Z(n84) );
  GTECH_OR3 U93 ( .A(IR[5]), .B(IR[6]), .C(n94), .Z(n92) );
  GTECH_NOR3 U94 ( .A(n104), .B(n103), .C(n78), .Z(n10) );
  GTECH_NAND2 U95 ( .A(n20), .B(n106), .Z(n78) );
  GTECH_NOT U96 ( .A(n105), .Z(n20) );
  GTECH_NOT U97 ( .A(IR[0]), .Z(n11) );
  GTECH_OAI21 U98 ( .A(IR[2]), .B(n95), .C(n96), .Z(n6) );
  GTECH_AND_NOT U99 ( .A(n97), .B(n98), .Z(n96) );
  GTECH_AO21 U100 ( .A(n95), .B(n99), .C(IR[0]), .Z(n97) );
  GTECH_NOR2 U101 ( .A(n100), .B(n93), .Z(ALU_Sel[2]) );
  GTECH_OA21 U102 ( .A(n30), .B(n95), .C(n99), .Z(n93) );
  GTECH_NOT U103 ( .A(IR[2]), .Z(n30) );
  GTECH_OAI21 U104 ( .A(n100), .B(n99), .C(n101), .Z(ALU_Sel[0]) );
  GTECH_OAI21 U105 ( .A(n102), .B(ALU_Sel[1]), .C(IR[0]), .Z(n101) );
  GTECH_AND_NOT U106 ( .A(n98), .B(n100), .Z(ALU_Sel[1]) );
  GTECH_AND4 U107 ( .A(n69), .B(n72), .C(IR[2]), .D(n34), .Z(n98) );
  GTECH_NOR3 U108 ( .A(n95), .B(IR[2]), .C(n100), .Z(n102) );
  GTECH_NAND3 U109 ( .A(n72), .B(IR[1]), .C(n69), .Z(n95) );
  GTECH_NOR2 U110 ( .A(IR[4]), .B(IR[3]), .Z(n72) );
  GTECH_NAND2 U111 ( .A(n85), .B(n69), .Z(n99) );
  GTECH_AND3 U112 ( .A(n88), .B(n94), .C(IR[6]), .Z(n69) );
  GTECH_NOT U113 ( .A(IR[7]), .Z(n94) );
  GTECH_NOT U114 ( .A(IR[5]), .Z(n88) );
  GTECH_AND2 U115 ( .A(IR[3]), .B(n46), .Z(n85) );
  GTECH_AND_NOT U116 ( .A(n70), .B(n73), .Z(n46) );
  GTECH_OR_NOT U117 ( .A(IR[2]), .B(n34), .Z(n73) );
  GTECH_NOT U118 ( .A(IR[1]), .Z(n34) );
  GTECH_NOT U119 ( .A(IR[4]), .Z(n70) );
  GTECH_NOT U120 ( .A(CCR_Load), .Z(n100) );
  GTECH_AND3 U121 ( .A(n61), .B(n19), .C(n105), .Z(CCR_Load) );
  GTECH_NOT U122 ( .A(n106), .Z(n19) );
  GTECH_AND_NOT U123 ( .A(n103), .B(n77), .Z(n61) );
  GTECH_NOT U124 ( .A(n104), .Z(n77) );
endmodule


module ALU_DW01_inc_0_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  GTECH_ADD_AB U1_1_1 ( .A(A[1]), .B(A[0]), .COUT(carry[2]), .S(SUM[1]) );
  GTECH_ADD_AB U1_1_2 ( .A(A[2]), .B(carry[2]), .COUT(carry[3]), .S(SUM[2]) );
  GTECH_ADD_AB U1_1_3 ( .A(A[3]), .B(carry[3]), .COUT(carry[4]), .S(SUM[3]) );
  GTECH_ADD_AB U1_1_4 ( .A(A[4]), .B(carry[4]), .COUT(carry[5]), .S(SUM[4]) );
  GTECH_ADD_AB U1_1_5 ( .A(A[5]), .B(carry[5]), .COUT(carry[6]), .S(SUM[5]) );
  GTECH_ADD_AB U1_1_6 ( .A(A[6]), .B(carry[6]), .COUT(carry[7]), .S(SUM[6]) );
  GTECH_NOT U1 ( .A(A[0]), .Z(SUM[0]) );
  GTECH_XOR2 U2 ( .A(carry[7]), .B(A[7]), .Z(SUM[7]) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [8:1] carry;

  GTECH_ADD_ABC U2_0 ( .A(A[0]), .B(n2), .C(n10), .COUT(carry[1]), .S(DIFF[0])
         );
  GTECH_ADD_ABC U2_1 ( .A(A[1]), .B(n3), .C(carry[1]), .COUT(carry[2]), .S(
        DIFF[1]) );
  GTECH_ADD_ABC U2_2 ( .A(A[2]), .B(n4), .C(carry[2]), .COUT(carry[3]), .S(
        DIFF[2]) );
  GTECH_ADD_ABC U2_3 ( .A(A[3]), .B(n5), .C(carry[3]), .COUT(carry[4]), .S(
        DIFF[3]) );
  GTECH_ADD_ABC U2_4 ( .A(A[4]), .B(n6), .C(carry[4]), .COUT(carry[5]), .S(
        DIFF[4]) );
  GTECH_ADD_ABC U2_5 ( .A(A[5]), .B(n7), .C(carry[5]), .COUT(carry[6]), .S(
        DIFF[5]) );
  GTECH_ADD_ABC U2_6 ( .A(A[6]), .B(n8), .C(carry[6]), .COUT(carry[7]), .S(
        DIFF[6]) );
  GTECH_ADD_ABC U2_7 ( .A(A[7]), .B(n9), .C(carry[7]), .COUT(carry[8]), .S(
        DIFF[7]) );
  GTECH_ONE U1 ( .Z(n10) );
  GTECH_NOT U2 ( .A(carry[8]), .Z(DIFF[8]) );
  GTECH_NOT U3 ( .A(B[0]), .Z(n2) );
  GTECH_NOT U4 ( .A(B[1]), .Z(n3) );
  GTECH_NOT U5 ( .A(B[2]), .Z(n4) );
  GTECH_NOT U6 ( .A(B[3]), .Z(n5) );
  GTECH_NOT U7 ( .A(B[4]), .Z(n6) );
  GTECH_NOT U8 ( .A(B[5]), .Z(n7) );
  GTECH_NOT U9 ( .A(B[6]), .Z(n8) );
  GTECH_NOT U10 ( .A(B[7]), .Z(n9) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  GTECH_ADD_ABC U1_0 ( .A(A[0]), .B(B[0]), .C(n1), .COUT(carry[1]), .S(SUM[0])
         );
  GTECH_ADD_ABC U1_1 ( .A(A[1]), .B(B[1]), .C(carry[1]), .COUT(carry[2]), .S(
        SUM[1]) );
  GTECH_ADD_ABC U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .COUT(carry[3]), .S(
        SUM[2]) );
  GTECH_ADD_ABC U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .COUT(carry[4]), .S(
        SUM[3]) );
  GTECH_ADD_ABC U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .COUT(carry[5]), .S(
        SUM[4]) );
  GTECH_ADD_ABC U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .COUT(carry[6]), .S(
        SUM[5]) );
  GTECH_ADD_ABC U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .COUT(carry[7]), .S(
        SUM[6]) );
  GTECH_ADD_ABC U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .COUT(SUM[8]), .S(
        SUM[7]) );
  GTECH_ZERO U1 ( .Z(n1) );
endmodule


module ALU ( A, B, ALU_Sel, NZVC, Result );
  input [7:0] A;
  input [7:0] B;
  input [2:0] ALU_Sel;
  output [3:0] NZVC;
  output [7:0] Result;
  wire   N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N59, N60, N61, N62, N63, N64, N65, N66, n49, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61;
  assign Result[7] = NZVC[3];

  ALU_DW01_inc_0_DW01_inc_1 add_36 ( .A(A), .SUM({N66, N65, N64, N63, N62, N61, 
        N60, N59}) );
  ALU_DW01_sub_0 r83 ( .A({n49, B}), .B({n49, A}), .CI(n49), .DIFF({N42, N41, 
        N40, N39, N38, N37, N36, N35, N34}) );
  ALU_DW01_add_0 r82 ( .A({n49, A}), .B({n49, B}), .CI(n49), .SUM({N25, N33, 
        N32, N31, N30, N29, N28, N27, N26}) );
  GTECH_ZERO U3 ( .Z(n49) );
  GTECH_NOR8 U4 ( .A(Result[0]), .B(Result[1]), .C(Result[2]), .D(Result[3]), 
        .E(Result[4]), .F(Result[5]), .G(Result[6]), .H(NZVC[3]), .Z(NZVC[2])
         );
  GTECH_NAND2 U5 ( .A(n1), .B(n2), .Z(Result[6]) );
  GTECH_AOI222 U6 ( .A(N65), .B(n3), .C(B[6]), .D(n4), .E(N32), .F(n5), .Z(n2)
         );
  GTECH_AO21 U7 ( .A(n6), .B(A[6]), .C(n7), .Z(n4) );
  GTECH_AOI21 U8 ( .A(N40), .B(n8), .C(n9), .Z(n1) );
  GTECH_MUX2 U9 ( .A(n10), .B(n11), .S(A[6]), .Z(n9) );
  GTECH_NAND2 U10 ( .A(n12), .B(n13), .Z(Result[5]) );
  GTECH_AOI222 U11 ( .A(N39), .B(n8), .C(N31), .D(n5), .E(N64), .F(n3), .Z(n13) );
  GTECH_OA21 U12 ( .A(n14), .B(n15), .C(n16), .Z(n12) );
  GTECH_AOI21 U13 ( .A(B[5]), .B(n17), .C(n10), .Z(n16) );
  GTECH_AO21 U14 ( .A(n6), .B(A[5]), .C(n7), .Z(n17) );
  GTECH_NAND2 U15 ( .A(n18), .B(n19), .Z(Result[4]) );
  GTECH_AOI222 U16 ( .A(n20), .B(n21), .C(A[4]), .D(n22), .E(N30), .F(n5), .Z(
        n19) );
  GTECH_NAND2 U17 ( .A(n23), .B(n24), .Z(n22) );
  GTECH_AOI22 U18 ( .A(n6), .B(B[4]), .C(n21), .D(A[3]), .Z(n23) );
  GTECH_AOI222 U19 ( .A(N38), .B(n8), .C(N63), .D(n3), .E(B[4]), .F(n7), .Z(
        n18) );
  GTECH_NAND2 U20 ( .A(n25), .B(n26), .Z(Result[3]) );
  GTECH_AOI222 U21 ( .A(N62), .B(n3), .C(B[3]), .D(n27), .E(N29), .F(n5), .Z(
        n26) );
  GTECH_AO21 U22 ( .A(n6), .B(A[3]), .C(n7), .Z(n27) );
  GTECH_AOI21 U23 ( .A(N37), .B(n8), .C(n28), .Z(n25) );
  GTECH_MUXI2 U24 ( .A(n29), .B(n24), .S(A[3]), .Z(n28) );
  GTECH_AOI21 U25 ( .A(n30), .B(n21), .C(n7), .Z(n24) );
  GTECH_NAND2 U26 ( .A(n31), .B(n21), .Z(n29) );
  GTECH_NAND2 U27 ( .A(n32), .B(n33), .Z(Result[2]) );
  GTECH_AOI222 U28 ( .A(n21), .B(n31), .C(A[2]), .D(n34), .E(N28), .F(n5), .Z(
        n33) );
  GTECH_NAND2 U29 ( .A(n35), .B(n36), .Z(n34) );
  GTECH_AOI22 U30 ( .A(n6), .B(B[2]), .C(n21), .D(A[1]), .Z(n35) );
  GTECH_AOI222 U31 ( .A(N36), .B(n8), .C(N61), .D(n3), .E(B[2]), .F(n7), .Z(
        n32) );
  GTECH_NAND2 U32 ( .A(n37), .B(n38), .Z(Result[1]) );
  GTECH_AOI222 U33 ( .A(N60), .B(n3), .C(B[1]), .D(n39), .E(N27), .F(n5), .Z(
        n38) );
  GTECH_AO21 U34 ( .A(n6), .B(A[1]), .C(n7), .Z(n39) );
  GTECH_AOI21 U35 ( .A(N35), .B(n8), .C(n40), .Z(n37) );
  GTECH_MUXI2 U36 ( .A(n41), .B(n36), .S(A[1]), .Z(n40) );
  GTECH_AOI21 U37 ( .A(n21), .B(A[0]), .C(n7), .Z(n36) );
  GTECH_OR2 U38 ( .A(A[0]), .B(n42), .Z(n41) );
  GTECH_NAND2 U39 ( .A(n43), .B(n44), .Z(Result[0]) );
  GTECH_AOI222 U40 ( .A(N59), .B(n3), .C(B[0]), .D(n45), .E(N26), .F(n5), .Z(
        n44) );
  GTECH_AO21 U41 ( .A(n6), .B(A[0]), .C(n7), .Z(n45) );
  GTECH_AOI21 U42 ( .A(N34), .B(n8), .C(n46), .Z(n43) );
  GTECH_MUX2 U43 ( .A(n21), .B(n7), .S(A[0]), .Z(n46) );
  GTECH_MUXI2 U44 ( .A(n47), .B(n48), .S(A[7]), .Z(NZVC[1]) );
  GTECH_OR_NOT U45 ( .A(NZVC[3]), .B(n50), .Z(n48) );
  GTECH_MUX2 U46 ( .A(n8), .B(n51), .S(B[7]), .Z(n50) );
  GTECH_NAND2 U47 ( .A(n52), .B(NZVC[3]), .Z(n47) );
  GTECH_NAND2 U48 ( .A(n53), .B(n54), .Z(NZVC[3]) );
  GTECH_AOI21 U49 ( .A(N41), .B(n8), .C(n55), .Z(n54) );
  GTECH_MUXI2 U50 ( .A(n56), .B(n57), .S(A[7]), .Z(n55) );
  GTECH_AND_NOT U51 ( .A(n58), .B(n11), .Z(n57) );
  GTECH_OAI21 U52 ( .A(n42), .B(n15), .C(n14), .Z(n11) );
  GTECH_AOI21 U53 ( .A(n59), .B(n21), .C(n7), .Z(n14) );
  GTECH_NOT U54 ( .A(A[5]), .Z(n15) );
  GTECH_AOI22 U55 ( .A(n6), .B(B[7]), .C(n21), .D(A[6]), .Z(n58) );
  GTECH_NOT U56 ( .A(n42), .Z(n21) );
  GTECH_OR_NOT U57 ( .A(A[6]), .B(n10), .Z(n56) );
  GTECH_NOR3 U58 ( .A(n42), .B(A[5]), .C(n59), .Z(n10) );
  GTECH_NOT U59 ( .A(n20), .Z(n59) );
  GTECH_NOR3 U60 ( .A(A[3]), .B(A[4]), .C(n30), .Z(n20) );
  GTECH_NOT U61 ( .A(n31), .Z(n30) );
  GTECH_NOR3 U62 ( .A(A[1]), .B(A[2]), .C(A[0]), .Z(n31) );
  GTECH_NAND3 U63 ( .A(ALU_Sel[2]), .B(n60), .C(ALU_Sel[0]), .Z(n42) );
  GTECH_AOI222 U64 ( .A(B[7]), .B(n7), .C(N33), .D(n5), .E(N66), .F(n3), .Z(
        n53) );
  GTECH_AND3 U65 ( .A(n61), .B(n60), .C(ALU_Sel[2]), .Z(n3) );
  GTECH_AO21 U66 ( .A(ALU_Sel[1]), .B(ALU_Sel[2]), .C(n51), .Z(n5) );
  GTECH_AND2 U67 ( .A(n6), .B(ALU_Sel[0]), .Z(n7) );
  GTECH_NOR2 U68 ( .A(n60), .B(ALU_Sel[2]), .Z(n6) );
  GTECH_NOT U69 ( .A(ALU_Sel[1]), .Z(n60) );
  GTECH_MUX2 U70 ( .A(n51), .B(n8), .S(B[7]), .Z(n52) );
  GTECH_AO22 U71 ( .A(N25), .B(n51), .C(N42), .D(n8), .Z(NZVC[0]) );
  GTECH_NOR3 U72 ( .A(ALU_Sel[1]), .B(ALU_Sel[2]), .C(n61), .Z(n8) );
  GTECH_NOT U73 ( .A(ALU_Sel[0]), .Z(n61) );
  GTECH_NOR3 U74 ( .A(ALU_Sel[1]), .B(ALU_Sel[2]), .C(ALU_Sel[0]), .Z(n51) );
endmodule


module data_path_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  GTECH_ADD_AB U1_1_1 ( .A(A[1]), .B(A[0]), .COUT(carry[2]), .S(SUM[1]) );
  GTECH_ADD_AB U1_1_2 ( .A(A[2]), .B(carry[2]), .COUT(carry[3]), .S(SUM[2]) );
  GTECH_ADD_AB U1_1_3 ( .A(A[3]), .B(carry[3]), .COUT(carry[4]), .S(SUM[3]) );
  GTECH_ADD_AB U1_1_4 ( .A(A[4]), .B(carry[4]), .COUT(carry[5]), .S(SUM[4]) );
  GTECH_ADD_AB U1_1_5 ( .A(A[5]), .B(carry[5]), .COUT(carry[6]), .S(SUM[5]) );
  GTECH_ADD_AB U1_1_6 ( .A(A[6]), .B(carry[6]), .COUT(carry[7]), .S(SUM[6]) );
  GTECH_NOT U1 ( .A(A[0]), .Z(SUM[0]) );
  GTECH_XOR2 U2 ( .A(carry[7]), .B(A[7]), .Z(SUM[7]) );
endmodule


module data_path ( clock, reset, IR_Load, IR, MAR_Load, address, PC_Load, 
        PC_Inc, A_Load, B_Load, ALU_Sel, CCR_Result, CCR_Load, Bus2_Sel, 
        Bus1_Sel, from_memory, to_memory );
  output [7:0] IR;
  output [7:0] address;
  input [2:0] ALU_Sel;
  output [3:0] CCR_Result;
  input [1:0] Bus2_Sel;
  input [1:0] Bus1_Sel;
  input [7:0] from_memory;
  output [7:0] to_memory;
  input clock, reset, IR_Load, MAR_Load, PC_Load, PC_Inc, A_Load, B_Load,
         CCR_Load;
  wire   N17, N18, N19, N20, N21, N22, N23, N24, n95, n96, n97, n99, n100,
         n101, n102, n104, n105, n106, n107, n109, n110, n111, n112, n114,
         n115, n116, n117, n119, n120, n121, n122, n124, n125, n126, n127,
         n129, n130, n131, n132, n134, n135, n136, n137, n138, n139, n140,
         n141, n143, n144, n145, n147, n148, n149, n151, n152, n153, n155,
         n156, n157, n159, n160, n161, n163, n164, n165, n167, n168, n169,
         n171, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n98, n103, n108,
         n113, n118, n123, n128, n133, n142, n146, n150, n154, n158, n162,
         n166, n170, n172, n173, n174, n175, n176, n177, n178,
         SYNOPSYS_UNCONNECTED_1;
  wire   [7:0] PC;
  wire   [7:0] B_Reg;
  wire   [3:0] CCR_in;
  wire   [6:0] ALU_Result;

  GTECH_FD2 B_Reg_reg_0_ ( .D(n171), .CP(n3), .CD(n1), .Q(B_Reg[0]), .QN(n135)
         );
  GTECH_FD2 A_Reg_reg_0_ ( .D(n178), .CP(n3), .CD(n1), .Q(n128) );
  GTECH_FD2 MAR_reg_0_ ( .D(n169), .CP(n3), .CD(n1), .Q(address[0]), .QN(n132)
         );
  GTECH_FD2 IR_Reg_reg_0_ ( .D(n168), .CP(n3), .CD(n1), .Q(IR[0]), .QN(n131)
         );
  GTECH_FD2 PC_reg_7_ ( .D(n133), .CP(n3), .CD(n1), .Q(PC[7]), .QN(n99) );
  GTECH_FD2 PC_reg_0_ ( .D(n177), .CP(n3), .CD(n1), .Q(PC[0]), .QN(n134) );
  GTECH_FD2 PC_reg_1_ ( .D(n175), .CP(n3), .CD(n1), .Q(PC[1]), .QN(n129) );
  GTECH_FD2 B_Reg_reg_1_ ( .D(n167), .CP(n3), .CD(n1), .Q(B_Reg[1]), .QN(n130)
         );
  GTECH_FD2 A_Reg_reg_1_ ( .D(n176), .CP(n3), .CD(n1), .Q(n123) );
  GTECH_FD2 MAR_reg_1_ ( .D(n165), .CP(n3), .CD(n1), .Q(address[1]), .QN(n127)
         );
  GTECH_FD2 IR_Reg_reg_1_ ( .D(n164), .CP(n3), .CD(n1), .Q(IR[1]), .QN(n126)
         );
  GTECH_FD2 PC_reg_2_ ( .D(n173), .CP(n3), .CD(n1), .Q(PC[2]), .QN(n124) );
  GTECH_FD2 B_Reg_reg_2_ ( .D(n163), .CP(n3), .CD(n1), .Q(B_Reg[2]), .QN(n125)
         );
  GTECH_FD2 A_Reg_reg_2_ ( .D(n174), .CP(n3), .CD(n1), .Q(n118) );
  GTECH_FD2 MAR_reg_2_ ( .D(n161), .CP(n3), .CD(n1), .Q(address[2]), .QN(n122)
         );
  GTECH_FD2 IR_Reg_reg_2_ ( .D(n160), .CP(n3), .CD(n1), .Q(IR[2]), .QN(n121)
         );
  GTECH_FD2 PC_reg_3_ ( .D(n170), .CP(n3), .CD(n1), .Q(PC[3]), .QN(n119) );
  GTECH_FD2 B_Reg_reg_3_ ( .D(n159), .CP(n3), .CD(n1), .Q(B_Reg[3]), .QN(n120)
         );
  GTECH_FD2 A_Reg_reg_3_ ( .D(n172), .CP(n3), .CD(n1), .Q(n113) );
  GTECH_FD2 MAR_reg_3_ ( .D(n157), .CP(n3), .CD(n1), .Q(address[3]), .QN(n117)
         );
  GTECH_FD2 IR_Reg_reg_3_ ( .D(n156), .CP(n3), .CD(n1), .Q(IR[3]), .QN(n116)
         );
  GTECH_FD2 PC_reg_4_ ( .D(n162), .CP(n3), .CD(n1), .Q(PC[4]), .QN(n114) );
  GTECH_FD2 B_Reg_reg_4_ ( .D(n155), .CP(n3), .CD(n1), .Q(B_Reg[4]), .QN(n115)
         );
  GTECH_FD2 A_Reg_reg_4_ ( .D(n166), .CP(n3), .CD(n1), .Q(n108) );
  GTECH_FD2 MAR_reg_4_ ( .D(n153), .CP(n3), .CD(n1), .Q(address[4]), .QN(n112)
         );
  GTECH_FD2 IR_Reg_reg_4_ ( .D(n152), .CP(n3), .CD(n1), .Q(IR[4]), .QN(n111)
         );
  GTECH_FD2 PC_reg_5_ ( .D(n154), .CP(n3), .CD(n1), .Q(PC[5]), .QN(n109) );
  GTECH_FD2 B_Reg_reg_5_ ( .D(n151), .CP(n3), .CD(n1), .Q(B_Reg[5]), .QN(n110)
         );
  GTECH_FD2 A_Reg_reg_5_ ( .D(n158), .CP(n3), .CD(n1), .Q(n103) );
  GTECH_FD2 MAR_reg_5_ ( .D(n149), .CP(n3), .CD(n1), .Q(address[5]), .QN(n107)
         );
  GTECH_FD2 IR_Reg_reg_5_ ( .D(n148), .CP(n3), .CD(n1), .Q(IR[5]), .QN(n106)
         );
  GTECH_FD2 PC_reg_6_ ( .D(n146), .CP(n3), .CD(n1), .Q(PC[6]), .QN(n104) );
  GTECH_FD2 B_Reg_reg_6_ ( .D(n147), .CP(n3), .CD(n1), .Q(B_Reg[6]), .QN(n105)
         );
  GTECH_FD2 A_Reg_reg_6_ ( .D(n150), .CP(n3), .CD(n1), .Q(n98) );
  GTECH_FD2 MAR_reg_6_ ( .D(n145), .CP(n3), .CD(n1), .Q(address[6]), .QN(n102)
         );
  GTECH_FD2 IR_Reg_reg_6_ ( .D(n144), .CP(n3), .CD(n1), .Q(IR[6]), .QN(n101)
         );
  GTECH_FD2 B_Reg_reg_7_ ( .D(n143), .CP(n3), .CD(n1), .Q(B_Reg[7]), .QN(n100)
         );
  GTECH_FD2 A_Reg_reg_7_ ( .D(n142), .CP(n3), .CD(n1), .Q(n94) );
  GTECH_FD2 MAR_reg_7_ ( .D(n141), .CP(n3), .CD(n1), .Q(address[7]), .QN(n97)
         );
  GTECH_FD2 IR_Reg_reg_7_ ( .D(n140), .CP(n3), .CD(n1), .Q(IR[7]), .QN(n96) );
  GTECH_FD2 CCR_reg_3_ ( .D(n139), .CP(n3), .CD(n1), .Q(CCR_Result[3]), .QN(
        n95) );
  GTECH_FD2 CCR_reg_2_ ( .D(n138), .CP(n3), .CD(n1), .Q(CCR_Result[2]) );
  GTECH_FD2 CCR_reg_1_ ( .D(n137), .CP(n3), .CD(n1), .Q(CCR_Result[1]) );
  GTECH_FD2 CCR_reg_0_ ( .D(n136), .CP(n3), .CD(n1), .Q(CCR_Result[0]) );
  ALU ALU_unit ( .A(B_Reg), .B(to_memory), .ALU_Sel(ALU_Sel), .NZVC(CCR_in), 
        .Result({SYNOPSYS_UNCONNECTED_1, ALU_Result}) );
  data_path_DW01_inc_0 add_79 ( .A(PC), .SUM({N24, N23, N22, N21, N20, N19, 
        N18, N17}) );
  GTECH_NOT U3 ( .A(n2), .Z(n1) );
  GTECH_NOT U4 ( .A(reset), .Z(n2) );
  GTECH_NOT U5 ( .A(n4), .Z(n3) );
  GTECH_NOT U6 ( .A(clock), .Z(n4) );
  GTECH_NOT U7 ( .A(n5), .Z(n133) );
  GTECH_AOI222 U8 ( .A(PC_Load), .B(n6), .C(N24), .D(n7), .E(n8), .F(n9), .Z(
        n5) );
  GTECH_NOT U9 ( .A(n10), .Z(n6) );
  GTECH_NOT U10 ( .A(n11), .Z(n142) );
  GTECH_AOI222 U11 ( .A(A_Load), .B(n12), .C(n13), .D(n14), .E(n94), .F(n15), 
        .Z(n11) );
  GTECH_NOT U12 ( .A(n16), .Z(n146) );
  GTECH_AOI222 U13 ( .A(PC_Load), .B(n17), .C(N23), .D(n7), .E(n8), .F(n18), 
        .Z(n16) );
  GTECH_NOT U14 ( .A(n19), .Z(n17) );
  GTECH_NOT U15 ( .A(n20), .Z(n150) );
  GTECH_AOI222 U16 ( .A(A_Load), .B(n21), .C(n13), .D(n22), .E(n98), .F(n15), 
        .Z(n20) );
  GTECH_NOT U17 ( .A(n23), .Z(n154) );
  GTECH_AOI222 U18 ( .A(PC_Load), .B(n24), .C(N22), .D(n7), .E(n8), .F(n25), 
        .Z(n23) );
  GTECH_NOT U19 ( .A(n26), .Z(n24) );
  GTECH_NOT U20 ( .A(n27), .Z(n158) );
  GTECH_AOI222 U21 ( .A(A_Load), .B(n28), .C(n13), .D(n29), .E(n103), .F(n15), 
        .Z(n27) );
  GTECH_NOT U22 ( .A(n30), .Z(n162) );
  GTECH_AOI222 U23 ( .A(PC_Load), .B(n31), .C(N21), .D(n7), .E(n8), .F(n32), 
        .Z(n30) );
  GTECH_NOT U24 ( .A(n33), .Z(n31) );
  GTECH_NOT U25 ( .A(n34), .Z(n166) );
  GTECH_AOI222 U26 ( .A(A_Load), .B(n35), .C(n13), .D(n36), .E(n108), .F(n15), 
        .Z(n34) );
  GTECH_NOT U27 ( .A(n37), .Z(n170) );
  GTECH_AOI222 U28 ( .A(PC_Load), .B(n38), .C(N20), .D(n7), .E(n8), .F(n39), 
        .Z(n37) );
  GTECH_NOT U29 ( .A(n40), .Z(n38) );
  GTECH_NOT U30 ( .A(n41), .Z(n172) );
  GTECH_AOI222 U31 ( .A(A_Load), .B(n42), .C(n13), .D(n43), .E(n113), .F(n15), 
        .Z(n41) );
  GTECH_NOT U32 ( .A(n44), .Z(n173) );
  GTECH_AOI222 U33 ( .A(PC_Load), .B(n45), .C(N19), .D(n7), .E(n8), .F(n46), 
        .Z(n44) );
  GTECH_NOT U34 ( .A(n47), .Z(n45) );
  GTECH_NOT U35 ( .A(n48), .Z(n174) );
  GTECH_AOI222 U36 ( .A(A_Load), .B(n49), .C(n13), .D(n50), .E(n118), .F(n15), 
        .Z(n48) );
  GTECH_NOT U37 ( .A(n51), .Z(n175) );
  GTECH_AOI222 U38 ( .A(PC_Load), .B(n52), .C(N18), .D(n7), .E(n8), .F(n53), 
        .Z(n51) );
  GTECH_NOT U39 ( .A(n54), .Z(n52) );
  GTECH_NOT U40 ( .A(n55), .Z(n176) );
  GTECH_AOI222 U41 ( .A(A_Load), .B(n56), .C(n13), .D(n57), .E(n123), .F(n15), 
        .Z(n55) );
  GTECH_NOT U42 ( .A(n58), .Z(n177) );
  GTECH_AOI222 U43 ( .A(PC_Load), .B(n59), .C(N17), .D(n7), .E(n8), .F(n60), 
        .Z(n58) );
  GTECH_NOR2 U44 ( .A(PC_Load), .B(n8), .Z(n7) );
  GTECH_NOR2 U45 ( .A(PC_Inc), .B(PC_Load), .Z(n8) );
  GTECH_NOT U46 ( .A(n61), .Z(n59) );
  GTECH_NOT U47 ( .A(n62), .Z(n178) );
  GTECH_AOI222 U48 ( .A(A_Load), .B(n63), .C(n13), .D(n64), .E(n128), .F(n15), 
        .Z(n62) );
  GTECH_OAI21 U49 ( .A(n65), .B(n66), .C(A_Load), .Z(n15) );
  GTECH_NOT U50 ( .A(n67), .Z(n65) );
  GTECH_AND2 U51 ( .A(A_Load), .B(n68), .Z(n13) );
  GTECH_NAND2 U52 ( .A(n69), .B(n70), .Z(n171) );
  GTECH_AOI22 U53 ( .A(n128), .B(n71), .C(n63), .D(B_Load), .Z(n70) );
  GTECH_OA22 U54 ( .A(n135), .B(n72), .C(n134), .D(n73), .Z(n69) );
  GTECH_MUXI2 U55 ( .A(n132), .B(n61), .S(MAR_Load), .Z(n169) );
  GTECH_MUXI2 U56 ( .A(n131), .B(n61), .S(IR_Load), .Z(n168) );
  GTECH_AOI21 U57 ( .A(to_memory[0]), .B(n68), .C(n63), .Z(n61) );
  GTECH_AO22 U58 ( .A(ALU_Result[0]), .B(n74), .C(from_memory[0]), .D(n75), 
        .Z(n63) );
  GTECH_AO21 U59 ( .A(n67), .B(n128), .C(n64), .Z(to_memory[0]) );
  GTECH_OAI2N2 U60 ( .A(n135), .B(n76), .C(n60), .D(n77), .Z(n64) );
  GTECH_NOT U61 ( .A(n134), .Z(n60) );
  GTECH_NAND2 U62 ( .A(n78), .B(n79), .Z(n167) );
  GTECH_AOI22 U63 ( .A(n123), .B(n71), .C(n56), .D(B_Load), .Z(n79) );
  GTECH_OA22 U64 ( .A(n129), .B(n73), .C(n130), .D(n72), .Z(n78) );
  GTECH_MUXI2 U65 ( .A(n127), .B(n54), .S(MAR_Load), .Z(n165) );
  GTECH_MUXI2 U66 ( .A(n126), .B(n54), .S(IR_Load), .Z(n164) );
  GTECH_AOI21 U67 ( .A(to_memory[1]), .B(n68), .C(n56), .Z(n54) );
  GTECH_AO22 U68 ( .A(ALU_Result[1]), .B(n74), .C(from_memory[1]), .D(n75), 
        .Z(n56) );
  GTECH_AO21 U69 ( .A(n67), .B(n123), .C(n57), .Z(to_memory[1]) );
  GTECH_OAI2N2 U70 ( .A(n130), .B(n76), .C(n53), .D(n77), .Z(n57) );
  GTECH_NOT U71 ( .A(n129), .Z(n53) );
  GTECH_NAND2 U72 ( .A(n80), .B(n81), .Z(n163) );
  GTECH_AOI22 U73 ( .A(n118), .B(n71), .C(n49), .D(B_Load), .Z(n81) );
  GTECH_OA22 U74 ( .A(n124), .B(n73), .C(n125), .D(n72), .Z(n80) );
  GTECH_MUXI2 U75 ( .A(n122), .B(n47), .S(MAR_Load), .Z(n161) );
  GTECH_MUXI2 U76 ( .A(n121), .B(n47), .S(IR_Load), .Z(n160) );
  GTECH_AOI21 U77 ( .A(to_memory[2]), .B(n68), .C(n49), .Z(n47) );
  GTECH_AO22 U78 ( .A(ALU_Result[2]), .B(n74), .C(from_memory[2]), .D(n75), 
        .Z(n49) );
  GTECH_AO21 U79 ( .A(n67), .B(n118), .C(n50), .Z(to_memory[2]) );
  GTECH_OAI2N2 U80 ( .A(n125), .B(n76), .C(n46), .D(n77), .Z(n50) );
  GTECH_NOT U81 ( .A(n124), .Z(n46) );
  GTECH_NAND2 U82 ( .A(n82), .B(n83), .Z(n159) );
  GTECH_AOI22 U83 ( .A(n113), .B(n71), .C(n42), .D(B_Load), .Z(n83) );
  GTECH_OA22 U84 ( .A(n119), .B(n73), .C(n120), .D(n72), .Z(n82) );
  GTECH_MUXI2 U85 ( .A(n117), .B(n40), .S(MAR_Load), .Z(n157) );
  GTECH_MUXI2 U86 ( .A(n116), .B(n40), .S(IR_Load), .Z(n156) );
  GTECH_AOI21 U87 ( .A(to_memory[3]), .B(n68), .C(n42), .Z(n40) );
  GTECH_AO22 U88 ( .A(ALU_Result[3]), .B(n74), .C(from_memory[3]), .D(n75), 
        .Z(n42) );
  GTECH_AO21 U89 ( .A(n67), .B(n113), .C(n43), .Z(to_memory[3]) );
  GTECH_OAI2N2 U90 ( .A(n120), .B(n76), .C(n39), .D(n77), .Z(n43) );
  GTECH_NOT U91 ( .A(n119), .Z(n39) );
  GTECH_NAND2 U92 ( .A(n84), .B(n85), .Z(n155) );
  GTECH_AOI22 U93 ( .A(n108), .B(n71), .C(n35), .D(B_Load), .Z(n85) );
  GTECH_OA22 U94 ( .A(n114), .B(n73), .C(n115), .D(n72), .Z(n84) );
  GTECH_MUXI2 U95 ( .A(n112), .B(n33), .S(MAR_Load), .Z(n153) );
  GTECH_MUXI2 U96 ( .A(n111), .B(n33), .S(IR_Load), .Z(n152) );
  GTECH_AOI21 U97 ( .A(to_memory[4]), .B(n68), .C(n35), .Z(n33) );
  GTECH_AO22 U98 ( .A(ALU_Result[4]), .B(n74), .C(from_memory[4]), .D(n75), 
        .Z(n35) );
  GTECH_AO21 U99 ( .A(n67), .B(n108), .C(n36), .Z(to_memory[4]) );
  GTECH_OAI2N2 U100 ( .A(n115), .B(n76), .C(n32), .D(n77), .Z(n36) );
  GTECH_NOT U101 ( .A(n114), .Z(n32) );
  GTECH_NAND2 U102 ( .A(n86), .B(n87), .Z(n151) );
  GTECH_AOI22 U103 ( .A(n103), .B(n71), .C(n28), .D(B_Load), .Z(n87) );
  GTECH_OA22 U104 ( .A(n109), .B(n73), .C(n110), .D(n72), .Z(n86) );
  GTECH_MUXI2 U105 ( .A(n107), .B(n26), .S(MAR_Load), .Z(n149) );
  GTECH_MUXI2 U106 ( .A(n106), .B(n26), .S(IR_Load), .Z(n148) );
  GTECH_AOI21 U107 ( .A(to_memory[5]), .B(n68), .C(n28), .Z(n26) );
  GTECH_AO22 U108 ( .A(ALU_Result[5]), .B(n74), .C(from_memory[5]), .D(n75), 
        .Z(n28) );
  GTECH_AO21 U109 ( .A(n67), .B(n103), .C(n29), .Z(to_memory[5]) );
  GTECH_OAI2N2 U110 ( .A(n110), .B(n76), .C(n25), .D(n77), .Z(n29) );
  GTECH_NOT U111 ( .A(n109), .Z(n25) );
  GTECH_NAND2 U112 ( .A(n88), .B(n89), .Z(n147) );
  GTECH_AOI22 U113 ( .A(n98), .B(n71), .C(n21), .D(B_Load), .Z(n89) );
  GTECH_OA22 U114 ( .A(n104), .B(n73), .C(n105), .D(n72), .Z(n88) );
  GTECH_MUXI2 U115 ( .A(n102), .B(n19), .S(MAR_Load), .Z(n145) );
  GTECH_MUXI2 U116 ( .A(n101), .B(n19), .S(IR_Load), .Z(n144) );
  GTECH_AOI21 U117 ( .A(to_memory[6]), .B(n68), .C(n21), .Z(n19) );
  GTECH_AO22 U118 ( .A(ALU_Result[6]), .B(n74), .C(from_memory[6]), .D(n75), 
        .Z(n21) );
  GTECH_AO21 U119 ( .A(n67), .B(n98), .C(n22), .Z(to_memory[6]) );
  GTECH_OAI2N2 U120 ( .A(n105), .B(n76), .C(n18), .D(n77), .Z(n22) );
  GTECH_NOT U121 ( .A(n104), .Z(n18) );
  GTECH_NAND2 U122 ( .A(n90), .B(n91), .Z(n143) );
  GTECH_AOI2N2 U123 ( .A(n94), .B(n71), .C(n99), .D(n73), .Z(n91) );
  GTECH_NAND3 U124 ( .A(n68), .B(n77), .C(B_Load), .Z(n73) );
  GTECH_AND3 U125 ( .A(n68), .B(n67), .C(B_Load), .Z(n71) );
  GTECH_AOI2N2 U126 ( .A(n12), .B(B_Load), .C(n100), .D(n72), .Z(n90) );
  GTECH_OA21 U127 ( .A(n76), .B(n66), .C(B_Load), .Z(n72) );
  GTECH_MUXI2 U128 ( .A(n97), .B(n10), .S(MAR_Load), .Z(n141) );
  GTECH_MUXI2 U129 ( .A(n96), .B(n10), .S(IR_Load), .Z(n140) );
  GTECH_AOI21 U130 ( .A(to_memory[7]), .B(n68), .C(n12), .Z(n10) );
  GTECH_AO22 U131 ( .A(n74), .B(CCR_in[3]), .C(from_memory[7]), .D(n75), .Z(
        n12) );
  GTECH_NOR2 U132 ( .A(Bus2_Sel[0]), .B(n74), .Z(n75) );
  GTECH_NOR2 U133 ( .A(Bus2_Sel[0]), .B(Bus2_Sel[1]), .Z(n74) );
  GTECH_NOT U134 ( .A(n66), .Z(n68) );
  GTECH_OR_NOT U135 ( .A(Bus2_Sel[1]), .B(Bus2_Sel[0]), .Z(n66) );
  GTECH_AO21 U136 ( .A(n67), .B(n94), .C(n14), .Z(to_memory[7]) );
  GTECH_OAI2N2 U137 ( .A(n100), .B(n76), .C(n9), .D(n77), .Z(n14) );
  GTECH_NOT U138 ( .A(n99), .Z(n9) );
  GTECH_OR2 U139 ( .A(n77), .B(Bus1_Sel[0]), .Z(n76) );
  GTECH_NOR2 U140 ( .A(Bus1_Sel[0]), .B(Bus1_Sel[1]), .Z(n77) );
  GTECH_AND_NOT U141 ( .A(Bus1_Sel[0]), .B(Bus1_Sel[1]), .Z(n67) );
  GTECH_MUX2 U142 ( .A(CCR_in[3]), .B(n92), .S(n93), .Z(n139) );
  GTECH_NOT U143 ( .A(n95), .Z(n92) );
  GTECH_MUX2 U144 ( .A(CCR_in[2]), .B(CCR_Result[2]), .S(n93), .Z(n138) );
  GTECH_MUX2 U145 ( .A(CCR_in[1]), .B(CCR_Result[1]), .S(n93), .Z(n137) );
  GTECH_NOT U146 ( .A(CCR_Load), .Z(n93) );
  GTECH_MUX2 U147 ( .A(CCR_Result[0]), .B(CCR_in[0]), .S(CCR_Load), .Z(n136)
         );
endmodule


module cpu ( clock, reset, address, from_memory, write, to_memory );
  output [7:0] address;
  input [7:0] from_memory;
  output [7:0] to_memory;
  input clock, reset;
  output write;
  wire   IR_Load, MAR_Load, PC_Load, PC_Inc, A_Load, B_Load, CCR_Load, n1, n2,
         n3, n4;
  wire   [7:0] IR;
  wire   [2:0] ALU_Sel;
  wire   [3:0] CCR_Result;
  wire   [1:0] Bus2_Sel;
  wire   [1:0] Bus1_Sel;

  control_unit control_unit_module ( .clock(n3), .reset(n1), .IR_Load(IR_Load), 
        .IR(IR), .MAR_Load(MAR_Load), .PC_Load(PC_Load), .PC_Inc(PC_Inc), 
        .A_Load(A_Load), .B_Load(B_Load), .ALU_Sel(ALU_Sel), .CCR_Result(
        CCR_Result), .CCR_Load(CCR_Load), .Bus2_Sel(Bus2_Sel), .Bus1_Sel(
        Bus1_Sel), .write(write) );
  data_path data_path_u ( .clock(n3), .reset(n1), .IR_Load(IR_Load), .IR(IR), 
        .MAR_Load(MAR_Load), .address(address), .PC_Load(PC_Load), .PC_Inc(
        PC_Inc), .A_Load(A_Load), .B_Load(B_Load), .ALU_Sel(ALU_Sel), 
        .CCR_Result(CCR_Result), .CCR_Load(CCR_Load), .Bus2_Sel(Bus2_Sel), 
        .Bus1_Sel(Bus1_Sel), .from_memory(from_memory), .to_memory(to_memory)
         );
  GTECH_NOT U1 ( .A(n2), .Z(n1) );
  GTECH_NOT U2 ( .A(reset), .Z(n2) );
  GTECH_NOT U3 ( .A(n4), .Z(n3) );
  GTECH_NOT U4 ( .A(clock), .Z(n4) );
endmodule


module rom_128x8_sync ( address, data_out, clock );
  input [6:0] address;
  output [7:0] data_out;
  input clock;

  assign data_out[0] = data_out[7];
  assign data_out[1] = data_out[7];
  assign data_out[2] = data_out[7];
  assign data_out[3] = data_out[7];
  assign data_out[4] = data_out[7];
  assign data_out[5] = data_out[7];
  assign data_out[6] = data_out[7];

  GTECH_ZERO U3 ( .Z(data_out[7]) );
endmodule


module rw_96x8_sync ( address, data_in, write, clock, data_out );
  input [6:0] address;
  input [7:0] data_in;
  output [7:0] data_out;
  input write, clock;
  wire   n2221, n2222, n2223, n2224, n2225, n2226, n2227, n2228, n2229, n2230,
         n2231, n2232, n2233, n2234, n2235, n2236, n2237, n2238, n2239, n2240,
         n2241, n2242, n2243, n2244, n2245, n2246, n2247, n2248, n2249, n2250,
         n2251, n2252, n2253, n2254, n2255, n2256, n2257, n2258, n2259, n2260,
         n2261, n2262, n2263, n2264, n2265, n2266, n2267, n2268, n2269, n2270,
         n2271, n2272, n2273, n2274, n2275, n2276, n2277, n2278, n2279, n2280,
         n2281, n2282, n2283, n2284, n2285, n2286, n2287, n2288, n2289, n2290,
         n2291, n2292, n2293, n2294, n2295, n2296, n2297, n2298, n2299, n2300,
         n2301, n2302, n2303, n2304, n2305, n2306, n2307, n2308, n2309, n2310,
         n2311, n2312, n2313, n2314, n2315, n2316, n2317, n2318, n2319, n2320,
         n2321, n2322, n2323, n2324, n2325, n2326, n2327, n2328, n2329, n2330,
         n2331, n2332, n2333, n2334, n2335, n2336, n2337, n2338, n2339, n2340,
         n2341, n2342, n2343, n2344, n2345, n2346, n2347, n2348, n2349, n2350,
         n2351, n2352, n2353, n2354, n2355, n2356, n2357, n2358, n2359, n2360,
         n2361, n2362, n2363, n2364, n2365, n2366, n2367, n2368, n2369, n2370,
         n2371, n2372, n2373, n2374, n2375, n2376, n2377, n2378, n2379, n2380,
         n2381, n2382, n2383, n2384, n2385, n2386, n2387, n2388, n2389, n2390,
         n2391, n2392, n2393, n2394, n2395, n2396, n2397, n2398, n2399, n2400,
         n2401, n2402, n2403, n2404, n2405, n2406, n2407, n2408, n2409, n2410,
         n2411, n2412, n2413, n2414, n2415, n2416, n2417, n2418, n2419, n2420,
         n2421, n2422, n2423, n2424, n2425, n2426, n2427, n2428, n2429, n2430,
         n2431, n2432, n2433, n2434, n2435, n2436, n2437, n2438, n2439, n2440,
         n2441, n2442, n2443, n2444, n2445, n2446, n2447, n2448, n2449, n2450,
         n2451, n2452, n2453, n2454, n2455, n2456, n2457, n2458, n2459, n2460,
         n2461, n2462, n2463, n2464, n2465, n2466, n2467, n2468, n2469, n2470,
         n2471, n2472, n2473, n2474, n2475, n2476, n2477, n2478, n2479, n2480,
         n2481, n2482, n2483, n2484, n2485, n2486, n2487, n2488, n2489, n2490,
         n2491, n2492, n2493, n2494, n2495, n2496, n2497, n2498, n2499, n2500,
         n2501, n2502, n2503, n2504, n2505, n2506, n2507, n2508, n2509, n2510,
         n2511, n2512, n2513, n2514, n2515, n2516, n2517, n2518, n2519, n2520,
         n2521, n2522, n2523, n2524, n2525, n2526, n2527, n2528, n2529, n2530,
         n2531, n2532, n2533, n2534, n2535, n2536, n2537, n2538, n2539, n2540,
         n2541, n2542, n2543, n2544, n2545, n2546, n2547, n2548, n2549, n2550,
         n2551, n2552, n2553, n2554, n2555, n2556, n2557, n2558, n2559, n2560,
         n2561, n2562, n2563, n2564, n2565, n2566, n2567, n2568, n2569, n2570,
         n2571, n2572, n2573, n2574, n2575, n2576, n2577, n2578, n2579, n2580,
         n2581, n2582, n2583, n2584, n2585, n2586, n2587, n2588, n2589, n2590,
         n2591, n2592, n2593, n2594, n2595, n2596, n2597, n2598, n2599, n2600,
         n2601, n2602, n2603, n2604, n2605, n2606, n2607, n2608, n2609, n2610,
         n2611, n2612, n2613, n2614, n2615, n2616, n2617, n2618, n2619, n2620,
         n2621, n2622, n2623, n2624, n2625, n2626, n2627, n2628, n2629, n2630,
         n2631, n2632, n2633, n2634, n2635, n2636, n2637, n2638, n2639, n2640,
         n2641, n2642, n2643, n2644, n2645, n2646, n2647, n2648, n2649, n2650,
         n2651, n2652, n2653, n2654, n2655, n2656, n2657, n2658, n2659, n2660,
         n2661, n2662, n2663, n2664, n2665, n2666, n2667, n2668, n2669, n2670,
         n2671, n2672, n2673, n2674, n2675, n2676, n2677, n2678, n2679, n2680,
         n2681, n2682, n2683, n2684, n2685, n2686, n2687, n2688, n2689, n2690,
         n2691, n2692, n2693, n2694, n2695, n2696, n2697, n2698, n2699, n2700,
         n2701, n2702, n2703, n2704, n2705, n2706, n2707, n2708, n2709, n2710,
         n2711, n2712, n2713, n2714, n2715, n2716, n2717, n2718, n2719, n2720,
         n2721, n2722, n2723, n2724, n2725, n2726, n2727, n2728, n2729, n2730,
         n2731, n2732, n2733, n2734, n2735, n2736, n2737, n2738, n2739, n2740,
         n2741, n2742, n2743, n2744, n2745, n2746, n2747, n2748, n2749, n2750,
         n2751, n2752, n2753, n2754, n2755, n2756, n2757, n2758, n2759, n2760,
         n2761, n2762, n2763, n2764, n2765, n2766, n2767, n2768, n2769, n2770,
         n2771, n2772, n2773, n2774, n2775, n2776, n2777, n2778, n2779, n2780,
         n2781, n2782, n2783, n2784, n2785, n2786, n2787, n2788, n2789, n2790,
         n2791, n2792, n2793, n2794, n2795, n2796, n2797, n2798, n2799, n2800,
         n2801, n2802, n2803, n2804, n2805, n2806, n2807, n2808, n2809, n2810,
         n2811, n2812, n2813, n2814, n2815, n2816, n2817, n2818, n2819, n2820,
         n2821, n2822, n2823, n2824, n2825, n2826, n2827, n2828, n2829, n2830,
         n2831, n2832, n2833, n2834, n2835, n2836, n2837, n2838, n2839, n2840,
         n2841, n2842, n2843, n2844, n2845, n2846, n2847, n2848, n2849, n2850,
         n2851, n2852, n2853, n2854, n2855, n2856, n2857, n2858, n2859, n2860,
         n2861, n2862, n2863, n2864, n2865, n2866, n2867, n2868, n2869, n2870,
         n2871, n2872, n2873, n2874, n2875, n2876, n2877, n2878, n2879, n2880,
         n2881, n2882, n2883, n2884, n2885, n2886, n2887, n2888, n2889, n2890,
         n2891, n2892, n2893, n2894, n2895, n2896, n2897, n2898, n2899, n2900,
         n2901, n2902, n2903, n2904, n2905, n2906, n2907, n2908, n2909, n2910,
         n2911, n2912, n2913, n2914, n2915, n2916, n2917, n2918, n2919, n2920,
         n2921, n2922, n2923, n2924, n2925, n2926, n2927, n2928, n2929, n2930,
         n2931, n2932, n2933, n2934, n2935, n2936, n2937, n2938, n2939, n2940,
         n2941, n2942, n2943, n2944, n2945, n2946, n2947, n2948, n2949, n2950,
         n2951, n2952, n2953, n2954, n2955, n2956, n2957, n2958, n2959, n2960,
         n2961, n2962, n2963, n2964, n2965, n2966, n2967, n2968, n2969, n2970,
         n2971, n2972, n2973, n2974, n2975, n2976, n2977, n2978, n2979, n2980,
         n2981, n2982, n2983, n2984, n2985, n2986, n2987, n2988, n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486,
         n487, n488, n489, n490, n491, n492, n493, n494, n495, n496, n497,
         n498, n499, n500, n501, n502, n503, n504, n505, n506, n507, n508,
         n509, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, n541,
         n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552,
         n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, n563,
         n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n574,
         n575, n576, n577, n578, n579, n580, n581, n582, n583, n584, n585,
         n586, n587, n588, n589, n590, n591, n592, n593, n594, n595, n596,
         n597, n598, n599, n600, n601, n602, n603, n604, n605, n606, n607,
         n608, n609, n610, n611, n612, n613, n614, n615, n616, n617, n618,
         n619, n620, n621, n622, n623, n624, n625, n626, n627, n628, n629,
         n630, n631, n632, n633, n634, n635, n636, n637, n638, n639, n640,
         n641, n642, n643, n644, n645, n646, n647, n648, n649, n650, n651,
         n652, n653, n654, n655, n656, n657, n658, n659, n660, n661, n662,
         n663, n664, n665, n666, n667, n668, n669, n670, n671, n672, n673,
         n674, n675, n676, n677, n678, n679, n680, n681, n682, n683, n684,
         n685, n686, n687, n688, n689, n690, n691, n692, n693, n694, n695,
         n696, n697, n698, n699, n700, n701, n702, n703, n704, n705, n706,
         n707, n708, n709, n710, n711, n712, n713, n714, n715, n716, n717,
         n718, n719, n720, n721, n722, n723, n724, n725, n726, n727, n728,
         n729, n730, n731, n732, n733, n734, n735, n736, n737, n738, n739,
         n740, n741, n742, n743, n744, n745, n746, n747, n748, n749, n750,
         n751, n752, n753, n754, n755, n756, n757, n758, n759, n760, n761,
         n762, n763, n764, n765, n766, n767, n768, n769, n770, n771, n772,
         n773, n774, n775, n776, n777, n778, n779, n780, n781, n782, n783,
         n784, n785, n786, n787, n788, n789, n790, n791, n792, n793, n794,
         n795, n796, n797, n798, n799, n800, n801, n802, n803, n804, n805,
         n806, n807, n808, n809, n810, n811, n812, n813, n814, n815, n816,
         n817, n818, n819, n820, n821, n822, n823, n824, n825, n826, n827,
         n828, n829, n830, n831, n832, n833, n834, n835, n836, n837, n838,
         n839, n840, n841, n842, n843, n844, n845, n846, n847, n848, n849,
         n850, n851, n852, n853, n854, n855, n856, n857, n858, n859, n860,
         n861, n862, n863, n864, n865, n866, n867, n868, n869, n870, n871,
         n872, n873, n874, n875, n876, n877, n878, n879, n880, n881, n882,
         n883, n884, n885, n886, n887, n888, n889, n890, n891, n892, n893,
         n894, n895, n896, n897, n898, n899, n900, n901, n902, n903, n904,
         n905, n906, n907, n908, n909, n910, n911, n912, n913, n914, n915,
         n916, n917, n918, n919, n920, n921, n922, n923, n924, n925, n926,
         n927, n928, n929, n930, n931, n932, n933, n934, n935, n936, n937,
         n938, n939, n940, n941, n942, n943, n944, n945, n946, n947, n948,
         n949, n950, n951, n952, n953, n954, n955, n956, n957, n958, n959,
         n960, n961, n962, n963, n964, n965, n966, n967, n968, n969, n970,
         n971, n972, n973, n974, n975, n976, n977, n978, n979, n980, n981,
         n982, n983, n984, n985, n986, n987, n988, n989, n990, n991, n992,
         n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003,
         n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013,
         n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023,
         n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033,
         n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043,
         n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053,
         n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063,
         n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073,
         n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083,
         n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093,
         n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103,
         n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113,
         n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123,
         n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133,
         n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143,
         n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153,
         n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163,
         n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173,
         n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183,
         n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193,
         n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203,
         n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213,
         n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223,
         n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233,
         n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243,
         n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253,
         n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263,
         n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273,
         n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283,
         n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293,
         n1294, n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303,
         n1304, n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313,
         n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323,
         n1324, n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333,
         n1334, n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343,
         n1344, n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353,
         n1354, n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363,
         n1364, n1365, n1366, n1367, n1368, n1369;

  GTECH_FD1 RAM_reg_0__7_ ( .D(n2988), .CP(n1), .Q(n1369) );
  GTECH_FD1 RAM_reg_0__6_ ( .D(n2987), .CP(n1), .Q(n1368) );
  GTECH_FD1 RAM_reg_0__5_ ( .D(n2986), .CP(n1), .Q(n1367) );
  GTECH_FD1 RAM_reg_0__4_ ( .D(n2985), .CP(n1), .Q(n1366) );
  GTECH_FD1 RAM_reg_0__3_ ( .D(n2984), .CP(n1), .Q(n1365) );
  GTECH_FD1 RAM_reg_0__2_ ( .D(n2983), .CP(n1), .Q(n1364) );
  GTECH_FD1 RAM_reg_0__1_ ( .D(n2982), .CP(n1), .Q(n1363) );
  GTECH_FD1 RAM_reg_0__0_ ( .D(n2981), .CP(n1), .Q(n1362) );
  GTECH_FD1 RAM_reg_1__7_ ( .D(n2980), .CP(n1), .Q(n1361) );
  GTECH_FD1 RAM_reg_1__6_ ( .D(n2979), .CP(n1), .Q(n1360) );
  GTECH_FD1 RAM_reg_1__5_ ( .D(n2978), .CP(n1), .Q(n1359) );
  GTECH_FD1 RAM_reg_1__4_ ( .D(n2977), .CP(n1), .Q(n1358) );
  GTECH_FD1 RAM_reg_1__3_ ( .D(n2976), .CP(n1), .Q(n1357) );
  GTECH_FD1 RAM_reg_1__2_ ( .D(n2975), .CP(n1), .Q(n1356) );
  GTECH_FD1 RAM_reg_1__1_ ( .D(n2974), .CP(n1), .Q(n1355) );
  GTECH_FD1 RAM_reg_1__0_ ( .D(n2973), .CP(n1), .Q(n1354) );
  GTECH_FD1 RAM_reg_2__7_ ( .D(n2972), .CP(n1), .Q(n1353) );
  GTECH_FD1 RAM_reg_2__6_ ( .D(n2971), .CP(n1), .Q(n1352) );
  GTECH_FD1 RAM_reg_2__5_ ( .D(n2970), .CP(n1), .Q(n1351) );
  GTECH_FD1 RAM_reg_2__4_ ( .D(n2969), .CP(n1), .Q(n1350) );
  GTECH_FD1 RAM_reg_2__3_ ( .D(n2968), .CP(n1), .Q(n1349) );
  GTECH_FD1 RAM_reg_2__2_ ( .D(n2967), .CP(n1), .Q(n1348) );
  GTECH_FD1 RAM_reg_2__1_ ( .D(n2966), .CP(n1), .Q(n1347) );
  GTECH_FD1 RAM_reg_2__0_ ( .D(n2965), .CP(n1), .Q(n1346) );
  GTECH_FD1 RAM_reg_3__7_ ( .D(n2964), .CP(n1), .Q(n1345) );
  GTECH_FD1 RAM_reg_3__6_ ( .D(n2963), .CP(n1), .Q(n1344) );
  GTECH_FD1 RAM_reg_3__5_ ( .D(n2962), .CP(n1), .Q(n1343) );
  GTECH_FD1 RAM_reg_3__4_ ( .D(n2961), .CP(n1), .Q(n1342) );
  GTECH_FD1 RAM_reg_3__3_ ( .D(n2960), .CP(n1), .Q(n1341) );
  GTECH_FD1 RAM_reg_3__2_ ( .D(n2959), .CP(n1), .Q(n1340) );
  GTECH_FD1 RAM_reg_3__1_ ( .D(n2958), .CP(n1), .Q(n1339) );
  GTECH_FD1 RAM_reg_3__0_ ( .D(n2957), .CP(n1), .Q(n1338) );
  GTECH_FD1 RAM_reg_4__7_ ( .D(n2956), .CP(n1), .Q(n1337) );
  GTECH_FD1 RAM_reg_4__6_ ( .D(n2955), .CP(n1), .Q(n1336) );
  GTECH_FD1 RAM_reg_4__5_ ( .D(n2954), .CP(n1), .Q(n1335) );
  GTECH_FD1 RAM_reg_4__4_ ( .D(n2953), .CP(n1), .Q(n1334) );
  GTECH_FD1 RAM_reg_4__3_ ( .D(n2952), .CP(n1), .Q(n1333) );
  GTECH_FD1 RAM_reg_4__2_ ( .D(n2951), .CP(n1), .Q(n1332) );
  GTECH_FD1 RAM_reg_4__1_ ( .D(n2950), .CP(n1), .Q(n1331) );
  GTECH_FD1 RAM_reg_4__0_ ( .D(n2949), .CP(n1), .Q(n1330) );
  GTECH_FD1 RAM_reg_5__7_ ( .D(n2948), .CP(n1), .Q(n1329) );
  GTECH_FD1 RAM_reg_5__6_ ( .D(n2947), .CP(n1), .Q(n1328) );
  GTECH_FD1 RAM_reg_5__5_ ( .D(n2946), .CP(n1), .Q(n1327) );
  GTECH_FD1 RAM_reg_5__4_ ( .D(n2945), .CP(n1), .Q(n1326) );
  GTECH_FD1 RAM_reg_5__3_ ( .D(n2944), .CP(n1), .Q(n1325) );
  GTECH_FD1 RAM_reg_5__2_ ( .D(n2943), .CP(n1), .Q(n1324) );
  GTECH_FD1 RAM_reg_5__1_ ( .D(n2942), .CP(n1), .Q(n1323) );
  GTECH_FD1 RAM_reg_5__0_ ( .D(n2941), .CP(n1), .Q(n1322) );
  GTECH_FD1 RAM_reg_6__7_ ( .D(n2940), .CP(n1), .Q(n1321) );
  GTECH_FD1 RAM_reg_6__6_ ( .D(n2939), .CP(n1), .Q(n1320) );
  GTECH_FD1 RAM_reg_6__5_ ( .D(n2938), .CP(n1), .Q(n1319) );
  GTECH_FD1 RAM_reg_6__4_ ( .D(n2937), .CP(n1), .Q(n1318) );
  GTECH_FD1 RAM_reg_6__3_ ( .D(n2936), .CP(n1), .Q(n1317) );
  GTECH_FD1 RAM_reg_6__2_ ( .D(n2935), .CP(n1), .Q(n1316) );
  GTECH_FD1 RAM_reg_6__1_ ( .D(n2934), .CP(n1), .Q(n1315) );
  GTECH_FD1 RAM_reg_6__0_ ( .D(n2933), .CP(n1), .Q(n1314) );
  GTECH_FD1 RAM_reg_7__7_ ( .D(n2932), .CP(n1), .Q(n1313) );
  GTECH_FD1 RAM_reg_7__6_ ( .D(n2931), .CP(n1), .Q(n1312) );
  GTECH_FD1 RAM_reg_7__5_ ( .D(n2930), .CP(n1), .Q(n1311) );
  GTECH_FD1 RAM_reg_7__4_ ( .D(n2929), .CP(n1), .Q(n1310) );
  GTECH_FD1 RAM_reg_7__3_ ( .D(n2928), .CP(n1), .Q(n1309) );
  GTECH_FD1 RAM_reg_7__2_ ( .D(n2927), .CP(n1), .Q(n1308) );
  GTECH_FD1 RAM_reg_7__1_ ( .D(n2926), .CP(n1), .Q(n1307) );
  GTECH_FD1 RAM_reg_7__0_ ( .D(n2925), .CP(n1), .Q(n1306) );
  GTECH_FD1 RAM_reg_8__7_ ( .D(n2924), .CP(n1), .Q(n1305) );
  GTECH_FD1 RAM_reg_8__6_ ( .D(n2923), .CP(n1), .Q(n1304) );
  GTECH_FD1 RAM_reg_8__5_ ( .D(n2922), .CP(n1), .Q(n1303) );
  GTECH_FD1 RAM_reg_8__4_ ( .D(n2921), .CP(n1), .Q(n1302) );
  GTECH_FD1 RAM_reg_8__3_ ( .D(n2920), .CP(n1), .Q(n1301) );
  GTECH_FD1 RAM_reg_8__2_ ( .D(n2919), .CP(n1), .Q(n1300) );
  GTECH_FD1 RAM_reg_8__1_ ( .D(n2918), .CP(n1), .Q(n1299) );
  GTECH_FD1 RAM_reg_8__0_ ( .D(n2917), .CP(n1), .Q(n1298) );
  GTECH_FD1 RAM_reg_9__7_ ( .D(n2916), .CP(n1), .Q(n1297) );
  GTECH_FD1 RAM_reg_9__6_ ( .D(n2915), .CP(n1), .Q(n1296) );
  GTECH_FD1 RAM_reg_9__5_ ( .D(n2914), .CP(n1), .Q(n1295) );
  GTECH_FD1 RAM_reg_9__4_ ( .D(n2913), .CP(n1), .Q(n1294) );
  GTECH_FD1 RAM_reg_9__3_ ( .D(n2912), .CP(n1), .Q(n1293) );
  GTECH_FD1 RAM_reg_9__2_ ( .D(n2911), .CP(n1), .Q(n1292) );
  GTECH_FD1 RAM_reg_9__1_ ( .D(n2910), .CP(n1), .Q(n1291) );
  GTECH_FD1 RAM_reg_9__0_ ( .D(n2909), .CP(n1), .Q(n1290) );
  GTECH_FD1 RAM_reg_10__7_ ( .D(n2908), .CP(n1), .Q(n1289) );
  GTECH_FD1 RAM_reg_10__6_ ( .D(n2907), .CP(n1), .Q(n1288) );
  GTECH_FD1 RAM_reg_10__5_ ( .D(n2906), .CP(n1), .Q(n1287) );
  GTECH_FD1 RAM_reg_10__4_ ( .D(n2905), .CP(n1), .Q(n1286) );
  GTECH_FD1 RAM_reg_10__3_ ( .D(n2904), .CP(n1), .Q(n1285) );
  GTECH_FD1 RAM_reg_10__2_ ( .D(n2903), .CP(n1), .Q(n1284) );
  GTECH_FD1 RAM_reg_10__1_ ( .D(n2902), .CP(n1), .Q(n1283) );
  GTECH_FD1 RAM_reg_10__0_ ( .D(n2901), .CP(n1), .Q(n1282) );
  GTECH_FD1 RAM_reg_11__7_ ( .D(n2900), .CP(n1), .Q(n1281) );
  GTECH_FD1 RAM_reg_11__6_ ( .D(n2899), .CP(n1), .Q(n1280) );
  GTECH_FD1 RAM_reg_11__5_ ( .D(n2898), .CP(n1), .Q(n1279) );
  GTECH_FD1 RAM_reg_11__4_ ( .D(n2897), .CP(n1), .Q(n1278) );
  GTECH_FD1 RAM_reg_11__3_ ( .D(n2896), .CP(n1), .Q(n1277) );
  GTECH_FD1 RAM_reg_11__2_ ( .D(n2895), .CP(n1), .Q(n1276) );
  GTECH_FD1 RAM_reg_11__1_ ( .D(n2894), .CP(n1), .Q(n1275) );
  GTECH_FD1 RAM_reg_11__0_ ( .D(n2893), .CP(n1), .Q(n1274) );
  GTECH_FD1 RAM_reg_12__7_ ( .D(n2892), .CP(n1), .Q(n1273) );
  GTECH_FD1 RAM_reg_12__6_ ( .D(n2891), .CP(n1), .Q(n1272) );
  GTECH_FD1 RAM_reg_12__5_ ( .D(n2890), .CP(n1), .Q(n1271) );
  GTECH_FD1 RAM_reg_12__4_ ( .D(n2889), .CP(n1), .Q(n1270) );
  GTECH_FD1 RAM_reg_12__3_ ( .D(n2888), .CP(n1), .Q(n1269) );
  GTECH_FD1 RAM_reg_12__2_ ( .D(n2887), .CP(n1), .Q(n1268) );
  GTECH_FD1 RAM_reg_12__1_ ( .D(n2886), .CP(n1), .Q(n1267) );
  GTECH_FD1 RAM_reg_12__0_ ( .D(n2885), .CP(n1), .Q(n1266) );
  GTECH_FD1 RAM_reg_13__7_ ( .D(n2884), .CP(n1), .Q(n1265) );
  GTECH_FD1 RAM_reg_13__6_ ( .D(n2883), .CP(n1), .Q(n1264) );
  GTECH_FD1 RAM_reg_13__5_ ( .D(n2882), .CP(n1), .Q(n1263) );
  GTECH_FD1 RAM_reg_13__4_ ( .D(n2881), .CP(n1), .Q(n1262) );
  GTECH_FD1 RAM_reg_13__3_ ( .D(n2880), .CP(n1), .Q(n1261) );
  GTECH_FD1 RAM_reg_13__2_ ( .D(n2879), .CP(n1), .Q(n1260) );
  GTECH_FD1 RAM_reg_13__1_ ( .D(n2878), .CP(n1), .Q(n1259) );
  GTECH_FD1 RAM_reg_13__0_ ( .D(n2877), .CP(n1), .Q(n1258) );
  GTECH_FD1 RAM_reg_14__7_ ( .D(n2876), .CP(n1), .Q(n1257) );
  GTECH_FD1 RAM_reg_14__6_ ( .D(n2875), .CP(n1), .Q(n1256) );
  GTECH_FD1 RAM_reg_14__5_ ( .D(n2874), .CP(n1), .Q(n1255) );
  GTECH_FD1 RAM_reg_14__4_ ( .D(n2873), .CP(n1), .Q(n1254) );
  GTECH_FD1 RAM_reg_14__3_ ( .D(n2872), .CP(n1), .Q(n1253) );
  GTECH_FD1 RAM_reg_14__2_ ( .D(n2871), .CP(n1), .Q(n1252) );
  GTECH_FD1 RAM_reg_14__1_ ( .D(n2870), .CP(n1), .Q(n1251) );
  GTECH_FD1 RAM_reg_14__0_ ( .D(n2869), .CP(n1), .Q(n1250) );
  GTECH_FD1 RAM_reg_15__7_ ( .D(n2868), .CP(n1), .Q(n1249) );
  GTECH_FD1 RAM_reg_15__6_ ( .D(n2867), .CP(n1), .Q(n1248) );
  GTECH_FD1 RAM_reg_15__5_ ( .D(n2866), .CP(n1), .Q(n1247) );
  GTECH_FD1 RAM_reg_15__4_ ( .D(n2865), .CP(n1), .Q(n1246) );
  GTECH_FD1 RAM_reg_15__3_ ( .D(n2864), .CP(n1), .Q(n1245) );
  GTECH_FD1 RAM_reg_15__2_ ( .D(n2863), .CP(n1), .Q(n1244) );
  GTECH_FD1 RAM_reg_15__1_ ( .D(n2862), .CP(n1), .Q(n1243) );
  GTECH_FD1 RAM_reg_15__0_ ( .D(n2861), .CP(n1), .Q(n1242) );
  GTECH_FD1 RAM_reg_16__7_ ( .D(n2860), .CP(n1), .Q(n1241) );
  GTECH_FD1 RAM_reg_16__6_ ( .D(n2859), .CP(n1), .Q(n1240) );
  GTECH_FD1 RAM_reg_16__5_ ( .D(n2858), .CP(n1), .Q(n1239) );
  GTECH_FD1 RAM_reg_16__4_ ( .D(n2857), .CP(n1), .Q(n1238) );
  GTECH_FD1 RAM_reg_16__3_ ( .D(n2856), .CP(n1), .Q(n1237) );
  GTECH_FD1 RAM_reg_16__2_ ( .D(n2855), .CP(n1), .Q(n1236) );
  GTECH_FD1 RAM_reg_16__1_ ( .D(n2854), .CP(n1), .Q(n1235) );
  GTECH_FD1 RAM_reg_16__0_ ( .D(n2853), .CP(n1), .Q(n1234) );
  GTECH_FD1 RAM_reg_17__7_ ( .D(n2852), .CP(n1), .Q(n1233) );
  GTECH_FD1 RAM_reg_17__6_ ( .D(n2851), .CP(n1), .Q(n1232) );
  GTECH_FD1 RAM_reg_17__5_ ( .D(n2850), .CP(n1), .Q(n1231) );
  GTECH_FD1 RAM_reg_17__4_ ( .D(n2849), .CP(n1), .Q(n1230) );
  GTECH_FD1 RAM_reg_17__3_ ( .D(n2848), .CP(n1), .Q(n1229) );
  GTECH_FD1 RAM_reg_17__2_ ( .D(n2847), .CP(n1), .Q(n1228) );
  GTECH_FD1 RAM_reg_17__1_ ( .D(n2846), .CP(n1), .Q(n1227) );
  GTECH_FD1 RAM_reg_17__0_ ( .D(n2845), .CP(n1), .Q(n1226) );
  GTECH_FD1 RAM_reg_18__7_ ( .D(n2844), .CP(n1), .Q(n1225) );
  GTECH_FD1 RAM_reg_18__6_ ( .D(n2843), .CP(n1), .Q(n1224) );
  GTECH_FD1 RAM_reg_18__5_ ( .D(n2842), .CP(n1), .Q(n1223) );
  GTECH_FD1 RAM_reg_18__4_ ( .D(n2841), .CP(n1), .Q(n1222) );
  GTECH_FD1 RAM_reg_18__3_ ( .D(n2840), .CP(n1), .Q(n1221) );
  GTECH_FD1 RAM_reg_18__2_ ( .D(n2839), .CP(n1), .Q(n1220) );
  GTECH_FD1 RAM_reg_18__1_ ( .D(n2838), .CP(n1), .Q(n1219) );
  GTECH_FD1 RAM_reg_18__0_ ( .D(n2837), .CP(n1), .Q(n1218) );
  GTECH_FD1 RAM_reg_19__7_ ( .D(n2836), .CP(n1), .Q(n1217) );
  GTECH_FD1 RAM_reg_19__6_ ( .D(n2835), .CP(n1), .Q(n1216) );
  GTECH_FD1 RAM_reg_19__5_ ( .D(n2834), .CP(n1), .Q(n1215) );
  GTECH_FD1 RAM_reg_19__4_ ( .D(n2833), .CP(n1), .Q(n1214) );
  GTECH_FD1 RAM_reg_19__3_ ( .D(n2832), .CP(n1), .Q(n1213) );
  GTECH_FD1 RAM_reg_19__2_ ( .D(n2831), .CP(n1), .Q(n1212) );
  GTECH_FD1 RAM_reg_19__1_ ( .D(n2830), .CP(n1), .Q(n1211) );
  GTECH_FD1 RAM_reg_19__0_ ( .D(n2829), .CP(n1), .Q(n1210) );
  GTECH_FD1 RAM_reg_20__7_ ( .D(n2828), .CP(n1), .Q(n1209) );
  GTECH_FD1 RAM_reg_20__6_ ( .D(n2827), .CP(n1), .Q(n1208) );
  GTECH_FD1 RAM_reg_20__5_ ( .D(n2826), .CP(n1), .Q(n1207) );
  GTECH_FD1 RAM_reg_20__4_ ( .D(n2825), .CP(n1), .Q(n1206) );
  GTECH_FD1 RAM_reg_20__3_ ( .D(n2824), .CP(n1), .Q(n1205) );
  GTECH_FD1 RAM_reg_20__2_ ( .D(n2823), .CP(n1), .Q(n1204) );
  GTECH_FD1 RAM_reg_20__1_ ( .D(n2822), .CP(n1), .Q(n1203) );
  GTECH_FD1 RAM_reg_20__0_ ( .D(n2821), .CP(n1), .Q(n1202) );
  GTECH_FD1 RAM_reg_21__7_ ( .D(n2820), .CP(n1), .Q(n1201) );
  GTECH_FD1 RAM_reg_21__6_ ( .D(n2819), .CP(n1), .Q(n1200) );
  GTECH_FD1 RAM_reg_21__5_ ( .D(n2818), .CP(n1), .Q(n1199) );
  GTECH_FD1 RAM_reg_21__4_ ( .D(n2817), .CP(n1), .Q(n1198) );
  GTECH_FD1 RAM_reg_21__3_ ( .D(n2816), .CP(n1), .Q(n1197) );
  GTECH_FD1 RAM_reg_21__2_ ( .D(n2815), .CP(n1), .Q(n1196) );
  GTECH_FD1 RAM_reg_21__1_ ( .D(n2814), .CP(n1), .Q(n1195) );
  GTECH_FD1 RAM_reg_21__0_ ( .D(n2813), .CP(n1), .Q(n1194) );
  GTECH_FD1 RAM_reg_22__7_ ( .D(n2812), .CP(n1), .Q(n1193) );
  GTECH_FD1 RAM_reg_22__6_ ( .D(n2811), .CP(n1), .Q(n1192) );
  GTECH_FD1 RAM_reg_22__5_ ( .D(n2810), .CP(n1), .Q(n1191) );
  GTECH_FD1 RAM_reg_22__4_ ( .D(n2809), .CP(n1), .Q(n1190) );
  GTECH_FD1 RAM_reg_22__3_ ( .D(n2808), .CP(n1), .Q(n1189) );
  GTECH_FD1 RAM_reg_22__2_ ( .D(n2807), .CP(n1), .Q(n1188) );
  GTECH_FD1 RAM_reg_22__1_ ( .D(n2806), .CP(n1), .Q(n1187) );
  GTECH_FD1 RAM_reg_22__0_ ( .D(n2805), .CP(n1), .Q(n1186) );
  GTECH_FD1 RAM_reg_23__7_ ( .D(n2804), .CP(n1), .Q(n1185) );
  GTECH_FD1 RAM_reg_23__6_ ( .D(n2803), .CP(n1), .Q(n1184) );
  GTECH_FD1 RAM_reg_23__5_ ( .D(n2802), .CP(n1), .Q(n1183) );
  GTECH_FD1 RAM_reg_23__4_ ( .D(n2801), .CP(n1), .Q(n1182) );
  GTECH_FD1 RAM_reg_23__3_ ( .D(n2800), .CP(n1), .Q(n1181) );
  GTECH_FD1 RAM_reg_23__2_ ( .D(n2799), .CP(n1), .Q(n1180) );
  GTECH_FD1 RAM_reg_23__1_ ( .D(n2798), .CP(n1), .Q(n1179) );
  GTECH_FD1 RAM_reg_23__0_ ( .D(n2797), .CP(n1), .Q(n1178) );
  GTECH_FD1 RAM_reg_24__7_ ( .D(n2796), .CP(n1), .Q(n1177) );
  GTECH_FD1 RAM_reg_24__6_ ( .D(n2795), .CP(n1), .Q(n1176) );
  GTECH_FD1 RAM_reg_24__5_ ( .D(n2794), .CP(n1), .Q(n1175) );
  GTECH_FD1 RAM_reg_24__4_ ( .D(n2793), .CP(n1), .Q(n1174) );
  GTECH_FD1 RAM_reg_24__3_ ( .D(n2792), .CP(n1), .Q(n1173) );
  GTECH_FD1 RAM_reg_24__2_ ( .D(n2791), .CP(n1), .Q(n1172) );
  GTECH_FD1 RAM_reg_24__1_ ( .D(n2790), .CP(n1), .Q(n1171) );
  GTECH_FD1 RAM_reg_24__0_ ( .D(n2789), .CP(n1), .Q(n1170) );
  GTECH_FD1 RAM_reg_25__7_ ( .D(n2788), .CP(n1), .Q(n1169) );
  GTECH_FD1 RAM_reg_25__6_ ( .D(n2787), .CP(n1), .Q(n1168) );
  GTECH_FD1 RAM_reg_25__5_ ( .D(n2786), .CP(n1), .Q(n1167) );
  GTECH_FD1 RAM_reg_25__4_ ( .D(n2785), .CP(n1), .Q(n1166) );
  GTECH_FD1 RAM_reg_25__3_ ( .D(n2784), .CP(n1), .Q(n1165) );
  GTECH_FD1 RAM_reg_25__2_ ( .D(n2783), .CP(n1), .Q(n1164) );
  GTECH_FD1 RAM_reg_25__1_ ( .D(n2782), .CP(n1), .Q(n1163) );
  GTECH_FD1 RAM_reg_25__0_ ( .D(n2781), .CP(n1), .Q(n1162) );
  GTECH_FD1 RAM_reg_26__7_ ( .D(n2780), .CP(n1), .Q(n1161) );
  GTECH_FD1 RAM_reg_26__6_ ( .D(n2779), .CP(n1), .Q(n1160) );
  GTECH_FD1 RAM_reg_26__5_ ( .D(n2778), .CP(n1), .Q(n1159) );
  GTECH_FD1 RAM_reg_26__4_ ( .D(n2777), .CP(n1), .Q(n1158) );
  GTECH_FD1 RAM_reg_26__3_ ( .D(n2776), .CP(n1), .Q(n1157) );
  GTECH_FD1 RAM_reg_26__2_ ( .D(n2775), .CP(n1), .Q(n1156) );
  GTECH_FD1 RAM_reg_26__1_ ( .D(n2774), .CP(n1), .Q(n1155) );
  GTECH_FD1 RAM_reg_26__0_ ( .D(n2773), .CP(n1), .Q(n1154) );
  GTECH_FD1 RAM_reg_27__7_ ( .D(n2772), .CP(n1), .Q(n1153) );
  GTECH_FD1 RAM_reg_27__6_ ( .D(n2771), .CP(n1), .Q(n1152) );
  GTECH_FD1 RAM_reg_27__5_ ( .D(n2770), .CP(n1), .Q(n1151) );
  GTECH_FD1 RAM_reg_27__4_ ( .D(n2769), .CP(n1), .Q(n1150) );
  GTECH_FD1 RAM_reg_27__3_ ( .D(n2768), .CP(n1), .Q(n1149) );
  GTECH_FD1 RAM_reg_27__2_ ( .D(n2767), .CP(n1), .Q(n1148) );
  GTECH_FD1 RAM_reg_27__1_ ( .D(n2766), .CP(n1), .Q(n1147) );
  GTECH_FD1 RAM_reg_27__0_ ( .D(n2765), .CP(n1), .Q(n1146) );
  GTECH_FD1 RAM_reg_28__7_ ( .D(n2764), .CP(n1), .Q(n1145) );
  GTECH_FD1 RAM_reg_28__6_ ( .D(n2763), .CP(n1), .Q(n1144) );
  GTECH_FD1 RAM_reg_28__5_ ( .D(n2762), .CP(n1), .Q(n1143) );
  GTECH_FD1 RAM_reg_28__4_ ( .D(n2761), .CP(n1), .Q(n1142) );
  GTECH_FD1 RAM_reg_28__3_ ( .D(n2760), .CP(n1), .Q(n1141) );
  GTECH_FD1 RAM_reg_28__2_ ( .D(n2759), .CP(n1), .Q(n1140) );
  GTECH_FD1 RAM_reg_28__1_ ( .D(n2758), .CP(n1), .Q(n1139) );
  GTECH_FD1 RAM_reg_28__0_ ( .D(n2757), .CP(n1), .Q(n1138) );
  GTECH_FD1 RAM_reg_29__7_ ( .D(n2756), .CP(n1), .Q(n1137) );
  GTECH_FD1 RAM_reg_29__6_ ( .D(n2755), .CP(n1), .Q(n1136) );
  GTECH_FD1 RAM_reg_29__5_ ( .D(n2754), .CP(n1), .Q(n1135) );
  GTECH_FD1 RAM_reg_29__4_ ( .D(n2753), .CP(n1), .Q(n1134) );
  GTECH_FD1 RAM_reg_29__3_ ( .D(n2752), .CP(n1), .Q(n1133) );
  GTECH_FD1 RAM_reg_29__2_ ( .D(n2751), .CP(n1), .Q(n1132) );
  GTECH_FD1 RAM_reg_29__1_ ( .D(n2750), .CP(n1), .Q(n1131) );
  GTECH_FD1 RAM_reg_29__0_ ( .D(n2749), .CP(n1), .Q(n1130) );
  GTECH_FD1 RAM_reg_30__7_ ( .D(n2748), .CP(n1), .Q(n1129) );
  GTECH_FD1 RAM_reg_30__6_ ( .D(n2747), .CP(n1), .Q(n1128) );
  GTECH_FD1 RAM_reg_30__5_ ( .D(n2746), .CP(n1), .Q(n1127) );
  GTECH_FD1 RAM_reg_30__4_ ( .D(n2745), .CP(n1), .Q(n1126) );
  GTECH_FD1 RAM_reg_30__3_ ( .D(n2744), .CP(n1), .Q(n1125) );
  GTECH_FD1 RAM_reg_30__2_ ( .D(n2743), .CP(n1), .Q(n1124) );
  GTECH_FD1 RAM_reg_30__1_ ( .D(n2742), .CP(n1), .Q(n1123) );
  GTECH_FD1 RAM_reg_30__0_ ( .D(n2741), .CP(n1), .Q(n1122) );
  GTECH_FD1 RAM_reg_31__7_ ( .D(n2740), .CP(n1), .Q(n1121) );
  GTECH_FD1 RAM_reg_31__6_ ( .D(n2739), .CP(n1), .Q(n1120) );
  GTECH_FD1 RAM_reg_31__5_ ( .D(n2738), .CP(n1), .Q(n1119) );
  GTECH_FD1 RAM_reg_31__4_ ( .D(n2737), .CP(n1), .Q(n1118) );
  GTECH_FD1 RAM_reg_31__3_ ( .D(n2736), .CP(n1), .Q(n1117) );
  GTECH_FD1 RAM_reg_31__2_ ( .D(n2735), .CP(n1), .Q(n1116) );
  GTECH_FD1 RAM_reg_31__1_ ( .D(n2734), .CP(n1), .Q(n1115) );
  GTECH_FD1 RAM_reg_31__0_ ( .D(n2733), .CP(n1), .Q(n1114) );
  GTECH_FD1 RAM_reg_32__7_ ( .D(n2732), .CP(n1), .Q(n1113) );
  GTECH_FD1 RAM_reg_32__6_ ( .D(n2731), .CP(n1), .Q(n1112) );
  GTECH_FD1 RAM_reg_32__5_ ( .D(n2730), .CP(n1), .Q(n1111) );
  GTECH_FD1 RAM_reg_32__4_ ( .D(n2729), .CP(n1), .Q(n1110) );
  GTECH_FD1 RAM_reg_32__3_ ( .D(n2728), .CP(n1), .Q(n1109) );
  GTECH_FD1 RAM_reg_32__2_ ( .D(n2727), .CP(n1), .Q(n1108) );
  GTECH_FD1 RAM_reg_32__1_ ( .D(n2726), .CP(n1), .Q(n1107) );
  GTECH_FD1 RAM_reg_32__0_ ( .D(n2725), .CP(n1), .Q(n1106) );
  GTECH_FD1 RAM_reg_33__7_ ( .D(n2724), .CP(n1), .Q(n1105) );
  GTECH_FD1 RAM_reg_33__6_ ( .D(n2723), .CP(n1), .Q(n1104) );
  GTECH_FD1 RAM_reg_33__5_ ( .D(n2722), .CP(n1), .Q(n1103) );
  GTECH_FD1 RAM_reg_33__4_ ( .D(n2721), .CP(n1), .Q(n1102) );
  GTECH_FD1 RAM_reg_33__3_ ( .D(n2720), .CP(n1), .Q(n1101) );
  GTECH_FD1 RAM_reg_33__2_ ( .D(n2719), .CP(n1), .Q(n1100) );
  GTECH_FD1 RAM_reg_33__1_ ( .D(n2718), .CP(n1), .Q(n1099) );
  GTECH_FD1 RAM_reg_33__0_ ( .D(n2717), .CP(n1), .Q(n1098) );
  GTECH_FD1 RAM_reg_34__7_ ( .D(n2716), .CP(n1), .Q(n1097) );
  GTECH_FD1 RAM_reg_34__6_ ( .D(n2715), .CP(n1), .Q(n1096) );
  GTECH_FD1 RAM_reg_34__5_ ( .D(n2714), .CP(n1), .Q(n1095) );
  GTECH_FD1 RAM_reg_34__4_ ( .D(n2713), .CP(n1), .Q(n1094) );
  GTECH_FD1 RAM_reg_34__3_ ( .D(n2712), .CP(n1), .Q(n1093) );
  GTECH_FD1 RAM_reg_34__2_ ( .D(n2711), .CP(n1), .Q(n1092) );
  GTECH_FD1 RAM_reg_34__1_ ( .D(n2710), .CP(n1), .Q(n1091) );
  GTECH_FD1 RAM_reg_34__0_ ( .D(n2709), .CP(n1), .Q(n1090) );
  GTECH_FD1 RAM_reg_35__7_ ( .D(n2708), .CP(n1), .Q(n1089) );
  GTECH_FD1 RAM_reg_35__6_ ( .D(n2707), .CP(n1), .Q(n1088) );
  GTECH_FD1 RAM_reg_35__5_ ( .D(n2706), .CP(n1), .Q(n1087) );
  GTECH_FD1 RAM_reg_35__4_ ( .D(n2705), .CP(n1), .Q(n1086) );
  GTECH_FD1 RAM_reg_35__3_ ( .D(n2704), .CP(n1), .Q(n1085) );
  GTECH_FD1 RAM_reg_35__2_ ( .D(n2703), .CP(n1), .Q(n1084) );
  GTECH_FD1 RAM_reg_35__1_ ( .D(n2702), .CP(n1), .Q(n1083) );
  GTECH_FD1 RAM_reg_35__0_ ( .D(n2701), .CP(n1), .Q(n1082) );
  GTECH_FD1 RAM_reg_36__7_ ( .D(n2700), .CP(n1), .Q(n1081) );
  GTECH_FD1 RAM_reg_36__6_ ( .D(n2699), .CP(n1), .Q(n1080) );
  GTECH_FD1 RAM_reg_36__5_ ( .D(n2698), .CP(n1), .Q(n1079) );
  GTECH_FD1 RAM_reg_36__4_ ( .D(n2697), .CP(n1), .Q(n1078) );
  GTECH_FD1 RAM_reg_36__3_ ( .D(n2696), .CP(n1), .Q(n1077) );
  GTECH_FD1 RAM_reg_36__2_ ( .D(n2695), .CP(n1), .Q(n1076) );
  GTECH_FD1 RAM_reg_36__1_ ( .D(n2694), .CP(n1), .Q(n1075) );
  GTECH_FD1 RAM_reg_36__0_ ( .D(n2693), .CP(n1), .Q(n1074) );
  GTECH_FD1 RAM_reg_37__7_ ( .D(n2692), .CP(n1), .Q(n1073) );
  GTECH_FD1 RAM_reg_37__6_ ( .D(n2691), .CP(n1), .Q(n1072) );
  GTECH_FD1 RAM_reg_37__5_ ( .D(n2690), .CP(n1), .Q(n1071) );
  GTECH_FD1 RAM_reg_37__4_ ( .D(n2689), .CP(n1), .Q(n1070) );
  GTECH_FD1 RAM_reg_37__3_ ( .D(n2688), .CP(n1), .Q(n1069) );
  GTECH_FD1 RAM_reg_37__2_ ( .D(n2687), .CP(n1), .Q(n1068) );
  GTECH_FD1 RAM_reg_37__1_ ( .D(n2686), .CP(n1), .Q(n1067) );
  GTECH_FD1 RAM_reg_37__0_ ( .D(n2685), .CP(n1), .Q(n1066) );
  GTECH_FD1 RAM_reg_38__7_ ( .D(n2684), .CP(n1), .Q(n1065) );
  GTECH_FD1 RAM_reg_38__6_ ( .D(n2683), .CP(n1), .Q(n1064) );
  GTECH_FD1 RAM_reg_38__5_ ( .D(n2682), .CP(n1), .Q(n1063) );
  GTECH_FD1 RAM_reg_38__4_ ( .D(n2681), .CP(n1), .Q(n1062) );
  GTECH_FD1 RAM_reg_38__3_ ( .D(n2680), .CP(n1), .Q(n1061) );
  GTECH_FD1 RAM_reg_38__2_ ( .D(n2679), .CP(n1), .Q(n1060) );
  GTECH_FD1 RAM_reg_38__1_ ( .D(n2678), .CP(n1), .Q(n1059) );
  GTECH_FD1 RAM_reg_38__0_ ( .D(n2677), .CP(n1), .Q(n1058) );
  GTECH_FD1 RAM_reg_39__7_ ( .D(n2676), .CP(n1), .Q(n1057) );
  GTECH_FD1 RAM_reg_39__6_ ( .D(n2675), .CP(n1), .Q(n1056) );
  GTECH_FD1 RAM_reg_39__5_ ( .D(n2674), .CP(n1), .Q(n1055) );
  GTECH_FD1 RAM_reg_39__4_ ( .D(n2673), .CP(n1), .Q(n1054) );
  GTECH_FD1 RAM_reg_39__3_ ( .D(n2672), .CP(n1), .Q(n1053) );
  GTECH_FD1 RAM_reg_39__2_ ( .D(n2671), .CP(n1), .Q(n1052) );
  GTECH_FD1 RAM_reg_39__1_ ( .D(n2670), .CP(n1), .Q(n1051) );
  GTECH_FD1 RAM_reg_39__0_ ( .D(n2669), .CP(n1), .Q(n1050) );
  GTECH_FD1 RAM_reg_40__7_ ( .D(n2668), .CP(n1), .Q(n1049) );
  GTECH_FD1 RAM_reg_40__6_ ( .D(n2667), .CP(n1), .Q(n1048) );
  GTECH_FD1 RAM_reg_40__5_ ( .D(n2666), .CP(n1), .Q(n1047) );
  GTECH_FD1 RAM_reg_40__4_ ( .D(n2665), .CP(n1), .Q(n1046) );
  GTECH_FD1 RAM_reg_40__3_ ( .D(n2664), .CP(n1), .Q(n1045) );
  GTECH_FD1 RAM_reg_40__2_ ( .D(n2663), .CP(n1), .Q(n1044) );
  GTECH_FD1 RAM_reg_40__1_ ( .D(n2662), .CP(n1), .Q(n1043) );
  GTECH_FD1 RAM_reg_40__0_ ( .D(n2661), .CP(n1), .Q(n1042) );
  GTECH_FD1 RAM_reg_41__7_ ( .D(n2660), .CP(n1), .Q(n1041) );
  GTECH_FD1 RAM_reg_41__6_ ( .D(n2659), .CP(n1), .Q(n1040) );
  GTECH_FD1 RAM_reg_41__5_ ( .D(n2658), .CP(n1), .Q(n1039) );
  GTECH_FD1 RAM_reg_41__4_ ( .D(n2657), .CP(n1), .Q(n1038) );
  GTECH_FD1 RAM_reg_41__3_ ( .D(n2656), .CP(n1), .Q(n1037) );
  GTECH_FD1 RAM_reg_41__2_ ( .D(n2655), .CP(n1), .Q(n1036) );
  GTECH_FD1 RAM_reg_41__1_ ( .D(n2654), .CP(n1), .Q(n1035) );
  GTECH_FD1 RAM_reg_41__0_ ( .D(n2653), .CP(n1), .Q(n1034) );
  GTECH_FD1 RAM_reg_42__7_ ( .D(n2652), .CP(n1), .Q(n1033) );
  GTECH_FD1 RAM_reg_42__6_ ( .D(n2651), .CP(n1), .Q(n1032) );
  GTECH_FD1 RAM_reg_42__5_ ( .D(n2650), .CP(n1), .Q(n1031) );
  GTECH_FD1 RAM_reg_42__4_ ( .D(n2649), .CP(n1), .Q(n1030) );
  GTECH_FD1 RAM_reg_42__3_ ( .D(n2648), .CP(n1), .Q(n1029) );
  GTECH_FD1 RAM_reg_42__2_ ( .D(n2647), .CP(n1), .Q(n1028) );
  GTECH_FD1 RAM_reg_42__1_ ( .D(n2646), .CP(n1), .Q(n1027) );
  GTECH_FD1 RAM_reg_42__0_ ( .D(n2645), .CP(n1), .Q(n1026) );
  GTECH_FD1 RAM_reg_43__7_ ( .D(n2644), .CP(n1), .Q(n1025) );
  GTECH_FD1 RAM_reg_43__6_ ( .D(n2643), .CP(n1), .Q(n1024) );
  GTECH_FD1 RAM_reg_43__5_ ( .D(n2642), .CP(n1), .Q(n1023) );
  GTECH_FD1 RAM_reg_43__4_ ( .D(n2641), .CP(n1), .Q(n1022) );
  GTECH_FD1 RAM_reg_43__3_ ( .D(n2640), .CP(n1), .Q(n1021) );
  GTECH_FD1 RAM_reg_43__2_ ( .D(n2639), .CP(n1), .Q(n1020) );
  GTECH_FD1 RAM_reg_43__1_ ( .D(n2638), .CP(n1), .Q(n1019) );
  GTECH_FD1 RAM_reg_43__0_ ( .D(n2637), .CP(n1), .Q(n1018) );
  GTECH_FD1 RAM_reg_44__7_ ( .D(n2636), .CP(n1), .Q(n1017) );
  GTECH_FD1 RAM_reg_44__6_ ( .D(n2635), .CP(n1), .Q(n1016) );
  GTECH_FD1 RAM_reg_44__5_ ( .D(n2634), .CP(n1), .Q(n1015) );
  GTECH_FD1 RAM_reg_44__4_ ( .D(n2633), .CP(n1), .Q(n1014) );
  GTECH_FD1 RAM_reg_44__3_ ( .D(n2632), .CP(n1), .Q(n1013) );
  GTECH_FD1 RAM_reg_44__2_ ( .D(n2631), .CP(n1), .Q(n1012) );
  GTECH_FD1 RAM_reg_44__1_ ( .D(n2630), .CP(n1), .Q(n1011) );
  GTECH_FD1 RAM_reg_44__0_ ( .D(n2629), .CP(n1), .Q(n1010) );
  GTECH_FD1 RAM_reg_45__7_ ( .D(n2628), .CP(n1), .Q(n1009) );
  GTECH_FD1 RAM_reg_45__6_ ( .D(n2627), .CP(n1), .Q(n1008) );
  GTECH_FD1 RAM_reg_45__5_ ( .D(n2626), .CP(n1), .Q(n1007) );
  GTECH_FD1 RAM_reg_45__4_ ( .D(n2625), .CP(n1), .Q(n1006) );
  GTECH_FD1 RAM_reg_45__3_ ( .D(n2624), .CP(n1), .Q(n1005) );
  GTECH_FD1 RAM_reg_45__2_ ( .D(n2623), .CP(n1), .Q(n1004) );
  GTECH_FD1 RAM_reg_45__1_ ( .D(n2622), .CP(n1), .Q(n1003) );
  GTECH_FD1 RAM_reg_45__0_ ( .D(n2621), .CP(n1), .Q(n1002) );
  GTECH_FD1 RAM_reg_46__7_ ( .D(n2620), .CP(n1), .Q(n1001) );
  GTECH_FD1 RAM_reg_46__6_ ( .D(n2619), .CP(n1), .Q(n1000) );
  GTECH_FD1 RAM_reg_46__5_ ( .D(n2618), .CP(n1), .Q(n999) );
  GTECH_FD1 RAM_reg_46__4_ ( .D(n2617), .CP(n1), .Q(n998) );
  GTECH_FD1 RAM_reg_46__3_ ( .D(n2616), .CP(n1), .Q(n997) );
  GTECH_FD1 RAM_reg_46__2_ ( .D(n2615), .CP(n1), .Q(n996) );
  GTECH_FD1 RAM_reg_46__1_ ( .D(n2614), .CP(n1), .Q(n995) );
  GTECH_FD1 RAM_reg_46__0_ ( .D(n2613), .CP(n1), .Q(n994) );
  GTECH_FD1 RAM_reg_47__7_ ( .D(n2612), .CP(n1), .Q(n993) );
  GTECH_FD1 RAM_reg_47__6_ ( .D(n2611), .CP(n1), .Q(n992) );
  GTECH_FD1 RAM_reg_47__5_ ( .D(n2610), .CP(n1), .Q(n991) );
  GTECH_FD1 RAM_reg_47__4_ ( .D(n2609), .CP(n1), .Q(n990) );
  GTECH_FD1 RAM_reg_47__3_ ( .D(n2608), .CP(n1), .Q(n989) );
  GTECH_FD1 RAM_reg_47__2_ ( .D(n2607), .CP(n1), .Q(n988) );
  GTECH_FD1 RAM_reg_47__1_ ( .D(n2606), .CP(n1), .Q(n987) );
  GTECH_FD1 RAM_reg_47__0_ ( .D(n2605), .CP(n1), .Q(n986) );
  GTECH_FD1 RAM_reg_48__7_ ( .D(n2604), .CP(n1), .Q(n985) );
  GTECH_FD1 RAM_reg_48__6_ ( .D(n2603), .CP(n1), .Q(n984) );
  GTECH_FD1 RAM_reg_48__5_ ( .D(n2602), .CP(n1), .Q(n983) );
  GTECH_FD1 RAM_reg_48__4_ ( .D(n2601), .CP(n1), .Q(n982) );
  GTECH_FD1 RAM_reg_48__3_ ( .D(n2600), .CP(n1), .Q(n981) );
  GTECH_FD1 RAM_reg_48__2_ ( .D(n2599), .CP(n1), .Q(n980) );
  GTECH_FD1 RAM_reg_48__1_ ( .D(n2598), .CP(n1), .Q(n979) );
  GTECH_FD1 RAM_reg_48__0_ ( .D(n2597), .CP(n1), .Q(n978) );
  GTECH_FD1 RAM_reg_49__7_ ( .D(n2596), .CP(n1), .Q(n977) );
  GTECH_FD1 RAM_reg_49__6_ ( .D(n2595), .CP(n1), .Q(n976) );
  GTECH_FD1 RAM_reg_49__5_ ( .D(n2594), .CP(n1), .Q(n975) );
  GTECH_FD1 RAM_reg_49__4_ ( .D(n2593), .CP(n1), .Q(n974) );
  GTECH_FD1 RAM_reg_49__3_ ( .D(n2592), .CP(n1), .Q(n973) );
  GTECH_FD1 RAM_reg_49__2_ ( .D(n2591), .CP(n1), .Q(n972) );
  GTECH_FD1 RAM_reg_49__1_ ( .D(n2590), .CP(n1), .Q(n971) );
  GTECH_FD1 RAM_reg_49__0_ ( .D(n2589), .CP(n1), .Q(n970) );
  GTECH_FD1 RAM_reg_50__7_ ( .D(n2588), .CP(n1), .Q(n969) );
  GTECH_FD1 RAM_reg_50__6_ ( .D(n2587), .CP(n1), .Q(n968) );
  GTECH_FD1 RAM_reg_50__5_ ( .D(n2586), .CP(n1), .Q(n967) );
  GTECH_FD1 RAM_reg_50__4_ ( .D(n2585), .CP(n1), .Q(n966) );
  GTECH_FD1 RAM_reg_50__3_ ( .D(n2584), .CP(n1), .Q(n965) );
  GTECH_FD1 RAM_reg_50__2_ ( .D(n2583), .CP(n1), .Q(n964) );
  GTECH_FD1 RAM_reg_50__1_ ( .D(n2582), .CP(n1), .Q(n963) );
  GTECH_FD1 RAM_reg_50__0_ ( .D(n2581), .CP(n1), .Q(n962) );
  GTECH_FD1 RAM_reg_51__7_ ( .D(n2580), .CP(n1), .Q(n961) );
  GTECH_FD1 RAM_reg_51__6_ ( .D(n2579), .CP(n1), .Q(n960) );
  GTECH_FD1 RAM_reg_51__5_ ( .D(n2578), .CP(n1), .Q(n959) );
  GTECH_FD1 RAM_reg_51__4_ ( .D(n2577), .CP(n1), .Q(n958) );
  GTECH_FD1 RAM_reg_51__3_ ( .D(n2576), .CP(n1), .Q(n957) );
  GTECH_FD1 RAM_reg_51__2_ ( .D(n2575), .CP(n1), .Q(n956) );
  GTECH_FD1 RAM_reg_51__1_ ( .D(n2574), .CP(n1), .Q(n955) );
  GTECH_FD1 RAM_reg_51__0_ ( .D(n2573), .CP(n1), .Q(n954) );
  GTECH_FD1 RAM_reg_52__7_ ( .D(n2572), .CP(n1), .Q(n953) );
  GTECH_FD1 RAM_reg_52__6_ ( .D(n2571), .CP(n1), .Q(n952) );
  GTECH_FD1 RAM_reg_52__5_ ( .D(n2570), .CP(n1), .Q(n951) );
  GTECH_FD1 RAM_reg_52__4_ ( .D(n2569), .CP(n1), .Q(n950) );
  GTECH_FD1 RAM_reg_52__3_ ( .D(n2568), .CP(n1), .Q(n949) );
  GTECH_FD1 RAM_reg_52__2_ ( .D(n2567), .CP(n1), .Q(n948) );
  GTECH_FD1 RAM_reg_52__1_ ( .D(n2566), .CP(n1), .Q(n947) );
  GTECH_FD1 RAM_reg_52__0_ ( .D(n2565), .CP(n1), .Q(n946) );
  GTECH_FD1 RAM_reg_53__7_ ( .D(n2564), .CP(n1), .Q(n945) );
  GTECH_FD1 RAM_reg_53__6_ ( .D(n2563), .CP(n1), .Q(n944) );
  GTECH_FD1 RAM_reg_53__5_ ( .D(n2562), .CP(n1), .Q(n943) );
  GTECH_FD1 RAM_reg_53__4_ ( .D(n2561), .CP(n1), .Q(n942) );
  GTECH_FD1 RAM_reg_53__3_ ( .D(n2560), .CP(n1), .Q(n941) );
  GTECH_FD1 RAM_reg_53__2_ ( .D(n2559), .CP(n1), .Q(n940) );
  GTECH_FD1 RAM_reg_53__1_ ( .D(n2558), .CP(n1), .Q(n939) );
  GTECH_FD1 RAM_reg_53__0_ ( .D(n2557), .CP(n1), .Q(n938) );
  GTECH_FD1 RAM_reg_54__7_ ( .D(n2556), .CP(n1), .Q(n937) );
  GTECH_FD1 RAM_reg_54__6_ ( .D(n2555), .CP(n1), .Q(n936) );
  GTECH_FD1 RAM_reg_54__5_ ( .D(n2554), .CP(n1), .Q(n935) );
  GTECH_FD1 RAM_reg_54__4_ ( .D(n2553), .CP(n1), .Q(n934) );
  GTECH_FD1 RAM_reg_54__3_ ( .D(n2552), .CP(n1), .Q(n933) );
  GTECH_FD1 RAM_reg_54__2_ ( .D(n2551), .CP(n1), .Q(n932) );
  GTECH_FD1 RAM_reg_54__1_ ( .D(n2550), .CP(n1), .Q(n931) );
  GTECH_FD1 RAM_reg_54__0_ ( .D(n2549), .CP(n1), .Q(n930) );
  GTECH_FD1 RAM_reg_55__7_ ( .D(n2548), .CP(n1), .Q(n929) );
  GTECH_FD1 RAM_reg_55__6_ ( .D(n2547), .CP(n1), .Q(n928) );
  GTECH_FD1 RAM_reg_55__5_ ( .D(n2546), .CP(n1), .Q(n927) );
  GTECH_FD1 RAM_reg_55__4_ ( .D(n2545), .CP(n1), .Q(n926) );
  GTECH_FD1 RAM_reg_55__3_ ( .D(n2544), .CP(n1), .Q(n925) );
  GTECH_FD1 RAM_reg_55__2_ ( .D(n2543), .CP(n1), .Q(n924) );
  GTECH_FD1 RAM_reg_55__1_ ( .D(n2542), .CP(n1), .Q(n923) );
  GTECH_FD1 RAM_reg_55__0_ ( .D(n2541), .CP(n1), .Q(n922) );
  GTECH_FD1 RAM_reg_56__7_ ( .D(n2540), .CP(n1), .Q(n921) );
  GTECH_FD1 RAM_reg_56__6_ ( .D(n2539), .CP(n1), .Q(n920) );
  GTECH_FD1 RAM_reg_56__5_ ( .D(n2538), .CP(n1), .Q(n919) );
  GTECH_FD1 RAM_reg_56__4_ ( .D(n2537), .CP(n1), .Q(n918) );
  GTECH_FD1 RAM_reg_56__3_ ( .D(n2536), .CP(n1), .Q(n917) );
  GTECH_FD1 RAM_reg_56__2_ ( .D(n2535), .CP(n1), .Q(n916) );
  GTECH_FD1 RAM_reg_56__1_ ( .D(n2534), .CP(n1), .Q(n915) );
  GTECH_FD1 RAM_reg_56__0_ ( .D(n2533), .CP(n1), .Q(n914) );
  GTECH_FD1 RAM_reg_57__7_ ( .D(n2532), .CP(n1), .Q(n913) );
  GTECH_FD1 RAM_reg_57__6_ ( .D(n2531), .CP(n1), .Q(n912) );
  GTECH_FD1 RAM_reg_57__5_ ( .D(n2530), .CP(n1), .Q(n911) );
  GTECH_FD1 RAM_reg_57__4_ ( .D(n2529), .CP(n1), .Q(n910) );
  GTECH_FD1 RAM_reg_57__3_ ( .D(n2528), .CP(n1), .Q(n909) );
  GTECH_FD1 RAM_reg_57__2_ ( .D(n2527), .CP(n1), .Q(n908) );
  GTECH_FD1 RAM_reg_57__1_ ( .D(n2526), .CP(n1), .Q(n907) );
  GTECH_FD1 RAM_reg_57__0_ ( .D(n2525), .CP(n1), .Q(n906) );
  GTECH_FD1 RAM_reg_58__7_ ( .D(n2524), .CP(n1), .Q(n905) );
  GTECH_FD1 RAM_reg_58__6_ ( .D(n2523), .CP(n1), .Q(n904) );
  GTECH_FD1 RAM_reg_58__5_ ( .D(n2522), .CP(n1), .Q(n903) );
  GTECH_FD1 RAM_reg_58__4_ ( .D(n2521), .CP(n1), .Q(n902) );
  GTECH_FD1 RAM_reg_58__3_ ( .D(n2520), .CP(n1), .Q(n901) );
  GTECH_FD1 RAM_reg_58__2_ ( .D(n2519), .CP(n1), .Q(n900) );
  GTECH_FD1 RAM_reg_58__1_ ( .D(n2518), .CP(n1), .Q(n899) );
  GTECH_FD1 RAM_reg_58__0_ ( .D(n2517), .CP(n1), .Q(n898) );
  GTECH_FD1 RAM_reg_59__7_ ( .D(n2516), .CP(n1), .Q(n897) );
  GTECH_FD1 RAM_reg_59__6_ ( .D(n2515), .CP(n1), .Q(n896) );
  GTECH_FD1 RAM_reg_59__5_ ( .D(n2514), .CP(n1), .Q(n895) );
  GTECH_FD1 RAM_reg_59__4_ ( .D(n2513), .CP(n1), .Q(n894) );
  GTECH_FD1 RAM_reg_59__3_ ( .D(n2512), .CP(n1), .Q(n893) );
  GTECH_FD1 RAM_reg_59__2_ ( .D(n2511), .CP(n1), .Q(n892) );
  GTECH_FD1 RAM_reg_59__1_ ( .D(n2510), .CP(n1), .Q(n891) );
  GTECH_FD1 RAM_reg_59__0_ ( .D(n2509), .CP(n1), .Q(n890) );
  GTECH_FD1 RAM_reg_60__7_ ( .D(n2508), .CP(n1), .Q(n889) );
  GTECH_FD1 RAM_reg_60__6_ ( .D(n2507), .CP(n1), .Q(n888) );
  GTECH_FD1 RAM_reg_60__5_ ( .D(n2506), .CP(n1), .Q(n887) );
  GTECH_FD1 RAM_reg_60__4_ ( .D(n2505), .CP(n1), .Q(n886) );
  GTECH_FD1 RAM_reg_60__3_ ( .D(n2504), .CP(n1), .Q(n885) );
  GTECH_FD1 RAM_reg_60__2_ ( .D(n2503), .CP(n1), .Q(n884) );
  GTECH_FD1 RAM_reg_60__1_ ( .D(n2502), .CP(n1), .Q(n883) );
  GTECH_FD1 RAM_reg_60__0_ ( .D(n2501), .CP(n1), .Q(n882) );
  GTECH_FD1 RAM_reg_61__7_ ( .D(n2500), .CP(n1), .Q(n881) );
  GTECH_FD1 RAM_reg_61__6_ ( .D(n2499), .CP(n1), .Q(n880) );
  GTECH_FD1 RAM_reg_61__5_ ( .D(n2498), .CP(n1), .Q(n879) );
  GTECH_FD1 RAM_reg_61__4_ ( .D(n2497), .CP(n1), .Q(n878) );
  GTECH_FD1 RAM_reg_61__3_ ( .D(n2496), .CP(n1), .Q(n877) );
  GTECH_FD1 RAM_reg_61__2_ ( .D(n2495), .CP(n1), .Q(n876) );
  GTECH_FD1 RAM_reg_61__1_ ( .D(n2494), .CP(n1), .Q(n875) );
  GTECH_FD1 RAM_reg_61__0_ ( .D(n2493), .CP(n1), .Q(n874) );
  GTECH_FD1 RAM_reg_62__7_ ( .D(n2492), .CP(n1), .Q(n873) );
  GTECH_FD1 RAM_reg_62__6_ ( .D(n2491), .CP(n1), .Q(n872) );
  GTECH_FD1 RAM_reg_62__5_ ( .D(n2490), .CP(n1), .Q(n871) );
  GTECH_FD1 RAM_reg_62__4_ ( .D(n2489), .CP(n1), .Q(n870) );
  GTECH_FD1 RAM_reg_62__3_ ( .D(n2488), .CP(n1), .Q(n869) );
  GTECH_FD1 RAM_reg_62__2_ ( .D(n2487), .CP(n1), .Q(n868) );
  GTECH_FD1 RAM_reg_62__1_ ( .D(n2486), .CP(n1), .Q(n867) );
  GTECH_FD1 RAM_reg_62__0_ ( .D(n2485), .CP(n1), .Q(n866) );
  GTECH_FD1 RAM_reg_63__7_ ( .D(n2484), .CP(n1), .Q(n865) );
  GTECH_FD1 RAM_reg_63__6_ ( .D(n2483), .CP(n1), .Q(n864) );
  GTECH_FD1 RAM_reg_63__5_ ( .D(n2482), .CP(n1), .Q(n863) );
  GTECH_FD1 RAM_reg_63__4_ ( .D(n2481), .CP(n1), .Q(n862) );
  GTECH_FD1 RAM_reg_63__3_ ( .D(n2480), .CP(n1), .Q(n861) );
  GTECH_FD1 RAM_reg_63__2_ ( .D(n2479), .CP(n1), .Q(n860) );
  GTECH_FD1 RAM_reg_63__1_ ( .D(n2478), .CP(n1), .Q(n859) );
  GTECH_FD1 RAM_reg_63__0_ ( .D(n2477), .CP(n1), .Q(n858) );
  GTECH_FD1 RAM_reg_64__7_ ( .D(n2476), .CP(n1), .Q(n857) );
  GTECH_FD1 RAM_reg_64__6_ ( .D(n2475), .CP(n1), .Q(n856) );
  GTECH_FD1 RAM_reg_64__5_ ( .D(n2474), .CP(n1), .Q(n855) );
  GTECH_FD1 RAM_reg_64__4_ ( .D(n2473), .CP(n1), .Q(n854) );
  GTECH_FD1 RAM_reg_64__3_ ( .D(n2472), .CP(n1), .Q(n853) );
  GTECH_FD1 RAM_reg_64__2_ ( .D(n2471), .CP(n1), .Q(n852) );
  GTECH_FD1 RAM_reg_64__1_ ( .D(n2470), .CP(n1), .Q(n851) );
  GTECH_FD1 RAM_reg_64__0_ ( .D(n2469), .CP(n1), .Q(n850) );
  GTECH_FD1 RAM_reg_65__7_ ( .D(n2468), .CP(n1), .Q(n849) );
  GTECH_FD1 RAM_reg_65__6_ ( .D(n2467), .CP(n1), .Q(n848) );
  GTECH_FD1 RAM_reg_65__5_ ( .D(n2466), .CP(n1), .Q(n847) );
  GTECH_FD1 RAM_reg_65__4_ ( .D(n2465), .CP(n1), .Q(n846) );
  GTECH_FD1 RAM_reg_65__3_ ( .D(n2464), .CP(n1), .Q(n845) );
  GTECH_FD1 RAM_reg_65__2_ ( .D(n2463), .CP(n1), .Q(n844) );
  GTECH_FD1 RAM_reg_65__1_ ( .D(n2462), .CP(n1), .Q(n843) );
  GTECH_FD1 RAM_reg_65__0_ ( .D(n2461), .CP(n1), .Q(n842) );
  GTECH_FD1 RAM_reg_66__7_ ( .D(n2460), .CP(n1), .Q(n841) );
  GTECH_FD1 RAM_reg_66__6_ ( .D(n2459), .CP(n1), .Q(n840) );
  GTECH_FD1 RAM_reg_66__5_ ( .D(n2458), .CP(n1), .Q(n839) );
  GTECH_FD1 RAM_reg_66__4_ ( .D(n2457), .CP(n1), .Q(n838) );
  GTECH_FD1 RAM_reg_66__3_ ( .D(n2456), .CP(n1), .Q(n837) );
  GTECH_FD1 RAM_reg_66__2_ ( .D(n2455), .CP(n1), .Q(n836) );
  GTECH_FD1 RAM_reg_66__1_ ( .D(n2454), .CP(n1), .Q(n835) );
  GTECH_FD1 RAM_reg_66__0_ ( .D(n2453), .CP(n1), .Q(n834) );
  GTECH_FD1 RAM_reg_67__7_ ( .D(n2452), .CP(n1), .Q(n833) );
  GTECH_FD1 RAM_reg_67__6_ ( .D(n2451), .CP(n1), .Q(n832) );
  GTECH_FD1 RAM_reg_67__5_ ( .D(n2450), .CP(n1), .Q(n831) );
  GTECH_FD1 RAM_reg_67__4_ ( .D(n2449), .CP(n1), .Q(n830) );
  GTECH_FD1 RAM_reg_67__3_ ( .D(n2448), .CP(n1), .Q(n829) );
  GTECH_FD1 RAM_reg_67__2_ ( .D(n2447), .CP(n1), .Q(n828) );
  GTECH_FD1 RAM_reg_67__1_ ( .D(n2446), .CP(n1), .Q(n827) );
  GTECH_FD1 RAM_reg_67__0_ ( .D(n2445), .CP(n1), .Q(n826) );
  GTECH_FD1 RAM_reg_68__7_ ( .D(n2444), .CP(n1), .Q(n825) );
  GTECH_FD1 RAM_reg_68__6_ ( .D(n2443), .CP(n1), .Q(n824) );
  GTECH_FD1 RAM_reg_68__5_ ( .D(n2442), .CP(n1), .Q(n823) );
  GTECH_FD1 RAM_reg_68__4_ ( .D(n2441), .CP(n1), .Q(n822) );
  GTECH_FD1 RAM_reg_68__3_ ( .D(n2440), .CP(n1), .Q(n821) );
  GTECH_FD1 RAM_reg_68__2_ ( .D(n2439), .CP(n1), .Q(n820) );
  GTECH_FD1 RAM_reg_68__1_ ( .D(n2438), .CP(n1), .Q(n819) );
  GTECH_FD1 RAM_reg_68__0_ ( .D(n2437), .CP(n1), .Q(n818) );
  GTECH_FD1 RAM_reg_69__7_ ( .D(n2436), .CP(n1), .Q(n817) );
  GTECH_FD1 RAM_reg_69__6_ ( .D(n2435), .CP(n1), .Q(n816) );
  GTECH_FD1 RAM_reg_69__5_ ( .D(n2434), .CP(n1), .Q(n815) );
  GTECH_FD1 RAM_reg_69__4_ ( .D(n2433), .CP(n1), .Q(n814) );
  GTECH_FD1 RAM_reg_69__3_ ( .D(n2432), .CP(n1), .Q(n813) );
  GTECH_FD1 RAM_reg_69__2_ ( .D(n2431), .CP(n1), .Q(n812) );
  GTECH_FD1 RAM_reg_69__1_ ( .D(n2430), .CP(n1), .Q(n811) );
  GTECH_FD1 RAM_reg_69__0_ ( .D(n2429), .CP(n1), .Q(n810) );
  GTECH_FD1 RAM_reg_70__7_ ( .D(n2428), .CP(n1), .Q(n809) );
  GTECH_FD1 RAM_reg_70__6_ ( .D(n2427), .CP(n1), .Q(n808) );
  GTECH_FD1 RAM_reg_70__5_ ( .D(n2426), .CP(n1), .Q(n807) );
  GTECH_FD1 RAM_reg_70__4_ ( .D(n2425), .CP(n1), .Q(n806) );
  GTECH_FD1 RAM_reg_70__3_ ( .D(n2424), .CP(n1), .Q(n805) );
  GTECH_FD1 RAM_reg_70__2_ ( .D(n2423), .CP(n1), .Q(n804) );
  GTECH_FD1 RAM_reg_70__1_ ( .D(n2422), .CP(n1), .Q(n803) );
  GTECH_FD1 RAM_reg_70__0_ ( .D(n2421), .CP(n1), .Q(n802) );
  GTECH_FD1 RAM_reg_71__7_ ( .D(n2420), .CP(n1), .Q(n801) );
  GTECH_FD1 RAM_reg_71__6_ ( .D(n2419), .CP(n1), .Q(n800) );
  GTECH_FD1 RAM_reg_71__5_ ( .D(n2418), .CP(n1), .Q(n799) );
  GTECH_FD1 RAM_reg_71__4_ ( .D(n2417), .CP(n1), .Q(n798) );
  GTECH_FD1 RAM_reg_71__3_ ( .D(n2416), .CP(n1), .Q(n797) );
  GTECH_FD1 RAM_reg_71__2_ ( .D(n2415), .CP(n1), .Q(n796) );
  GTECH_FD1 RAM_reg_71__1_ ( .D(n2414), .CP(n1), .Q(n795) );
  GTECH_FD1 RAM_reg_71__0_ ( .D(n2413), .CP(n1), .Q(n794) );
  GTECH_FD1 RAM_reg_72__7_ ( .D(n2412), .CP(n1), .Q(n793) );
  GTECH_FD1 RAM_reg_72__6_ ( .D(n2411), .CP(n1), .Q(n792) );
  GTECH_FD1 RAM_reg_72__5_ ( .D(n2410), .CP(n1), .Q(n791) );
  GTECH_FD1 RAM_reg_72__4_ ( .D(n2409), .CP(n1), .Q(n790) );
  GTECH_FD1 RAM_reg_72__3_ ( .D(n2408), .CP(n1), .Q(n789) );
  GTECH_FD1 RAM_reg_72__2_ ( .D(n2407), .CP(n1), .Q(n788) );
  GTECH_FD1 RAM_reg_72__1_ ( .D(n2406), .CP(n1), .Q(n787) );
  GTECH_FD1 RAM_reg_72__0_ ( .D(n2405), .CP(n1), .Q(n786) );
  GTECH_FD1 RAM_reg_73__7_ ( .D(n2404), .CP(n1), .Q(n785) );
  GTECH_FD1 RAM_reg_73__6_ ( .D(n2403), .CP(n1), .Q(n784) );
  GTECH_FD1 RAM_reg_73__5_ ( .D(n2402), .CP(n1), .Q(n783) );
  GTECH_FD1 RAM_reg_73__4_ ( .D(n2401), .CP(n1), .Q(n782) );
  GTECH_FD1 RAM_reg_73__3_ ( .D(n2400), .CP(n1), .Q(n781) );
  GTECH_FD1 RAM_reg_73__2_ ( .D(n2399), .CP(n1), .Q(n780) );
  GTECH_FD1 RAM_reg_73__1_ ( .D(n2398), .CP(n1), .Q(n779) );
  GTECH_FD1 RAM_reg_73__0_ ( .D(n2397), .CP(n1), .Q(n778) );
  GTECH_FD1 RAM_reg_74__7_ ( .D(n2396), .CP(n1), .Q(n777) );
  GTECH_FD1 RAM_reg_74__6_ ( .D(n2395), .CP(n1), .Q(n776) );
  GTECH_FD1 RAM_reg_74__5_ ( .D(n2394), .CP(n1), .Q(n775) );
  GTECH_FD1 RAM_reg_74__4_ ( .D(n2393), .CP(n1), .Q(n774) );
  GTECH_FD1 RAM_reg_74__3_ ( .D(n2392), .CP(n1), .Q(n773) );
  GTECH_FD1 RAM_reg_74__2_ ( .D(n2391), .CP(n1), .Q(n772) );
  GTECH_FD1 RAM_reg_74__1_ ( .D(n2390), .CP(n1), .Q(n771) );
  GTECH_FD1 RAM_reg_74__0_ ( .D(n2389), .CP(n1), .Q(n770) );
  GTECH_FD1 RAM_reg_75__7_ ( .D(n2388), .CP(n1), .Q(n769) );
  GTECH_FD1 RAM_reg_75__6_ ( .D(n2387), .CP(n1), .Q(n768) );
  GTECH_FD1 RAM_reg_75__5_ ( .D(n2386), .CP(n1), .Q(n767) );
  GTECH_FD1 RAM_reg_75__4_ ( .D(n2385), .CP(n1), .Q(n766) );
  GTECH_FD1 RAM_reg_75__3_ ( .D(n2384), .CP(n1), .Q(n765) );
  GTECH_FD1 RAM_reg_75__2_ ( .D(n2383), .CP(n1), .Q(n764) );
  GTECH_FD1 RAM_reg_75__1_ ( .D(n2382), .CP(n1), .Q(n763) );
  GTECH_FD1 RAM_reg_75__0_ ( .D(n2381), .CP(n1), .Q(n762) );
  GTECH_FD1 RAM_reg_76__7_ ( .D(n2380), .CP(n1), .Q(n761) );
  GTECH_FD1 RAM_reg_76__6_ ( .D(n2379), .CP(n1), .Q(n760) );
  GTECH_FD1 RAM_reg_76__5_ ( .D(n2378), .CP(n1), .Q(n759) );
  GTECH_FD1 RAM_reg_76__4_ ( .D(n2377), .CP(n1), .Q(n758) );
  GTECH_FD1 RAM_reg_76__3_ ( .D(n2376), .CP(n1), .Q(n757) );
  GTECH_FD1 RAM_reg_76__2_ ( .D(n2375), .CP(n1), .Q(n756) );
  GTECH_FD1 RAM_reg_76__1_ ( .D(n2374), .CP(n1), .Q(n755) );
  GTECH_FD1 RAM_reg_76__0_ ( .D(n2373), .CP(n1), .Q(n754) );
  GTECH_FD1 RAM_reg_77__7_ ( .D(n2372), .CP(n1), .Q(n753) );
  GTECH_FD1 RAM_reg_77__6_ ( .D(n2371), .CP(n1), .Q(n752) );
  GTECH_FD1 RAM_reg_77__5_ ( .D(n2370), .CP(n1), .Q(n751) );
  GTECH_FD1 RAM_reg_77__4_ ( .D(n2369), .CP(n1), .Q(n750) );
  GTECH_FD1 RAM_reg_77__3_ ( .D(n2368), .CP(n1), .Q(n749) );
  GTECH_FD1 RAM_reg_77__2_ ( .D(n2367), .CP(n1), .Q(n748) );
  GTECH_FD1 RAM_reg_77__1_ ( .D(n2366), .CP(n1), .Q(n747) );
  GTECH_FD1 RAM_reg_77__0_ ( .D(n2365), .CP(n1), .Q(n746) );
  GTECH_FD1 RAM_reg_78__7_ ( .D(n2364), .CP(n1), .Q(n745) );
  GTECH_FD1 RAM_reg_78__6_ ( .D(n2363), .CP(n1), .Q(n744) );
  GTECH_FD1 RAM_reg_78__5_ ( .D(n2362), .CP(n1), .Q(n743) );
  GTECH_FD1 RAM_reg_78__4_ ( .D(n2361), .CP(n1), .Q(n742) );
  GTECH_FD1 RAM_reg_78__3_ ( .D(n2360), .CP(n1), .Q(n741) );
  GTECH_FD1 RAM_reg_78__2_ ( .D(n2359), .CP(n1), .Q(n740) );
  GTECH_FD1 RAM_reg_78__1_ ( .D(n2358), .CP(n1), .Q(n739) );
  GTECH_FD1 RAM_reg_78__0_ ( .D(n2357), .CP(n1), .Q(n738) );
  GTECH_FD1 RAM_reg_79__7_ ( .D(n2356), .CP(n1), .Q(n737) );
  GTECH_FD1 RAM_reg_79__6_ ( .D(n2355), .CP(n1), .Q(n736) );
  GTECH_FD1 RAM_reg_79__5_ ( .D(n2354), .CP(n1), .Q(n735) );
  GTECH_FD1 RAM_reg_79__4_ ( .D(n2353), .CP(n1), .Q(n734) );
  GTECH_FD1 RAM_reg_79__3_ ( .D(n2352), .CP(n1), .Q(n733) );
  GTECH_FD1 RAM_reg_79__2_ ( .D(n2351), .CP(n1), .Q(n732) );
  GTECH_FD1 RAM_reg_79__1_ ( .D(n2350), .CP(n1), .Q(n731) );
  GTECH_FD1 RAM_reg_79__0_ ( .D(n2349), .CP(n1), .Q(n730) );
  GTECH_FD1 RAM_reg_80__7_ ( .D(n2348), .CP(n1), .Q(n729) );
  GTECH_FD1 RAM_reg_80__6_ ( .D(n2347), .CP(n1), .Q(n728) );
  GTECH_FD1 RAM_reg_80__5_ ( .D(n2346), .CP(n1), .Q(n727) );
  GTECH_FD1 RAM_reg_80__4_ ( .D(n2345), .CP(n1), .Q(n726) );
  GTECH_FD1 RAM_reg_80__3_ ( .D(n2344), .CP(n1), .Q(n725) );
  GTECH_FD1 RAM_reg_80__2_ ( .D(n2343), .CP(n1), .Q(n724) );
  GTECH_FD1 RAM_reg_80__1_ ( .D(n2342), .CP(n1), .Q(n723) );
  GTECH_FD1 RAM_reg_80__0_ ( .D(n2341), .CP(n1), .Q(n722) );
  GTECH_FD1 RAM_reg_81__7_ ( .D(n2340), .CP(n1), .Q(n721) );
  GTECH_FD1 RAM_reg_81__6_ ( .D(n2339), .CP(n1), .Q(n720) );
  GTECH_FD1 RAM_reg_81__5_ ( .D(n2338), .CP(n1), .Q(n719) );
  GTECH_FD1 RAM_reg_81__4_ ( .D(n2337), .CP(n1), .Q(n718) );
  GTECH_FD1 RAM_reg_81__3_ ( .D(n2336), .CP(n1), .Q(n717) );
  GTECH_FD1 RAM_reg_81__2_ ( .D(n2335), .CP(n1), .Q(n716) );
  GTECH_FD1 RAM_reg_81__1_ ( .D(n2334), .CP(n1), .Q(n715) );
  GTECH_FD1 RAM_reg_81__0_ ( .D(n2333), .CP(n1), .Q(n714) );
  GTECH_FD1 RAM_reg_82__7_ ( .D(n2332), .CP(n1), .Q(n713) );
  GTECH_FD1 RAM_reg_82__6_ ( .D(n2331), .CP(n1), .Q(n712) );
  GTECH_FD1 RAM_reg_82__5_ ( .D(n2330), .CP(n1), .Q(n711) );
  GTECH_FD1 RAM_reg_82__4_ ( .D(n2329), .CP(n1), .Q(n710) );
  GTECH_FD1 RAM_reg_82__3_ ( .D(n2328), .CP(n1), .Q(n709) );
  GTECH_FD1 RAM_reg_82__2_ ( .D(n2327), .CP(n1), .Q(n708) );
  GTECH_FD1 RAM_reg_82__1_ ( .D(n2326), .CP(n1), .Q(n707) );
  GTECH_FD1 RAM_reg_82__0_ ( .D(n2325), .CP(n1), .Q(n706) );
  GTECH_FD1 RAM_reg_83__7_ ( .D(n2324), .CP(n1), .Q(n705) );
  GTECH_FD1 RAM_reg_83__6_ ( .D(n2323), .CP(n1), .Q(n704) );
  GTECH_FD1 RAM_reg_83__5_ ( .D(n2322), .CP(n1), .Q(n703) );
  GTECH_FD1 RAM_reg_83__4_ ( .D(n2321), .CP(n1), .Q(n702) );
  GTECH_FD1 RAM_reg_83__3_ ( .D(n2320), .CP(n1), .Q(n701) );
  GTECH_FD1 RAM_reg_83__2_ ( .D(n2319), .CP(n1), .Q(n700) );
  GTECH_FD1 RAM_reg_83__1_ ( .D(n2318), .CP(n1), .Q(n699) );
  GTECH_FD1 RAM_reg_83__0_ ( .D(n2317), .CP(n1), .Q(n698) );
  GTECH_FD1 RAM_reg_84__7_ ( .D(n2316), .CP(n1), .Q(n697) );
  GTECH_FD1 RAM_reg_84__6_ ( .D(n2315), .CP(n1), .Q(n696) );
  GTECH_FD1 RAM_reg_84__5_ ( .D(n2314), .CP(n1), .Q(n695) );
  GTECH_FD1 RAM_reg_84__4_ ( .D(n2313), .CP(n1), .Q(n694) );
  GTECH_FD1 RAM_reg_84__3_ ( .D(n2312), .CP(n1), .Q(n693) );
  GTECH_FD1 RAM_reg_84__2_ ( .D(n2311), .CP(n1), .Q(n692) );
  GTECH_FD1 RAM_reg_84__1_ ( .D(n2310), .CP(n1), .Q(n691) );
  GTECH_FD1 RAM_reg_84__0_ ( .D(n2309), .CP(n1), .Q(n690) );
  GTECH_FD1 RAM_reg_85__7_ ( .D(n2308), .CP(n1), .Q(n689) );
  GTECH_FD1 RAM_reg_85__6_ ( .D(n2307), .CP(n1), .Q(n688) );
  GTECH_FD1 RAM_reg_85__5_ ( .D(n2306), .CP(n1), .Q(n687) );
  GTECH_FD1 RAM_reg_85__4_ ( .D(n2305), .CP(n1), .Q(n686) );
  GTECH_FD1 RAM_reg_85__3_ ( .D(n2304), .CP(n1), .Q(n685) );
  GTECH_FD1 RAM_reg_85__2_ ( .D(n2303), .CP(n1), .Q(n684) );
  GTECH_FD1 RAM_reg_85__1_ ( .D(n2302), .CP(n1), .Q(n683) );
  GTECH_FD1 RAM_reg_85__0_ ( .D(n2301), .CP(n1), .Q(n682) );
  GTECH_FD1 RAM_reg_86__7_ ( .D(n2300), .CP(n1), .Q(n681) );
  GTECH_FD1 RAM_reg_86__6_ ( .D(n2299), .CP(n1), .Q(n680) );
  GTECH_FD1 RAM_reg_86__5_ ( .D(n2298), .CP(n1), .Q(n679) );
  GTECH_FD1 RAM_reg_86__4_ ( .D(n2297), .CP(n1), .Q(n678) );
  GTECH_FD1 RAM_reg_86__3_ ( .D(n2296), .CP(n1), .Q(n677) );
  GTECH_FD1 RAM_reg_86__2_ ( .D(n2295), .CP(n1), .Q(n676) );
  GTECH_FD1 RAM_reg_86__1_ ( .D(n2294), .CP(n1), .Q(n675) );
  GTECH_FD1 RAM_reg_86__0_ ( .D(n2293), .CP(n1), .Q(n674) );
  GTECH_FD1 RAM_reg_87__7_ ( .D(n2292), .CP(n1), .Q(n673) );
  GTECH_FD1 RAM_reg_87__6_ ( .D(n2291), .CP(n1), .Q(n672) );
  GTECH_FD1 RAM_reg_87__5_ ( .D(n2290), .CP(n1), .Q(n671) );
  GTECH_FD1 RAM_reg_87__4_ ( .D(n2289), .CP(n1), .Q(n670) );
  GTECH_FD1 RAM_reg_87__3_ ( .D(n2288), .CP(n1), .Q(n669) );
  GTECH_FD1 RAM_reg_87__2_ ( .D(n2287), .CP(n1), .Q(n668) );
  GTECH_FD1 RAM_reg_87__1_ ( .D(n2286), .CP(n1), .Q(n667) );
  GTECH_FD1 RAM_reg_87__0_ ( .D(n2285), .CP(n1), .Q(n666) );
  GTECH_FD1 RAM_reg_88__7_ ( .D(n2284), .CP(n1), .Q(n665) );
  GTECH_FD1 RAM_reg_88__6_ ( .D(n2283), .CP(n1), .Q(n664) );
  GTECH_FD1 RAM_reg_88__5_ ( .D(n2282), .CP(n1), .Q(n663) );
  GTECH_FD1 RAM_reg_88__4_ ( .D(n2281), .CP(n1), .Q(n662) );
  GTECH_FD1 RAM_reg_88__3_ ( .D(n2280), .CP(n1), .Q(n661) );
  GTECH_FD1 RAM_reg_88__2_ ( .D(n2279), .CP(n1), .Q(n660) );
  GTECH_FD1 RAM_reg_88__1_ ( .D(n2278), .CP(n1), .Q(n659) );
  GTECH_FD1 RAM_reg_88__0_ ( .D(n2277), .CP(n1), .Q(n658) );
  GTECH_FD1 RAM_reg_89__7_ ( .D(n2276), .CP(n1), .Q(n657) );
  GTECH_FD1 RAM_reg_89__6_ ( .D(n2275), .CP(n1), .Q(n656) );
  GTECH_FD1 RAM_reg_89__5_ ( .D(n2274), .CP(n1), .Q(n655) );
  GTECH_FD1 RAM_reg_89__4_ ( .D(n2273), .CP(n1), .Q(n654) );
  GTECH_FD1 RAM_reg_89__3_ ( .D(n2272), .CP(n1), .Q(n653) );
  GTECH_FD1 RAM_reg_89__2_ ( .D(n2271), .CP(n1), .Q(n652) );
  GTECH_FD1 RAM_reg_89__1_ ( .D(n2270), .CP(n1), .Q(n651) );
  GTECH_FD1 RAM_reg_89__0_ ( .D(n2269), .CP(n1), .Q(n650) );
  GTECH_FD1 RAM_reg_90__7_ ( .D(n2268), .CP(n1), .Q(n649) );
  GTECH_FD1 RAM_reg_90__6_ ( .D(n2267), .CP(n1), .Q(n648) );
  GTECH_FD1 RAM_reg_90__5_ ( .D(n2266), .CP(n1), .Q(n647) );
  GTECH_FD1 RAM_reg_90__4_ ( .D(n2265), .CP(n1), .Q(n646) );
  GTECH_FD1 RAM_reg_90__3_ ( .D(n2264), .CP(n1), .Q(n645) );
  GTECH_FD1 RAM_reg_90__2_ ( .D(n2263), .CP(n1), .Q(n644) );
  GTECH_FD1 RAM_reg_90__1_ ( .D(n2262), .CP(n1), .Q(n643) );
  GTECH_FD1 RAM_reg_90__0_ ( .D(n2261), .CP(n1), .Q(n642) );
  GTECH_FD1 RAM_reg_91__7_ ( .D(n2260), .CP(n1), .Q(n641) );
  GTECH_FD1 RAM_reg_91__6_ ( .D(n2259), .CP(n1), .Q(n640) );
  GTECH_FD1 RAM_reg_91__5_ ( .D(n2258), .CP(n1), .Q(n639) );
  GTECH_FD1 RAM_reg_91__4_ ( .D(n2257), .CP(n1), .Q(n638) );
  GTECH_FD1 RAM_reg_91__3_ ( .D(n2256), .CP(n1), .Q(n637) );
  GTECH_FD1 RAM_reg_91__2_ ( .D(n2255), .CP(n1), .Q(n636) );
  GTECH_FD1 RAM_reg_91__1_ ( .D(n2254), .CP(n1), .Q(n635) );
  GTECH_FD1 RAM_reg_91__0_ ( .D(n2253), .CP(n1), .Q(n634) );
  GTECH_FD1 RAM_reg_92__7_ ( .D(n2252), .CP(n1), .Q(n633) );
  GTECH_FD1 RAM_reg_92__6_ ( .D(n2251), .CP(n1), .Q(n632) );
  GTECH_FD1 RAM_reg_92__5_ ( .D(n2250), .CP(n1), .Q(n631) );
  GTECH_FD1 RAM_reg_92__4_ ( .D(n2249), .CP(n1), .Q(n630) );
  GTECH_FD1 RAM_reg_92__3_ ( .D(n2248), .CP(n1), .Q(n629) );
  GTECH_FD1 RAM_reg_92__2_ ( .D(n2247), .CP(n1), .Q(n628) );
  GTECH_FD1 RAM_reg_92__1_ ( .D(n2246), .CP(n1), .Q(n627) );
  GTECH_FD1 RAM_reg_92__0_ ( .D(n2245), .CP(n1), .Q(n626) );
  GTECH_FD1 RAM_reg_93__7_ ( .D(n2244), .CP(n1), .Q(n625) );
  GTECH_FD1 RAM_reg_93__6_ ( .D(n2243), .CP(n1), .Q(n624) );
  GTECH_FD1 RAM_reg_93__5_ ( .D(n2242), .CP(n1), .Q(n623) );
  GTECH_FD1 RAM_reg_93__4_ ( .D(n2241), .CP(n1), .Q(n622) );
  GTECH_FD1 RAM_reg_93__3_ ( .D(n2240), .CP(n1), .Q(n621) );
  GTECH_FD1 RAM_reg_93__2_ ( .D(n2239), .CP(n1), .Q(n620) );
  GTECH_FD1 RAM_reg_93__1_ ( .D(n2238), .CP(n1), .Q(n619) );
  GTECH_FD1 RAM_reg_93__0_ ( .D(n2237), .CP(n1), .Q(n618) );
  GTECH_FD1 RAM_reg_94__7_ ( .D(n2236), .CP(n1), .Q(n617) );
  GTECH_FD1 RAM_reg_94__6_ ( .D(n2235), .CP(n1), .Q(n616) );
  GTECH_FD1 RAM_reg_94__5_ ( .D(n2234), .CP(n1), .Q(n615) );
  GTECH_FD1 RAM_reg_94__4_ ( .D(n2233), .CP(n1), .Q(n614) );
  GTECH_FD1 RAM_reg_94__3_ ( .D(n2232), .CP(n1), .Q(n613) );
  GTECH_FD1 RAM_reg_94__2_ ( .D(n2231), .CP(n1), .Q(n612) );
  GTECH_FD1 RAM_reg_94__1_ ( .D(n2230), .CP(n1), .Q(n611) );
  GTECH_FD1 RAM_reg_94__0_ ( .D(n2229), .CP(n1), .Q(n610) );
  GTECH_FD1 RAM_reg_95__7_ ( .D(n2228), .CP(n1), .Q(n609) );
  GTECH_FD1 RAM_reg_95__6_ ( .D(n2227), .CP(n1), .Q(n608) );
  GTECH_FD1 RAM_reg_95__5_ ( .D(n2226), .CP(n1), .Q(n607) );
  GTECH_FD1 RAM_reg_95__4_ ( .D(n2225), .CP(n1), .Q(n606) );
  GTECH_FD1 RAM_reg_95__3_ ( .D(n2224), .CP(n1), .Q(n605) );
  GTECH_FD1 RAM_reg_95__2_ ( .D(n2223), .CP(n1), .Q(n604) );
  GTECH_FD1 RAM_reg_95__1_ ( .D(n2222), .CP(n1), .Q(n603) );
  GTECH_FD1 RAM_reg_95__0_ ( .D(n2221), .CP(n1), .Q(n602) );
  GTECH_NOT U2 ( .A(n2), .Z(n1) );
  GTECH_NOT U3 ( .A(clock), .Z(n2) );
  GTECH_AO22 U4 ( .A(n3), .B(n1369), .C(n4), .D(n5), .Z(n2988) );
  GTECH_AO22 U5 ( .A(n3), .B(n1368), .C(n4), .D(n6), .Z(n2987) );
  GTECH_AO22 U6 ( .A(n3), .B(n1367), .C(n4), .D(n7), .Z(n2986) );
  GTECH_AO22 U7 ( .A(n3), .B(n1366), .C(n4), .D(n8), .Z(n2985) );
  GTECH_AO22 U8 ( .A(n3), .B(n1365), .C(n4), .D(n9), .Z(n2984) );
  GTECH_AO22 U9 ( .A(n3), .B(n1364), .C(n4), .D(n10), .Z(n2983) );
  GTECH_AO22 U10 ( .A(n3), .B(n1363), .C(n4), .D(n11), .Z(n2982) );
  GTECH_AO22 U11 ( .A(n3), .B(n1362), .C(n4), .D(n12), .Z(n2981) );
  GTECH_OR_NOT U12 ( .A(n13), .B(n4), .Z(n3) );
  GTECH_AO22 U13 ( .A(n14), .B(n1361), .C(n5), .D(n15), .Z(n2980) );
  GTECH_AO22 U14 ( .A(n14), .B(n1360), .C(n6), .D(n15), .Z(n2979) );
  GTECH_AO22 U15 ( .A(n14), .B(n1359), .C(n7), .D(n15), .Z(n2978) );
  GTECH_AO22 U16 ( .A(n14), .B(n1358), .C(n8), .D(n15), .Z(n2977) );
  GTECH_AO22 U17 ( .A(n14), .B(n1357), .C(n9), .D(n15), .Z(n2976) );
  GTECH_AO22 U18 ( .A(n14), .B(n1356), .C(n10), .D(n15), .Z(n2975) );
  GTECH_AO22 U19 ( .A(n14), .B(n1355), .C(n11), .D(n15), .Z(n2974) );
  GTECH_AO22 U20 ( .A(n14), .B(n1354), .C(n12), .D(n15), .Z(n2973) );
  GTECH_OR_NOT U21 ( .A(n13), .B(n15), .Z(n14) );
  GTECH_AO22 U22 ( .A(n16), .B(n1353), .C(n5), .D(n17), .Z(n2972) );
  GTECH_AO22 U23 ( .A(n16), .B(n1352), .C(n6), .D(n17), .Z(n2971) );
  GTECH_AO22 U24 ( .A(n16), .B(n1351), .C(n7), .D(n17), .Z(n2970) );
  GTECH_AO22 U25 ( .A(n16), .B(n1350), .C(n8), .D(n17), .Z(n2969) );
  GTECH_AO22 U26 ( .A(n16), .B(n1349), .C(n9), .D(n17), .Z(n2968) );
  GTECH_AO22 U27 ( .A(n16), .B(n1348), .C(n10), .D(n17), .Z(n2967) );
  GTECH_AO22 U28 ( .A(n16), .B(n1347), .C(n11), .D(n17), .Z(n2966) );
  GTECH_AO22 U29 ( .A(n16), .B(n1346), .C(n12), .D(n17), .Z(n2965) );
  GTECH_OR_NOT U30 ( .A(n13), .B(n17), .Z(n16) );
  GTECH_AO22 U31 ( .A(n18), .B(n1345), .C(n5), .D(n19), .Z(n2964) );
  GTECH_AO22 U32 ( .A(n18), .B(n1344), .C(n6), .D(n19), .Z(n2963) );
  GTECH_AO22 U33 ( .A(n18), .B(n1343), .C(n7), .D(n19), .Z(n2962) );
  GTECH_AO22 U34 ( .A(n18), .B(n1342), .C(n8), .D(n19), .Z(n2961) );
  GTECH_AO22 U35 ( .A(n18), .B(n1341), .C(n9), .D(n19), .Z(n2960) );
  GTECH_AO22 U36 ( .A(n18), .B(n1340), .C(n10), .D(n19), .Z(n2959) );
  GTECH_AO22 U37 ( .A(n18), .B(n1339), .C(n11), .D(n19), .Z(n2958) );
  GTECH_AO22 U38 ( .A(n18), .B(n1338), .C(n12), .D(n19), .Z(n2957) );
  GTECH_OR_NOT U39 ( .A(n13), .B(n19), .Z(n18) );
  GTECH_AO22 U40 ( .A(n20), .B(n1337), .C(n5), .D(n21), .Z(n2956) );
  GTECH_AO22 U41 ( .A(n20), .B(n1336), .C(n6), .D(n21), .Z(n2955) );
  GTECH_AO22 U42 ( .A(n20), .B(n1335), .C(n7), .D(n21), .Z(n2954) );
  GTECH_AO22 U43 ( .A(n20), .B(n1334), .C(n8), .D(n21), .Z(n2953) );
  GTECH_AO22 U44 ( .A(n20), .B(n1333), .C(n9), .D(n21), .Z(n2952) );
  GTECH_AO22 U45 ( .A(n20), .B(n1332), .C(n10), .D(n21), .Z(n2951) );
  GTECH_AO22 U46 ( .A(n20), .B(n1331), .C(n11), .D(n21), .Z(n2950) );
  GTECH_AO22 U47 ( .A(n20), .B(n1330), .C(n12), .D(n21), .Z(n2949) );
  GTECH_OR_NOT U48 ( .A(n13), .B(n21), .Z(n20) );
  GTECH_AO22 U49 ( .A(n22), .B(n1329), .C(n5), .D(n23), .Z(n2948) );
  GTECH_AO22 U50 ( .A(n22), .B(n1328), .C(n6), .D(n23), .Z(n2947) );
  GTECH_AO22 U51 ( .A(n22), .B(n1327), .C(n7), .D(n23), .Z(n2946) );
  GTECH_AO22 U52 ( .A(n22), .B(n1326), .C(n8), .D(n23), .Z(n2945) );
  GTECH_AO22 U53 ( .A(n22), .B(n1325), .C(n9), .D(n23), .Z(n2944) );
  GTECH_AO22 U54 ( .A(n22), .B(n1324), .C(n10), .D(n23), .Z(n2943) );
  GTECH_AO22 U55 ( .A(n22), .B(n1323), .C(n11), .D(n23), .Z(n2942) );
  GTECH_AO22 U56 ( .A(n22), .B(n1322), .C(n12), .D(n23), .Z(n2941) );
  GTECH_OR_NOT U57 ( .A(n13), .B(n23), .Z(n22) );
  GTECH_AO22 U58 ( .A(n24), .B(n1321), .C(n5), .D(n25), .Z(n2940) );
  GTECH_AO22 U59 ( .A(n24), .B(n1320), .C(n6), .D(n25), .Z(n2939) );
  GTECH_AO22 U60 ( .A(n24), .B(n1319), .C(n7), .D(n25), .Z(n2938) );
  GTECH_AO22 U61 ( .A(n24), .B(n1318), .C(n8), .D(n25), .Z(n2937) );
  GTECH_AO22 U62 ( .A(n24), .B(n1317), .C(n9), .D(n25), .Z(n2936) );
  GTECH_AO22 U63 ( .A(n24), .B(n1316), .C(n10), .D(n25), .Z(n2935) );
  GTECH_AO22 U64 ( .A(n24), .B(n1315), .C(n11), .D(n25), .Z(n2934) );
  GTECH_AO22 U65 ( .A(n24), .B(n1314), .C(n12), .D(n25), .Z(n2933) );
  GTECH_OR_NOT U66 ( .A(n13), .B(n25), .Z(n24) );
  GTECH_AO22 U67 ( .A(n26), .B(n1313), .C(n5), .D(n27), .Z(n2932) );
  GTECH_AO22 U68 ( .A(n26), .B(n1312), .C(n6), .D(n27), .Z(n2931) );
  GTECH_AO22 U69 ( .A(n26), .B(n1311), .C(n7), .D(n27), .Z(n2930) );
  GTECH_AO22 U70 ( .A(n26), .B(n1310), .C(n8), .D(n27), .Z(n2929) );
  GTECH_AO22 U71 ( .A(n26), .B(n1309), .C(n9), .D(n27), .Z(n2928) );
  GTECH_AO22 U72 ( .A(n26), .B(n1308), .C(n10), .D(n27), .Z(n2927) );
  GTECH_AO22 U73 ( .A(n26), .B(n1307), .C(n11), .D(n27), .Z(n2926) );
  GTECH_AO22 U74 ( .A(n26), .B(n1306), .C(n12), .D(n27), .Z(n2925) );
  GTECH_OR_NOT U75 ( .A(n13), .B(n27), .Z(n26) );
  GTECH_AO22 U76 ( .A(n28), .B(n1305), .C(n5), .D(n29), .Z(n2924) );
  GTECH_AO22 U77 ( .A(n28), .B(n1304), .C(n6), .D(n29), .Z(n2923) );
  GTECH_AO22 U78 ( .A(n28), .B(n1303), .C(n7), .D(n29), .Z(n2922) );
  GTECH_AO22 U79 ( .A(n28), .B(n1302), .C(n8), .D(n29), .Z(n2921) );
  GTECH_AO22 U80 ( .A(n28), .B(n1301), .C(n9), .D(n29), .Z(n2920) );
  GTECH_AO22 U81 ( .A(n28), .B(n1300), .C(n10), .D(n29), .Z(n2919) );
  GTECH_AO22 U82 ( .A(n28), .B(n1299), .C(n11), .D(n29), .Z(n2918) );
  GTECH_AO22 U83 ( .A(n28), .B(n1298), .C(n12), .D(n29), .Z(n2917) );
  GTECH_OR_NOT U84 ( .A(n13), .B(n29), .Z(n28) );
  GTECH_AO22 U85 ( .A(n30), .B(n1297), .C(n5), .D(n31), .Z(n2916) );
  GTECH_AO22 U86 ( .A(n30), .B(n1296), .C(n6), .D(n31), .Z(n2915) );
  GTECH_AO22 U87 ( .A(n30), .B(n1295), .C(n7), .D(n31), .Z(n2914) );
  GTECH_AO22 U88 ( .A(n30), .B(n1294), .C(n8), .D(n31), .Z(n2913) );
  GTECH_AO22 U89 ( .A(n30), .B(n1293), .C(n9), .D(n31), .Z(n2912) );
  GTECH_AO22 U90 ( .A(n30), .B(n1292), .C(n10), .D(n31), .Z(n2911) );
  GTECH_AO22 U91 ( .A(n30), .B(n1291), .C(n11), .D(n31), .Z(n2910) );
  GTECH_AO22 U92 ( .A(n30), .B(n1290), .C(n12), .D(n31), .Z(n2909) );
  GTECH_OR_NOT U93 ( .A(n13), .B(n31), .Z(n30) );
  GTECH_AO22 U94 ( .A(n32), .B(n1289), .C(n5), .D(n33), .Z(n2908) );
  GTECH_AO22 U95 ( .A(n32), .B(n1288), .C(n6), .D(n33), .Z(n2907) );
  GTECH_AO22 U96 ( .A(n32), .B(n1287), .C(n7), .D(n33), .Z(n2906) );
  GTECH_AO22 U97 ( .A(n32), .B(n1286), .C(n8), .D(n33), .Z(n2905) );
  GTECH_AO22 U98 ( .A(n32), .B(n1285), .C(n9), .D(n33), .Z(n2904) );
  GTECH_AO22 U99 ( .A(n32), .B(n1284), .C(n10), .D(n33), .Z(n2903) );
  GTECH_AO22 U100 ( .A(n32), .B(n1283), .C(n11), .D(n33), .Z(n2902) );
  GTECH_AO22 U101 ( .A(n32), .B(n1282), .C(n12), .D(n33), .Z(n2901) );
  GTECH_OR_NOT U102 ( .A(n13), .B(n33), .Z(n32) );
  GTECH_AO22 U103 ( .A(n34), .B(n1281), .C(n5), .D(n35), .Z(n2900) );
  GTECH_AO22 U104 ( .A(n34), .B(n1280), .C(n6), .D(n35), .Z(n2899) );
  GTECH_AO22 U105 ( .A(n34), .B(n1279), .C(n7), .D(n35), .Z(n2898) );
  GTECH_AO22 U106 ( .A(n34), .B(n1278), .C(n8), .D(n35), .Z(n2897) );
  GTECH_AO22 U107 ( .A(n34), .B(n1277), .C(n9), .D(n35), .Z(n2896) );
  GTECH_AO22 U108 ( .A(n34), .B(n1276), .C(n10), .D(n35), .Z(n2895) );
  GTECH_AO22 U109 ( .A(n34), .B(n1275), .C(n11), .D(n35), .Z(n2894) );
  GTECH_AO22 U110 ( .A(n34), .B(n1274), .C(n12), .D(n35), .Z(n2893) );
  GTECH_OR_NOT U111 ( .A(n13), .B(n35), .Z(n34) );
  GTECH_AO22 U112 ( .A(n36), .B(n1273), .C(n5), .D(n37), .Z(n2892) );
  GTECH_AO22 U113 ( .A(n36), .B(n1272), .C(n6), .D(n37), .Z(n2891) );
  GTECH_AO22 U114 ( .A(n36), .B(n1271), .C(n7), .D(n37), .Z(n2890) );
  GTECH_AO22 U115 ( .A(n36), .B(n1270), .C(n8), .D(n37), .Z(n2889) );
  GTECH_AO22 U116 ( .A(n36), .B(n1269), .C(n9), .D(n37), .Z(n2888) );
  GTECH_AO22 U117 ( .A(n36), .B(n1268), .C(n10), .D(n37), .Z(n2887) );
  GTECH_AO22 U118 ( .A(n36), .B(n1267), .C(n11), .D(n37), .Z(n2886) );
  GTECH_AO22 U119 ( .A(n36), .B(n1266), .C(n12), .D(n37), .Z(n2885) );
  GTECH_OR_NOT U120 ( .A(n13), .B(n37), .Z(n36) );
  GTECH_AO22 U121 ( .A(n38), .B(n1265), .C(n5), .D(n39), .Z(n2884) );
  GTECH_AO22 U122 ( .A(n38), .B(n1264), .C(n6), .D(n39), .Z(n2883) );
  GTECH_AO22 U123 ( .A(n38), .B(n1263), .C(n7), .D(n39), .Z(n2882) );
  GTECH_AO22 U124 ( .A(n38), .B(n1262), .C(n8), .D(n39), .Z(n2881) );
  GTECH_AO22 U125 ( .A(n38), .B(n1261), .C(n9), .D(n39), .Z(n2880) );
  GTECH_AO22 U126 ( .A(n38), .B(n1260), .C(n10), .D(n39), .Z(n2879) );
  GTECH_AO22 U127 ( .A(n38), .B(n1259), .C(n11), .D(n39), .Z(n2878) );
  GTECH_AO22 U128 ( .A(n38), .B(n1258), .C(n12), .D(n39), .Z(n2877) );
  GTECH_OR_NOT U129 ( .A(n13), .B(n39), .Z(n38) );
  GTECH_AO22 U130 ( .A(n40), .B(n1257), .C(n5), .D(n41), .Z(n2876) );
  GTECH_AO22 U131 ( .A(n40), .B(n1256), .C(n6), .D(n41), .Z(n2875) );
  GTECH_AO22 U132 ( .A(n40), .B(n1255), .C(n7), .D(n41), .Z(n2874) );
  GTECH_AO22 U133 ( .A(n40), .B(n1254), .C(n8), .D(n41), .Z(n2873) );
  GTECH_AO22 U134 ( .A(n40), .B(n1253), .C(n9), .D(n41), .Z(n2872) );
  GTECH_AO22 U135 ( .A(n40), .B(n1252), .C(n10), .D(n41), .Z(n2871) );
  GTECH_AO22 U136 ( .A(n40), .B(n1251), .C(n11), .D(n41), .Z(n2870) );
  GTECH_AO22 U137 ( .A(n40), .B(n1250), .C(n12), .D(n41), .Z(n2869) );
  GTECH_OR_NOT U138 ( .A(n13), .B(n41), .Z(n40) );
  GTECH_AO22 U139 ( .A(n42), .B(n1249), .C(n5), .D(n43), .Z(n2868) );
  GTECH_AO22 U140 ( .A(n42), .B(n1248), .C(n6), .D(n43), .Z(n2867) );
  GTECH_AO22 U141 ( .A(n42), .B(n1247), .C(n7), .D(n43), .Z(n2866) );
  GTECH_AO22 U142 ( .A(n42), .B(n1246), .C(n8), .D(n43), .Z(n2865) );
  GTECH_AO22 U143 ( .A(n42), .B(n1245), .C(n9), .D(n43), .Z(n2864) );
  GTECH_AO22 U144 ( .A(n42), .B(n1244), .C(n10), .D(n43), .Z(n2863) );
  GTECH_AO22 U145 ( .A(n42), .B(n1243), .C(n11), .D(n43), .Z(n2862) );
  GTECH_AO22 U146 ( .A(n42), .B(n1242), .C(n12), .D(n43), .Z(n2861) );
  GTECH_OR_NOT U147 ( .A(n13), .B(n43), .Z(n42) );
  GTECH_AO22 U148 ( .A(n44), .B(n1241), .C(n5), .D(n45), .Z(n2860) );
  GTECH_AO22 U149 ( .A(n44), .B(n1240), .C(n6), .D(n45), .Z(n2859) );
  GTECH_AO22 U150 ( .A(n44), .B(n1239), .C(n7), .D(n45), .Z(n2858) );
  GTECH_AO22 U151 ( .A(n44), .B(n1238), .C(n8), .D(n45), .Z(n2857) );
  GTECH_AO22 U152 ( .A(n44), .B(n1237), .C(n9), .D(n45), .Z(n2856) );
  GTECH_AO22 U153 ( .A(n44), .B(n1236), .C(n10), .D(n45), .Z(n2855) );
  GTECH_AO22 U154 ( .A(n44), .B(n1235), .C(n11), .D(n45), .Z(n2854) );
  GTECH_AO22 U155 ( .A(n44), .B(n1234), .C(n12), .D(n45), .Z(n2853) );
  GTECH_OR_NOT U156 ( .A(n13), .B(n45), .Z(n44) );
  GTECH_AO22 U157 ( .A(n46), .B(n1233), .C(n5), .D(n47), .Z(n2852) );
  GTECH_AO22 U158 ( .A(n46), .B(n1232), .C(n6), .D(n47), .Z(n2851) );
  GTECH_AO22 U159 ( .A(n46), .B(n1231), .C(n7), .D(n47), .Z(n2850) );
  GTECH_AO22 U160 ( .A(n46), .B(n1230), .C(n8), .D(n47), .Z(n2849) );
  GTECH_AO22 U161 ( .A(n46), .B(n1229), .C(n9), .D(n47), .Z(n2848) );
  GTECH_AO22 U162 ( .A(n46), .B(n1228), .C(n10), .D(n47), .Z(n2847) );
  GTECH_AO22 U163 ( .A(n46), .B(n1227), .C(n11), .D(n47), .Z(n2846) );
  GTECH_AO22 U164 ( .A(n46), .B(n1226), .C(n12), .D(n47), .Z(n2845) );
  GTECH_OR_NOT U165 ( .A(n13), .B(n47), .Z(n46) );
  GTECH_AO22 U166 ( .A(n48), .B(n1225), .C(n5), .D(n49), .Z(n2844) );
  GTECH_AO22 U167 ( .A(n48), .B(n1224), .C(n6), .D(n49), .Z(n2843) );
  GTECH_AO22 U168 ( .A(n48), .B(n1223), .C(n7), .D(n49), .Z(n2842) );
  GTECH_AO22 U169 ( .A(n48), .B(n1222), .C(n8), .D(n49), .Z(n2841) );
  GTECH_AO22 U170 ( .A(n48), .B(n1221), .C(n9), .D(n49), .Z(n2840) );
  GTECH_AO22 U171 ( .A(n48), .B(n1220), .C(n10), .D(n49), .Z(n2839) );
  GTECH_AO22 U172 ( .A(n48), .B(n1219), .C(n11), .D(n49), .Z(n2838) );
  GTECH_AO22 U173 ( .A(n48), .B(n1218), .C(n12), .D(n49), .Z(n2837) );
  GTECH_OR_NOT U174 ( .A(n13), .B(n49), .Z(n48) );
  GTECH_AO22 U175 ( .A(n50), .B(n1217), .C(n5), .D(n51), .Z(n2836) );
  GTECH_AO22 U176 ( .A(n50), .B(n1216), .C(n6), .D(n51), .Z(n2835) );
  GTECH_AO22 U177 ( .A(n50), .B(n1215), .C(n7), .D(n51), .Z(n2834) );
  GTECH_AO22 U178 ( .A(n50), .B(n1214), .C(n8), .D(n51), .Z(n2833) );
  GTECH_AO22 U179 ( .A(n50), .B(n1213), .C(n9), .D(n51), .Z(n2832) );
  GTECH_AO22 U180 ( .A(n50), .B(n1212), .C(n10), .D(n51), .Z(n2831) );
  GTECH_AO22 U181 ( .A(n50), .B(n1211), .C(n11), .D(n51), .Z(n2830) );
  GTECH_AO22 U182 ( .A(n50), .B(n1210), .C(n12), .D(n51), .Z(n2829) );
  GTECH_OR_NOT U183 ( .A(n13), .B(n51), .Z(n50) );
  GTECH_AO22 U184 ( .A(n52), .B(n1209), .C(n5), .D(n53), .Z(n2828) );
  GTECH_AO22 U185 ( .A(n52), .B(n1208), .C(n6), .D(n53), .Z(n2827) );
  GTECH_AO22 U186 ( .A(n52), .B(n1207), .C(n7), .D(n53), .Z(n2826) );
  GTECH_AO22 U187 ( .A(n52), .B(n1206), .C(n8), .D(n53), .Z(n2825) );
  GTECH_AO22 U188 ( .A(n52), .B(n1205), .C(n9), .D(n53), .Z(n2824) );
  GTECH_AO22 U189 ( .A(n52), .B(n1204), .C(n10), .D(n53), .Z(n2823) );
  GTECH_AO22 U190 ( .A(n52), .B(n1203), .C(n11), .D(n53), .Z(n2822) );
  GTECH_AO22 U191 ( .A(n52), .B(n1202), .C(n12), .D(n53), .Z(n2821) );
  GTECH_OR_NOT U192 ( .A(n13), .B(n53), .Z(n52) );
  GTECH_AO22 U193 ( .A(n54), .B(n1201), .C(n5), .D(n55), .Z(n2820) );
  GTECH_AO22 U194 ( .A(n54), .B(n1200), .C(n6), .D(n55), .Z(n2819) );
  GTECH_AO22 U195 ( .A(n54), .B(n1199), .C(n7), .D(n55), .Z(n2818) );
  GTECH_AO22 U196 ( .A(n54), .B(n1198), .C(n8), .D(n55), .Z(n2817) );
  GTECH_AO22 U197 ( .A(n54), .B(n1197), .C(n9), .D(n55), .Z(n2816) );
  GTECH_AO22 U198 ( .A(n54), .B(n1196), .C(n10), .D(n55), .Z(n2815) );
  GTECH_AO22 U199 ( .A(n54), .B(n1195), .C(n11), .D(n55), .Z(n2814) );
  GTECH_AO22 U200 ( .A(n54), .B(n1194), .C(n12), .D(n55), .Z(n2813) );
  GTECH_OR_NOT U201 ( .A(n13), .B(n55), .Z(n54) );
  GTECH_AO22 U202 ( .A(n56), .B(n1193), .C(n5), .D(n57), .Z(n2812) );
  GTECH_AO22 U203 ( .A(n56), .B(n1192), .C(n6), .D(n57), .Z(n2811) );
  GTECH_AO22 U204 ( .A(n56), .B(n1191), .C(n7), .D(n57), .Z(n2810) );
  GTECH_AO22 U205 ( .A(n56), .B(n1190), .C(n8), .D(n57), .Z(n2809) );
  GTECH_AO22 U206 ( .A(n56), .B(n1189), .C(n9), .D(n57), .Z(n2808) );
  GTECH_AO22 U207 ( .A(n56), .B(n1188), .C(n10), .D(n57), .Z(n2807) );
  GTECH_AO22 U208 ( .A(n56), .B(n1187), .C(n11), .D(n57), .Z(n2806) );
  GTECH_AO22 U209 ( .A(n56), .B(n1186), .C(n12), .D(n57), .Z(n2805) );
  GTECH_OR_NOT U210 ( .A(n13), .B(n57), .Z(n56) );
  GTECH_AO22 U211 ( .A(n58), .B(n1185), .C(n5), .D(n59), .Z(n2804) );
  GTECH_AO22 U212 ( .A(n58), .B(n1184), .C(n6), .D(n59), .Z(n2803) );
  GTECH_AO22 U213 ( .A(n58), .B(n1183), .C(n7), .D(n59), .Z(n2802) );
  GTECH_AO22 U214 ( .A(n58), .B(n1182), .C(n8), .D(n59), .Z(n2801) );
  GTECH_AO22 U215 ( .A(n58), .B(n1181), .C(n9), .D(n59), .Z(n2800) );
  GTECH_AO22 U216 ( .A(n58), .B(n1180), .C(n10), .D(n59), .Z(n2799) );
  GTECH_AO22 U217 ( .A(n58), .B(n1179), .C(n11), .D(n59), .Z(n2798) );
  GTECH_AO22 U218 ( .A(n58), .B(n1178), .C(n12), .D(n59), .Z(n2797) );
  GTECH_OR_NOT U219 ( .A(n13), .B(n59), .Z(n58) );
  GTECH_AO22 U220 ( .A(n60), .B(n1177), .C(n5), .D(n61), .Z(n2796) );
  GTECH_AO22 U221 ( .A(n60), .B(n1176), .C(n6), .D(n61), .Z(n2795) );
  GTECH_AO22 U222 ( .A(n60), .B(n1175), .C(n7), .D(n61), .Z(n2794) );
  GTECH_AO22 U223 ( .A(n60), .B(n1174), .C(n8), .D(n61), .Z(n2793) );
  GTECH_AO22 U224 ( .A(n60), .B(n1173), .C(n9), .D(n61), .Z(n2792) );
  GTECH_AO22 U225 ( .A(n60), .B(n1172), .C(n10), .D(n61), .Z(n2791) );
  GTECH_AO22 U226 ( .A(n60), .B(n1171), .C(n11), .D(n61), .Z(n2790) );
  GTECH_AO22 U227 ( .A(n60), .B(n1170), .C(n12), .D(n61), .Z(n2789) );
  GTECH_OR_NOT U228 ( .A(n13), .B(n61), .Z(n60) );
  GTECH_AO22 U229 ( .A(n62), .B(n1169), .C(n5), .D(n63), .Z(n2788) );
  GTECH_AO22 U230 ( .A(n62), .B(n1168), .C(n6), .D(n63), .Z(n2787) );
  GTECH_AO22 U231 ( .A(n62), .B(n1167), .C(n7), .D(n63), .Z(n2786) );
  GTECH_AO22 U232 ( .A(n62), .B(n1166), .C(n8), .D(n63), .Z(n2785) );
  GTECH_AO22 U233 ( .A(n62), .B(n1165), .C(n9), .D(n63), .Z(n2784) );
  GTECH_AO22 U234 ( .A(n62), .B(n1164), .C(n10), .D(n63), .Z(n2783) );
  GTECH_AO22 U235 ( .A(n62), .B(n1163), .C(n11), .D(n63), .Z(n2782) );
  GTECH_AO22 U236 ( .A(n62), .B(n1162), .C(n12), .D(n63), .Z(n2781) );
  GTECH_OR_NOT U237 ( .A(n13), .B(n63), .Z(n62) );
  GTECH_AO22 U238 ( .A(n64), .B(n1161), .C(n5), .D(n65), .Z(n2780) );
  GTECH_AO22 U239 ( .A(n64), .B(n1160), .C(n6), .D(n65), .Z(n2779) );
  GTECH_AO22 U240 ( .A(n64), .B(n1159), .C(n7), .D(n65), .Z(n2778) );
  GTECH_AO22 U241 ( .A(n64), .B(n1158), .C(n8), .D(n65), .Z(n2777) );
  GTECH_AO22 U242 ( .A(n64), .B(n1157), .C(n9), .D(n65), .Z(n2776) );
  GTECH_AO22 U243 ( .A(n64), .B(n1156), .C(n10), .D(n65), .Z(n2775) );
  GTECH_AO22 U244 ( .A(n64), .B(n1155), .C(n11), .D(n65), .Z(n2774) );
  GTECH_AO22 U245 ( .A(n64), .B(n1154), .C(n12), .D(n65), .Z(n2773) );
  GTECH_OR_NOT U246 ( .A(n13), .B(n65), .Z(n64) );
  GTECH_AO22 U247 ( .A(n66), .B(n1153), .C(n5), .D(n67), .Z(n2772) );
  GTECH_AO22 U248 ( .A(n66), .B(n1152), .C(n6), .D(n67), .Z(n2771) );
  GTECH_AO22 U249 ( .A(n66), .B(n1151), .C(n7), .D(n67), .Z(n2770) );
  GTECH_AO22 U250 ( .A(n66), .B(n1150), .C(n8), .D(n67), .Z(n2769) );
  GTECH_AO22 U251 ( .A(n66), .B(n1149), .C(n9), .D(n67), .Z(n2768) );
  GTECH_AO22 U252 ( .A(n66), .B(n1148), .C(n10), .D(n67), .Z(n2767) );
  GTECH_AO22 U253 ( .A(n66), .B(n1147), .C(n11), .D(n67), .Z(n2766) );
  GTECH_AO22 U254 ( .A(n66), .B(n1146), .C(n12), .D(n67), .Z(n2765) );
  GTECH_OR_NOT U255 ( .A(n13), .B(n67), .Z(n66) );
  GTECH_AO22 U256 ( .A(n68), .B(n1145), .C(n5), .D(n69), .Z(n2764) );
  GTECH_AO22 U257 ( .A(n68), .B(n1144), .C(n6), .D(n69), .Z(n2763) );
  GTECH_AO22 U258 ( .A(n68), .B(n1143), .C(n7), .D(n69), .Z(n2762) );
  GTECH_AO22 U259 ( .A(n68), .B(n1142), .C(n8), .D(n69), .Z(n2761) );
  GTECH_AO22 U260 ( .A(n68), .B(n1141), .C(n9), .D(n69), .Z(n2760) );
  GTECH_AO22 U261 ( .A(n68), .B(n1140), .C(n10), .D(n69), .Z(n2759) );
  GTECH_AO22 U262 ( .A(n68), .B(n1139), .C(n11), .D(n69), .Z(n2758) );
  GTECH_AO22 U263 ( .A(n68), .B(n1138), .C(n12), .D(n69), .Z(n2757) );
  GTECH_OR_NOT U264 ( .A(n13), .B(n69), .Z(n68) );
  GTECH_AO22 U265 ( .A(n70), .B(n1137), .C(n5), .D(n71), .Z(n2756) );
  GTECH_AO22 U266 ( .A(n70), .B(n1136), .C(n6), .D(n71), .Z(n2755) );
  GTECH_AO22 U267 ( .A(n70), .B(n1135), .C(n7), .D(n71), .Z(n2754) );
  GTECH_AO22 U268 ( .A(n70), .B(n1134), .C(n8), .D(n71), .Z(n2753) );
  GTECH_AO22 U269 ( .A(n70), .B(n1133), .C(n9), .D(n71), .Z(n2752) );
  GTECH_AO22 U270 ( .A(n70), .B(n1132), .C(n10), .D(n71), .Z(n2751) );
  GTECH_AO22 U271 ( .A(n70), .B(n1131), .C(n11), .D(n71), .Z(n2750) );
  GTECH_AO22 U272 ( .A(n70), .B(n1130), .C(n12), .D(n71), .Z(n2749) );
  GTECH_OR_NOT U273 ( .A(n13), .B(n71), .Z(n70) );
  GTECH_AO22 U274 ( .A(n72), .B(n1129), .C(n5), .D(n73), .Z(n2748) );
  GTECH_AO22 U275 ( .A(n72), .B(n1128), .C(n6), .D(n73), .Z(n2747) );
  GTECH_AO22 U276 ( .A(n72), .B(n1127), .C(n7), .D(n73), .Z(n2746) );
  GTECH_AO22 U277 ( .A(n72), .B(n1126), .C(n8), .D(n73), .Z(n2745) );
  GTECH_AO22 U278 ( .A(n72), .B(n1125), .C(n9), .D(n73), .Z(n2744) );
  GTECH_AO22 U279 ( .A(n72), .B(n1124), .C(n10), .D(n73), .Z(n2743) );
  GTECH_AO22 U280 ( .A(n72), .B(n1123), .C(n11), .D(n73), .Z(n2742) );
  GTECH_AO22 U281 ( .A(n72), .B(n1122), .C(n12), .D(n73), .Z(n2741) );
  GTECH_OR_NOT U282 ( .A(n13), .B(n73), .Z(n72) );
  GTECH_AO22 U283 ( .A(n74), .B(n1121), .C(n5), .D(n75), .Z(n2740) );
  GTECH_AO22 U284 ( .A(n74), .B(n1120), .C(n6), .D(n75), .Z(n2739) );
  GTECH_AO22 U285 ( .A(n74), .B(n1119), .C(n7), .D(n75), .Z(n2738) );
  GTECH_AO22 U286 ( .A(n74), .B(n1118), .C(n8), .D(n75), .Z(n2737) );
  GTECH_AO22 U287 ( .A(n74), .B(n1117), .C(n9), .D(n75), .Z(n2736) );
  GTECH_AO22 U288 ( .A(n74), .B(n1116), .C(n10), .D(n75), .Z(n2735) );
  GTECH_AO22 U289 ( .A(n74), .B(n1115), .C(n11), .D(n75), .Z(n2734) );
  GTECH_AO22 U290 ( .A(n74), .B(n1114), .C(n12), .D(n75), .Z(n2733) );
  GTECH_OR_NOT U291 ( .A(n13), .B(n75), .Z(n74) );
  GTECH_OAI2N2 U292 ( .A(n76), .B(n77), .C(n78), .D(n1113), .Z(n2732) );
  GTECH_OAI2N2 U293 ( .A(n79), .B(n77), .C(n78), .D(n1112), .Z(n2731) );
  GTECH_OAI2N2 U294 ( .A(n80), .B(n77), .C(n78), .D(n1111), .Z(n2730) );
  GTECH_OAI2N2 U295 ( .A(n81), .B(n77), .C(n78), .D(n1110), .Z(n2729) );
  GTECH_OAI2N2 U296 ( .A(n82), .B(n77), .C(n78), .D(n1109), .Z(n2728) );
  GTECH_OAI2N2 U297 ( .A(n83), .B(n77), .C(n78), .D(n1108), .Z(n2727) );
  GTECH_OAI2N2 U298 ( .A(n84), .B(n77), .C(n78), .D(n1107), .Z(n2726) );
  GTECH_OAI2N2 U299 ( .A(n85), .B(n77), .C(n78), .D(n1106), .Z(n2725) );
  GTECH_OR2 U300 ( .A(n77), .B(n13), .Z(n78) );
  GTECH_OR_NOT U301 ( .A(n86), .B(n87), .Z(n77) );
  GTECH_OAI2N2 U302 ( .A(n76), .B(n88), .C(n89), .D(n1105), .Z(n2724) );
  GTECH_OAI2N2 U303 ( .A(n79), .B(n88), .C(n89), .D(n1104), .Z(n2723) );
  GTECH_OAI2N2 U304 ( .A(n80), .B(n88), .C(n89), .D(n1103), .Z(n2722) );
  GTECH_OAI2N2 U305 ( .A(n81), .B(n88), .C(n89), .D(n1102), .Z(n2721) );
  GTECH_OAI2N2 U306 ( .A(n82), .B(n88), .C(n89), .D(n1101), .Z(n2720) );
  GTECH_OAI2N2 U307 ( .A(n83), .B(n88), .C(n89), .D(n1100), .Z(n2719) );
  GTECH_OAI2N2 U308 ( .A(n84), .B(n88), .C(n89), .D(n1099), .Z(n2718) );
  GTECH_OAI2N2 U309 ( .A(n85), .B(n88), .C(n89), .D(n1098), .Z(n2717) );
  GTECH_OR2 U310 ( .A(n88), .B(n13), .Z(n89) );
  GTECH_OR_NOT U311 ( .A(n86), .B(n90), .Z(n88) );
  GTECH_OAI2N2 U312 ( .A(n76), .B(n91), .C(n92), .D(n1097), .Z(n2716) );
  GTECH_OAI2N2 U313 ( .A(n79), .B(n91), .C(n92), .D(n1096), .Z(n2715) );
  GTECH_OAI2N2 U314 ( .A(n80), .B(n91), .C(n92), .D(n1095), .Z(n2714) );
  GTECH_OAI2N2 U315 ( .A(n81), .B(n91), .C(n92), .D(n1094), .Z(n2713) );
  GTECH_OAI2N2 U316 ( .A(n82), .B(n91), .C(n92), .D(n1093), .Z(n2712) );
  GTECH_OAI2N2 U317 ( .A(n83), .B(n91), .C(n92), .D(n1092), .Z(n2711) );
  GTECH_OAI2N2 U318 ( .A(n84), .B(n91), .C(n92), .D(n1091), .Z(n2710) );
  GTECH_OAI2N2 U319 ( .A(n85), .B(n91), .C(n92), .D(n1090), .Z(n2709) );
  GTECH_OR2 U320 ( .A(n91), .B(n13), .Z(n92) );
  GTECH_OR_NOT U321 ( .A(n86), .B(n93), .Z(n91) );
  GTECH_OAI2N2 U322 ( .A(n76), .B(n94), .C(n95), .D(n1089), .Z(n2708) );
  GTECH_OAI2N2 U323 ( .A(n79), .B(n94), .C(n95), .D(n1088), .Z(n2707) );
  GTECH_OAI2N2 U324 ( .A(n80), .B(n94), .C(n95), .D(n1087), .Z(n2706) );
  GTECH_OAI2N2 U325 ( .A(n81), .B(n94), .C(n95), .D(n1086), .Z(n2705) );
  GTECH_OAI2N2 U326 ( .A(n82), .B(n94), .C(n95), .D(n1085), .Z(n2704) );
  GTECH_OAI2N2 U327 ( .A(n83), .B(n94), .C(n95), .D(n1084), .Z(n2703) );
  GTECH_OAI2N2 U328 ( .A(n84), .B(n94), .C(n95), .D(n1083), .Z(n2702) );
  GTECH_OAI2N2 U329 ( .A(n85), .B(n94), .C(n95), .D(n1082), .Z(n2701) );
  GTECH_OR2 U330 ( .A(n94), .B(n13), .Z(n95) );
  GTECH_OR_NOT U331 ( .A(n86), .B(n96), .Z(n94) );
  GTECH_OAI2N2 U332 ( .A(n76), .B(n97), .C(n98), .D(n1081), .Z(n2700) );
  GTECH_OAI2N2 U333 ( .A(n79), .B(n97), .C(n98), .D(n1080), .Z(n2699) );
  GTECH_OAI2N2 U334 ( .A(n80), .B(n97), .C(n98), .D(n1079), .Z(n2698) );
  GTECH_OAI2N2 U335 ( .A(n81), .B(n97), .C(n98), .D(n1078), .Z(n2697) );
  GTECH_OAI2N2 U336 ( .A(n82), .B(n97), .C(n98), .D(n1077), .Z(n2696) );
  GTECH_OAI2N2 U337 ( .A(n83), .B(n97), .C(n98), .D(n1076), .Z(n2695) );
  GTECH_OAI2N2 U338 ( .A(n84), .B(n97), .C(n98), .D(n1075), .Z(n2694) );
  GTECH_OAI2N2 U339 ( .A(n85), .B(n97), .C(n98), .D(n1074), .Z(n2693) );
  GTECH_OR2 U340 ( .A(n97), .B(n13), .Z(n98) );
  GTECH_OR_NOT U341 ( .A(n86), .B(n99), .Z(n97) );
  GTECH_OAI2N2 U342 ( .A(n76), .B(n100), .C(n101), .D(n1073), .Z(n2692) );
  GTECH_OAI2N2 U343 ( .A(n79), .B(n100), .C(n101), .D(n1072), .Z(n2691) );
  GTECH_OAI2N2 U344 ( .A(n80), .B(n100), .C(n101), .D(n1071), .Z(n2690) );
  GTECH_OAI2N2 U345 ( .A(n81), .B(n100), .C(n101), .D(n1070), .Z(n2689) );
  GTECH_OAI2N2 U346 ( .A(n82), .B(n100), .C(n101), .D(n1069), .Z(n2688) );
  GTECH_OAI2N2 U347 ( .A(n83), .B(n100), .C(n101), .D(n1068), .Z(n2687) );
  GTECH_OAI2N2 U348 ( .A(n84), .B(n100), .C(n101), .D(n1067), .Z(n2686) );
  GTECH_OAI2N2 U349 ( .A(n85), .B(n100), .C(n101), .D(n1066), .Z(n2685) );
  GTECH_OR2 U350 ( .A(n100), .B(n13), .Z(n101) );
  GTECH_OR_NOT U351 ( .A(n86), .B(n102), .Z(n100) );
  GTECH_OAI2N2 U352 ( .A(n76), .B(n103), .C(n104), .D(n1065), .Z(n2684) );
  GTECH_OAI2N2 U353 ( .A(n79), .B(n103), .C(n104), .D(n1064), .Z(n2683) );
  GTECH_OAI2N2 U354 ( .A(n80), .B(n103), .C(n104), .D(n1063), .Z(n2682) );
  GTECH_OAI2N2 U355 ( .A(n81), .B(n103), .C(n104), .D(n1062), .Z(n2681) );
  GTECH_OAI2N2 U356 ( .A(n82), .B(n103), .C(n104), .D(n1061), .Z(n2680) );
  GTECH_OAI2N2 U357 ( .A(n83), .B(n103), .C(n104), .D(n1060), .Z(n2679) );
  GTECH_OAI2N2 U358 ( .A(n84), .B(n103), .C(n104), .D(n1059), .Z(n2678) );
  GTECH_OAI2N2 U359 ( .A(n85), .B(n103), .C(n104), .D(n1058), .Z(n2677) );
  GTECH_OR2 U360 ( .A(n103), .B(n13), .Z(n104) );
  GTECH_OR_NOT U361 ( .A(n86), .B(n105), .Z(n103) );
  GTECH_OAI2N2 U362 ( .A(n76), .B(n106), .C(n107), .D(n1057), .Z(n2676) );
  GTECH_OAI2N2 U363 ( .A(n79), .B(n106), .C(n107), .D(n1056), .Z(n2675) );
  GTECH_OAI2N2 U364 ( .A(n80), .B(n106), .C(n107), .D(n1055), .Z(n2674) );
  GTECH_OAI2N2 U365 ( .A(n81), .B(n106), .C(n107), .D(n1054), .Z(n2673) );
  GTECH_OAI2N2 U366 ( .A(n82), .B(n106), .C(n107), .D(n1053), .Z(n2672) );
  GTECH_OAI2N2 U367 ( .A(n83), .B(n106), .C(n107), .D(n1052), .Z(n2671) );
  GTECH_OAI2N2 U368 ( .A(n84), .B(n106), .C(n107), .D(n1051), .Z(n2670) );
  GTECH_OAI2N2 U369 ( .A(n85), .B(n106), .C(n107), .D(n1050), .Z(n2669) );
  GTECH_OR2 U370 ( .A(n106), .B(n13), .Z(n107) );
  GTECH_OR_NOT U371 ( .A(n86), .B(n108), .Z(n106) );
  GTECH_OAI2N2 U372 ( .A(n76), .B(n109), .C(n110), .D(n1049), .Z(n2668) );
  GTECH_OAI2N2 U373 ( .A(n79), .B(n109), .C(n110), .D(n1048), .Z(n2667) );
  GTECH_OAI2N2 U374 ( .A(n80), .B(n109), .C(n110), .D(n1047), .Z(n2666) );
  GTECH_OAI2N2 U375 ( .A(n81), .B(n109), .C(n110), .D(n1046), .Z(n2665) );
  GTECH_OAI2N2 U376 ( .A(n82), .B(n109), .C(n110), .D(n1045), .Z(n2664) );
  GTECH_OAI2N2 U377 ( .A(n83), .B(n109), .C(n110), .D(n1044), .Z(n2663) );
  GTECH_OAI2N2 U378 ( .A(n84), .B(n109), .C(n110), .D(n1043), .Z(n2662) );
  GTECH_OAI2N2 U379 ( .A(n85), .B(n109), .C(n110), .D(n1042), .Z(n2661) );
  GTECH_OR2 U380 ( .A(n109), .B(n13), .Z(n110) );
  GTECH_OR_NOT U381 ( .A(n86), .B(n111), .Z(n109) );
  GTECH_OAI2N2 U382 ( .A(n76), .B(n112), .C(n113), .D(n1041), .Z(n2660) );
  GTECH_OAI2N2 U383 ( .A(n79), .B(n112), .C(n113), .D(n1040), .Z(n2659) );
  GTECH_OAI2N2 U384 ( .A(n80), .B(n112), .C(n113), .D(n1039), .Z(n2658) );
  GTECH_OAI2N2 U385 ( .A(n81), .B(n112), .C(n113), .D(n1038), .Z(n2657) );
  GTECH_OAI2N2 U386 ( .A(n82), .B(n112), .C(n113), .D(n1037), .Z(n2656) );
  GTECH_OAI2N2 U387 ( .A(n83), .B(n112), .C(n113), .D(n1036), .Z(n2655) );
  GTECH_OAI2N2 U388 ( .A(n84), .B(n112), .C(n113), .D(n1035), .Z(n2654) );
  GTECH_OAI2N2 U389 ( .A(n85), .B(n112), .C(n113), .D(n1034), .Z(n2653) );
  GTECH_OR2 U390 ( .A(n112), .B(n13), .Z(n113) );
  GTECH_OR_NOT U391 ( .A(n86), .B(n114), .Z(n112) );
  GTECH_OAI2N2 U392 ( .A(n76), .B(n115), .C(n116), .D(n1033), .Z(n2652) );
  GTECH_OAI2N2 U393 ( .A(n79), .B(n115), .C(n116), .D(n1032), .Z(n2651) );
  GTECH_OAI2N2 U394 ( .A(n80), .B(n115), .C(n116), .D(n1031), .Z(n2650) );
  GTECH_OAI2N2 U395 ( .A(n81), .B(n115), .C(n116), .D(n1030), .Z(n2649) );
  GTECH_OAI2N2 U396 ( .A(n82), .B(n115), .C(n116), .D(n1029), .Z(n2648) );
  GTECH_OAI2N2 U397 ( .A(n83), .B(n115), .C(n116), .D(n1028), .Z(n2647) );
  GTECH_OAI2N2 U398 ( .A(n84), .B(n115), .C(n116), .D(n1027), .Z(n2646) );
  GTECH_OAI2N2 U399 ( .A(n85), .B(n115), .C(n116), .D(n1026), .Z(n2645) );
  GTECH_OR2 U400 ( .A(n115), .B(n13), .Z(n116) );
  GTECH_OR_NOT U401 ( .A(n86), .B(n117), .Z(n115) );
  GTECH_OAI2N2 U402 ( .A(n76), .B(n118), .C(n119), .D(n1025), .Z(n2644) );
  GTECH_OAI2N2 U403 ( .A(n79), .B(n118), .C(n119), .D(n1024), .Z(n2643) );
  GTECH_OAI2N2 U404 ( .A(n80), .B(n118), .C(n119), .D(n1023), .Z(n2642) );
  GTECH_OAI2N2 U405 ( .A(n81), .B(n118), .C(n119), .D(n1022), .Z(n2641) );
  GTECH_OAI2N2 U406 ( .A(n82), .B(n118), .C(n119), .D(n1021), .Z(n2640) );
  GTECH_OAI2N2 U407 ( .A(n83), .B(n118), .C(n119), .D(n1020), .Z(n2639) );
  GTECH_OAI2N2 U408 ( .A(n84), .B(n118), .C(n119), .D(n1019), .Z(n2638) );
  GTECH_OAI2N2 U409 ( .A(n85), .B(n118), .C(n119), .D(n1018), .Z(n2637) );
  GTECH_OR2 U410 ( .A(n118), .B(n13), .Z(n119) );
  GTECH_OR_NOT U411 ( .A(n86), .B(n120), .Z(n118) );
  GTECH_OAI2N2 U412 ( .A(n76), .B(n121), .C(n122), .D(n1017), .Z(n2636) );
  GTECH_OAI2N2 U413 ( .A(n79), .B(n121), .C(n122), .D(n1016), .Z(n2635) );
  GTECH_OAI2N2 U414 ( .A(n80), .B(n121), .C(n122), .D(n1015), .Z(n2634) );
  GTECH_OAI2N2 U415 ( .A(n81), .B(n121), .C(n122), .D(n1014), .Z(n2633) );
  GTECH_OAI2N2 U416 ( .A(n82), .B(n121), .C(n122), .D(n1013), .Z(n2632) );
  GTECH_OAI2N2 U417 ( .A(n83), .B(n121), .C(n122), .D(n1012), .Z(n2631) );
  GTECH_OAI2N2 U418 ( .A(n84), .B(n121), .C(n122), .D(n1011), .Z(n2630) );
  GTECH_OAI2N2 U419 ( .A(n85), .B(n121), .C(n122), .D(n1010), .Z(n2629) );
  GTECH_OR2 U420 ( .A(n121), .B(n13), .Z(n122) );
  GTECH_OR_NOT U421 ( .A(n86), .B(n123), .Z(n121) );
  GTECH_OAI2N2 U422 ( .A(n76), .B(n124), .C(n125), .D(n1009), .Z(n2628) );
  GTECH_OAI2N2 U423 ( .A(n79), .B(n124), .C(n125), .D(n1008), .Z(n2627) );
  GTECH_OAI2N2 U424 ( .A(n80), .B(n124), .C(n125), .D(n1007), .Z(n2626) );
  GTECH_OAI2N2 U425 ( .A(n81), .B(n124), .C(n125), .D(n1006), .Z(n2625) );
  GTECH_OAI2N2 U426 ( .A(n82), .B(n124), .C(n125), .D(n1005), .Z(n2624) );
  GTECH_OAI2N2 U427 ( .A(n83), .B(n124), .C(n125), .D(n1004), .Z(n2623) );
  GTECH_OAI2N2 U428 ( .A(n84), .B(n124), .C(n125), .D(n1003), .Z(n2622) );
  GTECH_OAI2N2 U429 ( .A(n85), .B(n124), .C(n125), .D(n1002), .Z(n2621) );
  GTECH_OR2 U430 ( .A(n124), .B(n13), .Z(n125) );
  GTECH_OR_NOT U431 ( .A(n86), .B(n126), .Z(n124) );
  GTECH_OAI2N2 U432 ( .A(n76), .B(n127), .C(n128), .D(n1001), .Z(n2620) );
  GTECH_OAI2N2 U433 ( .A(n79), .B(n127), .C(n128), .D(n1000), .Z(n2619) );
  GTECH_OAI2N2 U434 ( .A(n80), .B(n127), .C(n128), .D(n999), .Z(n2618) );
  GTECH_OAI2N2 U435 ( .A(n81), .B(n127), .C(n128), .D(n998), .Z(n2617) );
  GTECH_OAI2N2 U436 ( .A(n82), .B(n127), .C(n128), .D(n997), .Z(n2616) );
  GTECH_OAI2N2 U437 ( .A(n83), .B(n127), .C(n128), .D(n996), .Z(n2615) );
  GTECH_OAI2N2 U438 ( .A(n84), .B(n127), .C(n128), .D(n995), .Z(n2614) );
  GTECH_OAI2N2 U439 ( .A(n85), .B(n127), .C(n128), .D(n994), .Z(n2613) );
  GTECH_OR2 U440 ( .A(n127), .B(n13), .Z(n128) );
  GTECH_OR_NOT U441 ( .A(n86), .B(n129), .Z(n127) );
  GTECH_OAI2N2 U442 ( .A(n76), .B(n130), .C(n131), .D(n993), .Z(n2612) );
  GTECH_OAI2N2 U443 ( .A(n79), .B(n130), .C(n131), .D(n992), .Z(n2611) );
  GTECH_OAI2N2 U444 ( .A(n80), .B(n130), .C(n131), .D(n991), .Z(n2610) );
  GTECH_OAI2N2 U445 ( .A(n81), .B(n130), .C(n131), .D(n990), .Z(n2609) );
  GTECH_OAI2N2 U446 ( .A(n82), .B(n130), .C(n131), .D(n989), .Z(n2608) );
  GTECH_OAI2N2 U447 ( .A(n83), .B(n130), .C(n131), .D(n988), .Z(n2607) );
  GTECH_OAI2N2 U448 ( .A(n84), .B(n130), .C(n131), .D(n987), .Z(n2606) );
  GTECH_OAI2N2 U449 ( .A(n85), .B(n130), .C(n131), .D(n986), .Z(n2605) );
  GTECH_OR2 U450 ( .A(n130), .B(n13), .Z(n131) );
  GTECH_OR2 U451 ( .A(n86), .B(n132), .Z(n130) );
  GTECH_OR_NOT U452 ( .A(address[6]), .B(n133), .Z(n86) );
  GTECH_OAI2N2 U453 ( .A(n76), .B(n134), .C(n135), .D(n985), .Z(n2604) );
  GTECH_OAI2N2 U454 ( .A(n79), .B(n134), .C(n135), .D(n984), .Z(n2603) );
  GTECH_OAI2N2 U455 ( .A(n80), .B(n134), .C(n135), .D(n983), .Z(n2602) );
  GTECH_OAI2N2 U456 ( .A(n81), .B(n134), .C(n135), .D(n982), .Z(n2601) );
  GTECH_OAI2N2 U457 ( .A(n82), .B(n134), .C(n135), .D(n981), .Z(n2600) );
  GTECH_OAI2N2 U458 ( .A(n83), .B(n134), .C(n135), .D(n980), .Z(n2599) );
  GTECH_OAI2N2 U459 ( .A(n84), .B(n134), .C(n135), .D(n979), .Z(n2598) );
  GTECH_OAI2N2 U460 ( .A(n85), .B(n134), .C(n135), .D(n978), .Z(n2597) );
  GTECH_OR2 U461 ( .A(n134), .B(n13), .Z(n135) );
  GTECH_OR_NOT U462 ( .A(n136), .B(n87), .Z(n134) );
  GTECH_OAI2N2 U463 ( .A(n76), .B(n137), .C(n138), .D(n977), .Z(n2596) );
  GTECH_OAI2N2 U464 ( .A(n79), .B(n137), .C(n138), .D(n976), .Z(n2595) );
  GTECH_OAI2N2 U465 ( .A(n80), .B(n137), .C(n138), .D(n975), .Z(n2594) );
  GTECH_OAI2N2 U466 ( .A(n81), .B(n137), .C(n138), .D(n974), .Z(n2593) );
  GTECH_OAI2N2 U467 ( .A(n82), .B(n137), .C(n138), .D(n973), .Z(n2592) );
  GTECH_OAI2N2 U468 ( .A(n83), .B(n137), .C(n138), .D(n972), .Z(n2591) );
  GTECH_OAI2N2 U469 ( .A(n84), .B(n137), .C(n138), .D(n971), .Z(n2590) );
  GTECH_OAI2N2 U470 ( .A(n85), .B(n137), .C(n138), .D(n970), .Z(n2589) );
  GTECH_OR2 U471 ( .A(n137), .B(n13), .Z(n138) );
  GTECH_OR_NOT U472 ( .A(n136), .B(n90), .Z(n137) );
  GTECH_OAI2N2 U473 ( .A(n76), .B(n139), .C(n140), .D(n969), .Z(n2588) );
  GTECH_OAI2N2 U474 ( .A(n79), .B(n139), .C(n140), .D(n968), .Z(n2587) );
  GTECH_OAI2N2 U475 ( .A(n80), .B(n139), .C(n140), .D(n967), .Z(n2586) );
  GTECH_OAI2N2 U476 ( .A(n81), .B(n139), .C(n140), .D(n966), .Z(n2585) );
  GTECH_OAI2N2 U477 ( .A(n82), .B(n139), .C(n140), .D(n965), .Z(n2584) );
  GTECH_OAI2N2 U478 ( .A(n83), .B(n139), .C(n140), .D(n964), .Z(n2583) );
  GTECH_OAI2N2 U479 ( .A(n84), .B(n139), .C(n140), .D(n963), .Z(n2582) );
  GTECH_OAI2N2 U480 ( .A(n85), .B(n139), .C(n140), .D(n962), .Z(n2581) );
  GTECH_OR2 U481 ( .A(n139), .B(n13), .Z(n140) );
  GTECH_OR_NOT U482 ( .A(n136), .B(n93), .Z(n139) );
  GTECH_OAI2N2 U483 ( .A(n76), .B(n141), .C(n142), .D(n961), .Z(n2580) );
  GTECH_OAI2N2 U484 ( .A(n79), .B(n141), .C(n142), .D(n960), .Z(n2579) );
  GTECH_OAI2N2 U485 ( .A(n80), .B(n141), .C(n142), .D(n959), .Z(n2578) );
  GTECH_OAI2N2 U486 ( .A(n81), .B(n141), .C(n142), .D(n958), .Z(n2577) );
  GTECH_OAI2N2 U487 ( .A(n82), .B(n141), .C(n142), .D(n957), .Z(n2576) );
  GTECH_OAI2N2 U488 ( .A(n83), .B(n141), .C(n142), .D(n956), .Z(n2575) );
  GTECH_OAI2N2 U489 ( .A(n84), .B(n141), .C(n142), .D(n955), .Z(n2574) );
  GTECH_OAI2N2 U490 ( .A(n85), .B(n141), .C(n142), .D(n954), .Z(n2573) );
  GTECH_OR2 U491 ( .A(n141), .B(n13), .Z(n142) );
  GTECH_OR_NOT U492 ( .A(n136), .B(n96), .Z(n141) );
  GTECH_OAI2N2 U493 ( .A(n76), .B(n143), .C(n144), .D(n953), .Z(n2572) );
  GTECH_OAI2N2 U494 ( .A(n79), .B(n143), .C(n144), .D(n952), .Z(n2571) );
  GTECH_OAI2N2 U495 ( .A(n80), .B(n143), .C(n144), .D(n951), .Z(n2570) );
  GTECH_OAI2N2 U496 ( .A(n81), .B(n143), .C(n144), .D(n950), .Z(n2569) );
  GTECH_OAI2N2 U497 ( .A(n82), .B(n143), .C(n144), .D(n949), .Z(n2568) );
  GTECH_OAI2N2 U498 ( .A(n83), .B(n143), .C(n144), .D(n948), .Z(n2567) );
  GTECH_OAI2N2 U499 ( .A(n84), .B(n143), .C(n144), .D(n947), .Z(n2566) );
  GTECH_OAI2N2 U500 ( .A(n85), .B(n143), .C(n144), .D(n946), .Z(n2565) );
  GTECH_OR2 U501 ( .A(n143), .B(n13), .Z(n144) );
  GTECH_OR_NOT U502 ( .A(n136), .B(n99), .Z(n143) );
  GTECH_OAI2N2 U503 ( .A(n76), .B(n145), .C(n146), .D(n945), .Z(n2564) );
  GTECH_OAI2N2 U504 ( .A(n79), .B(n145), .C(n146), .D(n944), .Z(n2563) );
  GTECH_OAI2N2 U505 ( .A(n80), .B(n145), .C(n146), .D(n943), .Z(n2562) );
  GTECH_OAI2N2 U506 ( .A(n81), .B(n145), .C(n146), .D(n942), .Z(n2561) );
  GTECH_OAI2N2 U507 ( .A(n82), .B(n145), .C(n146), .D(n941), .Z(n2560) );
  GTECH_OAI2N2 U508 ( .A(n83), .B(n145), .C(n146), .D(n940), .Z(n2559) );
  GTECH_OAI2N2 U509 ( .A(n84), .B(n145), .C(n146), .D(n939), .Z(n2558) );
  GTECH_OAI2N2 U510 ( .A(n85), .B(n145), .C(n146), .D(n938), .Z(n2557) );
  GTECH_OR2 U511 ( .A(n145), .B(n13), .Z(n146) );
  GTECH_OR_NOT U512 ( .A(n136), .B(n102), .Z(n145) );
  GTECH_OAI2N2 U513 ( .A(n76), .B(n147), .C(n148), .D(n937), .Z(n2556) );
  GTECH_OAI2N2 U514 ( .A(n79), .B(n147), .C(n148), .D(n936), .Z(n2555) );
  GTECH_OAI2N2 U515 ( .A(n80), .B(n147), .C(n148), .D(n935), .Z(n2554) );
  GTECH_OAI2N2 U516 ( .A(n81), .B(n147), .C(n148), .D(n934), .Z(n2553) );
  GTECH_OAI2N2 U517 ( .A(n82), .B(n147), .C(n148), .D(n933), .Z(n2552) );
  GTECH_OAI2N2 U518 ( .A(n83), .B(n147), .C(n148), .D(n932), .Z(n2551) );
  GTECH_OAI2N2 U519 ( .A(n84), .B(n147), .C(n148), .D(n931), .Z(n2550) );
  GTECH_OAI2N2 U520 ( .A(n85), .B(n147), .C(n148), .D(n930), .Z(n2549) );
  GTECH_OR2 U521 ( .A(n147), .B(n13), .Z(n148) );
  GTECH_OR_NOT U522 ( .A(n136), .B(n105), .Z(n147) );
  GTECH_OAI2N2 U523 ( .A(n76), .B(n149), .C(n150), .D(n929), .Z(n2548) );
  GTECH_OAI2N2 U524 ( .A(n79), .B(n149), .C(n150), .D(n928), .Z(n2547) );
  GTECH_OAI2N2 U525 ( .A(n80), .B(n149), .C(n150), .D(n927), .Z(n2546) );
  GTECH_OAI2N2 U526 ( .A(n81), .B(n149), .C(n150), .D(n926), .Z(n2545) );
  GTECH_OAI2N2 U527 ( .A(n82), .B(n149), .C(n150), .D(n925), .Z(n2544) );
  GTECH_OAI2N2 U528 ( .A(n83), .B(n149), .C(n150), .D(n924), .Z(n2543) );
  GTECH_OAI2N2 U529 ( .A(n84), .B(n149), .C(n150), .D(n923), .Z(n2542) );
  GTECH_OAI2N2 U530 ( .A(n85), .B(n149), .C(n150), .D(n922), .Z(n2541) );
  GTECH_OR2 U531 ( .A(n149), .B(n13), .Z(n150) );
  GTECH_OR_NOT U532 ( .A(n136), .B(n108), .Z(n149) );
  GTECH_OAI2N2 U533 ( .A(n76), .B(n151), .C(n152), .D(n921), .Z(n2540) );
  GTECH_OAI2N2 U534 ( .A(n79), .B(n151), .C(n152), .D(n920), .Z(n2539) );
  GTECH_OAI2N2 U535 ( .A(n80), .B(n151), .C(n152), .D(n919), .Z(n2538) );
  GTECH_OAI2N2 U536 ( .A(n81), .B(n151), .C(n152), .D(n918), .Z(n2537) );
  GTECH_OAI2N2 U537 ( .A(n82), .B(n151), .C(n152), .D(n917), .Z(n2536) );
  GTECH_OAI2N2 U538 ( .A(n83), .B(n151), .C(n152), .D(n916), .Z(n2535) );
  GTECH_OAI2N2 U539 ( .A(n84), .B(n151), .C(n152), .D(n915), .Z(n2534) );
  GTECH_OAI2N2 U540 ( .A(n85), .B(n151), .C(n152), .D(n914), .Z(n2533) );
  GTECH_OR2 U541 ( .A(n151), .B(n13), .Z(n152) );
  GTECH_OR_NOT U542 ( .A(n136), .B(n111), .Z(n151) );
  GTECH_OAI2N2 U543 ( .A(n76), .B(n153), .C(n154), .D(n913), .Z(n2532) );
  GTECH_OAI2N2 U544 ( .A(n79), .B(n153), .C(n154), .D(n912), .Z(n2531) );
  GTECH_OAI2N2 U545 ( .A(n80), .B(n153), .C(n154), .D(n911), .Z(n2530) );
  GTECH_OAI2N2 U546 ( .A(n81), .B(n153), .C(n154), .D(n910), .Z(n2529) );
  GTECH_OAI2N2 U547 ( .A(n82), .B(n153), .C(n154), .D(n909), .Z(n2528) );
  GTECH_OAI2N2 U548 ( .A(n83), .B(n153), .C(n154), .D(n908), .Z(n2527) );
  GTECH_OAI2N2 U549 ( .A(n84), .B(n153), .C(n154), .D(n907), .Z(n2526) );
  GTECH_OAI2N2 U550 ( .A(n85), .B(n153), .C(n154), .D(n906), .Z(n2525) );
  GTECH_OR2 U551 ( .A(n153), .B(n13), .Z(n154) );
  GTECH_OR_NOT U552 ( .A(n136), .B(n114), .Z(n153) );
  GTECH_OAI2N2 U553 ( .A(n76), .B(n155), .C(n156), .D(n905), .Z(n2524) );
  GTECH_OAI2N2 U554 ( .A(n79), .B(n155), .C(n156), .D(n904), .Z(n2523) );
  GTECH_OAI2N2 U555 ( .A(n80), .B(n155), .C(n156), .D(n903), .Z(n2522) );
  GTECH_OAI2N2 U556 ( .A(n81), .B(n155), .C(n156), .D(n902), .Z(n2521) );
  GTECH_OAI2N2 U557 ( .A(n82), .B(n155), .C(n156), .D(n901), .Z(n2520) );
  GTECH_OAI2N2 U558 ( .A(n83), .B(n155), .C(n156), .D(n900), .Z(n2519) );
  GTECH_OAI2N2 U559 ( .A(n84), .B(n155), .C(n156), .D(n899), .Z(n2518) );
  GTECH_OAI2N2 U560 ( .A(n85), .B(n155), .C(n156), .D(n898), .Z(n2517) );
  GTECH_OR2 U561 ( .A(n155), .B(n13), .Z(n156) );
  GTECH_OR_NOT U562 ( .A(n136), .B(n117), .Z(n155) );
  GTECH_OAI2N2 U563 ( .A(n76), .B(n157), .C(n158), .D(n897), .Z(n2516) );
  GTECH_OAI2N2 U564 ( .A(n79), .B(n157), .C(n158), .D(n896), .Z(n2515) );
  GTECH_OAI2N2 U565 ( .A(n80), .B(n157), .C(n158), .D(n895), .Z(n2514) );
  GTECH_OAI2N2 U566 ( .A(n81), .B(n157), .C(n158), .D(n894), .Z(n2513) );
  GTECH_OAI2N2 U567 ( .A(n82), .B(n157), .C(n158), .D(n893), .Z(n2512) );
  GTECH_OAI2N2 U568 ( .A(n83), .B(n157), .C(n158), .D(n892), .Z(n2511) );
  GTECH_OAI2N2 U569 ( .A(n84), .B(n157), .C(n158), .D(n891), .Z(n2510) );
  GTECH_OAI2N2 U570 ( .A(n85), .B(n157), .C(n158), .D(n890), .Z(n2509) );
  GTECH_OR2 U571 ( .A(n157), .B(n13), .Z(n158) );
  GTECH_OR_NOT U572 ( .A(n136), .B(n120), .Z(n157) );
  GTECH_OAI2N2 U573 ( .A(n76), .B(n159), .C(n160), .D(n889), .Z(n2508) );
  GTECH_OAI2N2 U574 ( .A(n79), .B(n159), .C(n160), .D(n888), .Z(n2507) );
  GTECH_OAI2N2 U575 ( .A(n80), .B(n159), .C(n160), .D(n887), .Z(n2506) );
  GTECH_OAI2N2 U576 ( .A(n81), .B(n159), .C(n160), .D(n886), .Z(n2505) );
  GTECH_OAI2N2 U577 ( .A(n82), .B(n159), .C(n160), .D(n885), .Z(n2504) );
  GTECH_OAI2N2 U578 ( .A(n83), .B(n159), .C(n160), .D(n884), .Z(n2503) );
  GTECH_OAI2N2 U579 ( .A(n84), .B(n159), .C(n160), .D(n883), .Z(n2502) );
  GTECH_OAI2N2 U580 ( .A(n85), .B(n159), .C(n160), .D(n882), .Z(n2501) );
  GTECH_OR2 U581 ( .A(n159), .B(n13), .Z(n160) );
  GTECH_OR_NOT U582 ( .A(n136), .B(n123), .Z(n159) );
  GTECH_OAI2N2 U583 ( .A(n76), .B(n161), .C(n162), .D(n881), .Z(n2500) );
  GTECH_OAI2N2 U584 ( .A(n79), .B(n161), .C(n162), .D(n880), .Z(n2499) );
  GTECH_OAI2N2 U585 ( .A(n80), .B(n161), .C(n162), .D(n879), .Z(n2498) );
  GTECH_OAI2N2 U586 ( .A(n81), .B(n161), .C(n162), .D(n878), .Z(n2497) );
  GTECH_OAI2N2 U587 ( .A(n82), .B(n161), .C(n162), .D(n877), .Z(n2496) );
  GTECH_OAI2N2 U588 ( .A(n83), .B(n161), .C(n162), .D(n876), .Z(n2495) );
  GTECH_OAI2N2 U589 ( .A(n84), .B(n161), .C(n162), .D(n875), .Z(n2494) );
  GTECH_OAI2N2 U590 ( .A(n85), .B(n161), .C(n162), .D(n874), .Z(n2493) );
  GTECH_OR2 U591 ( .A(n161), .B(n13), .Z(n162) );
  GTECH_OR_NOT U592 ( .A(n136), .B(n126), .Z(n161) );
  GTECH_OAI2N2 U593 ( .A(n76), .B(n163), .C(n164), .D(n873), .Z(n2492) );
  GTECH_OAI2N2 U594 ( .A(n79), .B(n163), .C(n164), .D(n872), .Z(n2491) );
  GTECH_OAI2N2 U595 ( .A(n80), .B(n163), .C(n164), .D(n871), .Z(n2490) );
  GTECH_OAI2N2 U596 ( .A(n81), .B(n163), .C(n164), .D(n870), .Z(n2489) );
  GTECH_OAI2N2 U597 ( .A(n82), .B(n163), .C(n164), .D(n869), .Z(n2488) );
  GTECH_OAI2N2 U598 ( .A(n83), .B(n163), .C(n164), .D(n868), .Z(n2487) );
  GTECH_OAI2N2 U599 ( .A(n84), .B(n163), .C(n164), .D(n867), .Z(n2486) );
  GTECH_OAI2N2 U600 ( .A(n85), .B(n163), .C(n164), .D(n866), .Z(n2485) );
  GTECH_OR2 U601 ( .A(n163), .B(n13), .Z(n164) );
  GTECH_OR_NOT U602 ( .A(n136), .B(n129), .Z(n163) );
  GTECH_OAI2N2 U603 ( .A(n76), .B(n165), .C(n166), .D(n865), .Z(n2484) );
  GTECH_OAI2N2 U604 ( .A(n79), .B(n165), .C(n166), .D(n864), .Z(n2483) );
  GTECH_OAI2N2 U605 ( .A(n80), .B(n165), .C(n166), .D(n863), .Z(n2482) );
  GTECH_OAI2N2 U606 ( .A(n81), .B(n165), .C(n166), .D(n862), .Z(n2481) );
  GTECH_OAI2N2 U607 ( .A(n82), .B(n165), .C(n166), .D(n861), .Z(n2480) );
  GTECH_OAI2N2 U608 ( .A(n83), .B(n165), .C(n166), .D(n860), .Z(n2479) );
  GTECH_OAI2N2 U609 ( .A(n84), .B(n165), .C(n166), .D(n859), .Z(n2478) );
  GTECH_OAI2N2 U610 ( .A(n85), .B(n165), .C(n166), .D(n858), .Z(n2477) );
  GTECH_OR2 U611 ( .A(n165), .B(n13), .Z(n166) );
  GTECH_OR2 U612 ( .A(n136), .B(n132), .Z(n165) );
  GTECH_OR_NOT U613 ( .A(address[6]), .B(n167), .Z(n136) );
  GTECH_OAI2N2 U614 ( .A(n76), .B(n168), .C(n169), .D(n857), .Z(n2476) );
  GTECH_OAI2N2 U615 ( .A(n79), .B(n168), .C(n169), .D(n856), .Z(n2475) );
  GTECH_OAI2N2 U616 ( .A(n80), .B(n168), .C(n169), .D(n855), .Z(n2474) );
  GTECH_OAI2N2 U617 ( .A(n81), .B(n168), .C(n169), .D(n854), .Z(n2473) );
  GTECH_OAI2N2 U618 ( .A(n82), .B(n168), .C(n169), .D(n853), .Z(n2472) );
  GTECH_OAI2N2 U619 ( .A(n83), .B(n168), .C(n169), .D(n852), .Z(n2471) );
  GTECH_OAI2N2 U620 ( .A(n84), .B(n168), .C(n169), .D(n851), .Z(n2470) );
  GTECH_OAI2N2 U621 ( .A(n85), .B(n168), .C(n169), .D(n850), .Z(n2469) );
  GTECH_OR2 U622 ( .A(n168), .B(n13), .Z(n169) );
  GTECH_OR_NOT U623 ( .A(n170), .B(n87), .Z(n168) );
  GTECH_OAI2N2 U624 ( .A(n76), .B(n171), .C(n172), .D(n849), .Z(n2468) );
  GTECH_OAI2N2 U625 ( .A(n79), .B(n171), .C(n172), .D(n848), .Z(n2467) );
  GTECH_OAI2N2 U626 ( .A(n80), .B(n171), .C(n172), .D(n847), .Z(n2466) );
  GTECH_OAI2N2 U627 ( .A(n81), .B(n171), .C(n172), .D(n846), .Z(n2465) );
  GTECH_OAI2N2 U628 ( .A(n82), .B(n171), .C(n172), .D(n845), .Z(n2464) );
  GTECH_OAI2N2 U629 ( .A(n83), .B(n171), .C(n172), .D(n844), .Z(n2463) );
  GTECH_OAI2N2 U630 ( .A(n84), .B(n171), .C(n172), .D(n843), .Z(n2462) );
  GTECH_OAI2N2 U631 ( .A(n85), .B(n171), .C(n172), .D(n842), .Z(n2461) );
  GTECH_OR2 U632 ( .A(n171), .B(n13), .Z(n172) );
  GTECH_OR_NOT U633 ( .A(n170), .B(n90), .Z(n171) );
  GTECH_OAI2N2 U634 ( .A(n76), .B(n173), .C(n174), .D(n841), .Z(n2460) );
  GTECH_OAI2N2 U635 ( .A(n79), .B(n173), .C(n174), .D(n840), .Z(n2459) );
  GTECH_OAI2N2 U636 ( .A(n80), .B(n173), .C(n174), .D(n839), .Z(n2458) );
  GTECH_OAI2N2 U637 ( .A(n81), .B(n173), .C(n174), .D(n838), .Z(n2457) );
  GTECH_OAI2N2 U638 ( .A(n82), .B(n173), .C(n174), .D(n837), .Z(n2456) );
  GTECH_OAI2N2 U639 ( .A(n83), .B(n173), .C(n174), .D(n836), .Z(n2455) );
  GTECH_OAI2N2 U640 ( .A(n84), .B(n173), .C(n174), .D(n835), .Z(n2454) );
  GTECH_OAI2N2 U641 ( .A(n85), .B(n173), .C(n174), .D(n834), .Z(n2453) );
  GTECH_OR2 U642 ( .A(n173), .B(n13), .Z(n174) );
  GTECH_OR_NOT U643 ( .A(n170), .B(n93), .Z(n173) );
  GTECH_OAI2N2 U644 ( .A(n76), .B(n175), .C(n176), .D(n833), .Z(n2452) );
  GTECH_OAI2N2 U645 ( .A(n79), .B(n175), .C(n176), .D(n832), .Z(n2451) );
  GTECH_OAI2N2 U646 ( .A(n80), .B(n175), .C(n176), .D(n831), .Z(n2450) );
  GTECH_OAI2N2 U647 ( .A(n81), .B(n175), .C(n176), .D(n830), .Z(n2449) );
  GTECH_OAI2N2 U648 ( .A(n82), .B(n175), .C(n176), .D(n829), .Z(n2448) );
  GTECH_OAI2N2 U649 ( .A(n83), .B(n175), .C(n176), .D(n828), .Z(n2447) );
  GTECH_OAI2N2 U650 ( .A(n84), .B(n175), .C(n176), .D(n827), .Z(n2446) );
  GTECH_OAI2N2 U651 ( .A(n85), .B(n175), .C(n176), .D(n826), .Z(n2445) );
  GTECH_OR2 U652 ( .A(n175), .B(n13), .Z(n176) );
  GTECH_OR_NOT U653 ( .A(n170), .B(n96), .Z(n175) );
  GTECH_OAI2N2 U654 ( .A(n76), .B(n177), .C(n178), .D(n825), .Z(n2444) );
  GTECH_OAI2N2 U655 ( .A(n79), .B(n177), .C(n178), .D(n824), .Z(n2443) );
  GTECH_OAI2N2 U656 ( .A(n80), .B(n177), .C(n178), .D(n823), .Z(n2442) );
  GTECH_OAI2N2 U657 ( .A(n81), .B(n177), .C(n178), .D(n822), .Z(n2441) );
  GTECH_OAI2N2 U658 ( .A(n82), .B(n177), .C(n178), .D(n821), .Z(n2440) );
  GTECH_OAI2N2 U659 ( .A(n83), .B(n177), .C(n178), .D(n820), .Z(n2439) );
  GTECH_OAI2N2 U660 ( .A(n84), .B(n177), .C(n178), .D(n819), .Z(n2438) );
  GTECH_OAI2N2 U661 ( .A(n85), .B(n177), .C(n178), .D(n818), .Z(n2437) );
  GTECH_OR2 U662 ( .A(n177), .B(n13), .Z(n178) );
  GTECH_OR_NOT U663 ( .A(n170), .B(n99), .Z(n177) );
  GTECH_OAI2N2 U664 ( .A(n76), .B(n179), .C(n180), .D(n817), .Z(n2436) );
  GTECH_OAI2N2 U665 ( .A(n79), .B(n179), .C(n180), .D(n816), .Z(n2435) );
  GTECH_OAI2N2 U666 ( .A(n80), .B(n179), .C(n180), .D(n815), .Z(n2434) );
  GTECH_OAI2N2 U667 ( .A(n81), .B(n179), .C(n180), .D(n814), .Z(n2433) );
  GTECH_OAI2N2 U668 ( .A(n82), .B(n179), .C(n180), .D(n813), .Z(n2432) );
  GTECH_OAI2N2 U669 ( .A(n83), .B(n179), .C(n180), .D(n812), .Z(n2431) );
  GTECH_OAI2N2 U670 ( .A(n84), .B(n179), .C(n180), .D(n811), .Z(n2430) );
  GTECH_OAI2N2 U671 ( .A(n85), .B(n179), .C(n180), .D(n810), .Z(n2429) );
  GTECH_OR2 U672 ( .A(n179), .B(n13), .Z(n180) );
  GTECH_OR_NOT U673 ( .A(n170), .B(n102), .Z(n179) );
  GTECH_OAI2N2 U674 ( .A(n76), .B(n181), .C(n182), .D(n809), .Z(n2428) );
  GTECH_OAI2N2 U675 ( .A(n79), .B(n181), .C(n182), .D(n808), .Z(n2427) );
  GTECH_OAI2N2 U676 ( .A(n80), .B(n181), .C(n182), .D(n807), .Z(n2426) );
  GTECH_OAI2N2 U677 ( .A(n81), .B(n181), .C(n182), .D(n806), .Z(n2425) );
  GTECH_OAI2N2 U678 ( .A(n82), .B(n181), .C(n182), .D(n805), .Z(n2424) );
  GTECH_OAI2N2 U679 ( .A(n83), .B(n181), .C(n182), .D(n804), .Z(n2423) );
  GTECH_OAI2N2 U680 ( .A(n84), .B(n181), .C(n182), .D(n803), .Z(n2422) );
  GTECH_OAI2N2 U681 ( .A(n85), .B(n181), .C(n182), .D(n802), .Z(n2421) );
  GTECH_OR2 U682 ( .A(n181), .B(n13), .Z(n182) );
  GTECH_OR_NOT U683 ( .A(n170), .B(n105), .Z(n181) );
  GTECH_OAI2N2 U684 ( .A(n76), .B(n183), .C(n184), .D(n801), .Z(n2420) );
  GTECH_OAI2N2 U685 ( .A(n79), .B(n183), .C(n184), .D(n800), .Z(n2419) );
  GTECH_OAI2N2 U686 ( .A(n80), .B(n183), .C(n184), .D(n799), .Z(n2418) );
  GTECH_OAI2N2 U687 ( .A(n81), .B(n183), .C(n184), .D(n798), .Z(n2417) );
  GTECH_OAI2N2 U688 ( .A(n82), .B(n183), .C(n184), .D(n797), .Z(n2416) );
  GTECH_OAI2N2 U689 ( .A(n83), .B(n183), .C(n184), .D(n796), .Z(n2415) );
  GTECH_OAI2N2 U690 ( .A(n84), .B(n183), .C(n184), .D(n795), .Z(n2414) );
  GTECH_OAI2N2 U691 ( .A(n85), .B(n183), .C(n184), .D(n794), .Z(n2413) );
  GTECH_OR2 U692 ( .A(n183), .B(n13), .Z(n184) );
  GTECH_OR_NOT U693 ( .A(n170), .B(n108), .Z(n183) );
  GTECH_OAI2N2 U694 ( .A(n76), .B(n185), .C(n186), .D(n793), .Z(n2412) );
  GTECH_OAI2N2 U695 ( .A(n79), .B(n185), .C(n186), .D(n792), .Z(n2411) );
  GTECH_OAI2N2 U696 ( .A(n80), .B(n185), .C(n186), .D(n791), .Z(n2410) );
  GTECH_OAI2N2 U697 ( .A(n81), .B(n185), .C(n186), .D(n790), .Z(n2409) );
  GTECH_OAI2N2 U698 ( .A(n82), .B(n185), .C(n186), .D(n789), .Z(n2408) );
  GTECH_OAI2N2 U699 ( .A(n83), .B(n185), .C(n186), .D(n788), .Z(n2407) );
  GTECH_OAI2N2 U700 ( .A(n84), .B(n185), .C(n186), .D(n787), .Z(n2406) );
  GTECH_OAI2N2 U701 ( .A(n85), .B(n185), .C(n186), .D(n786), .Z(n2405) );
  GTECH_OR2 U702 ( .A(n185), .B(n13), .Z(n186) );
  GTECH_OR_NOT U703 ( .A(n170), .B(n111), .Z(n185) );
  GTECH_OAI2N2 U704 ( .A(n76), .B(n187), .C(n188), .D(n785), .Z(n2404) );
  GTECH_OAI2N2 U705 ( .A(n79), .B(n187), .C(n188), .D(n784), .Z(n2403) );
  GTECH_OAI2N2 U706 ( .A(n80), .B(n187), .C(n188), .D(n783), .Z(n2402) );
  GTECH_OAI2N2 U707 ( .A(n81), .B(n187), .C(n188), .D(n782), .Z(n2401) );
  GTECH_OAI2N2 U708 ( .A(n82), .B(n187), .C(n188), .D(n781), .Z(n2400) );
  GTECH_OAI2N2 U709 ( .A(n83), .B(n187), .C(n188), .D(n780), .Z(n2399) );
  GTECH_OAI2N2 U710 ( .A(n84), .B(n187), .C(n188), .D(n779), .Z(n2398) );
  GTECH_OAI2N2 U711 ( .A(n85), .B(n187), .C(n188), .D(n778), .Z(n2397) );
  GTECH_OR2 U712 ( .A(n187), .B(n13), .Z(n188) );
  GTECH_OR_NOT U713 ( .A(n170), .B(n114), .Z(n187) );
  GTECH_OAI2N2 U714 ( .A(n76), .B(n189), .C(n190), .D(n777), .Z(n2396) );
  GTECH_OAI2N2 U715 ( .A(n79), .B(n189), .C(n190), .D(n776), .Z(n2395) );
  GTECH_OAI2N2 U716 ( .A(n80), .B(n189), .C(n190), .D(n775), .Z(n2394) );
  GTECH_OAI2N2 U717 ( .A(n81), .B(n189), .C(n190), .D(n774), .Z(n2393) );
  GTECH_OAI2N2 U718 ( .A(n82), .B(n189), .C(n190), .D(n773), .Z(n2392) );
  GTECH_OAI2N2 U719 ( .A(n83), .B(n189), .C(n190), .D(n772), .Z(n2391) );
  GTECH_OAI2N2 U720 ( .A(n84), .B(n189), .C(n190), .D(n771), .Z(n2390) );
  GTECH_OAI2N2 U721 ( .A(n85), .B(n189), .C(n190), .D(n770), .Z(n2389) );
  GTECH_OR2 U722 ( .A(n189), .B(n13), .Z(n190) );
  GTECH_OR_NOT U723 ( .A(n170), .B(n117), .Z(n189) );
  GTECH_OAI2N2 U724 ( .A(n76), .B(n191), .C(n192), .D(n769), .Z(n2388) );
  GTECH_OAI2N2 U725 ( .A(n79), .B(n191), .C(n192), .D(n768), .Z(n2387) );
  GTECH_OAI2N2 U726 ( .A(n80), .B(n191), .C(n192), .D(n767), .Z(n2386) );
  GTECH_OAI2N2 U727 ( .A(n81), .B(n191), .C(n192), .D(n766), .Z(n2385) );
  GTECH_OAI2N2 U728 ( .A(n82), .B(n191), .C(n192), .D(n765), .Z(n2384) );
  GTECH_OAI2N2 U729 ( .A(n83), .B(n191), .C(n192), .D(n764), .Z(n2383) );
  GTECH_OAI2N2 U730 ( .A(n84), .B(n191), .C(n192), .D(n763), .Z(n2382) );
  GTECH_OAI2N2 U731 ( .A(n85), .B(n191), .C(n192), .D(n762), .Z(n2381) );
  GTECH_OR2 U732 ( .A(n191), .B(n13), .Z(n192) );
  GTECH_OR_NOT U733 ( .A(n170), .B(n120), .Z(n191) );
  GTECH_OAI2N2 U734 ( .A(n76), .B(n193), .C(n194), .D(n761), .Z(n2380) );
  GTECH_OAI2N2 U735 ( .A(n79), .B(n193), .C(n194), .D(n760), .Z(n2379) );
  GTECH_OAI2N2 U736 ( .A(n80), .B(n193), .C(n194), .D(n759), .Z(n2378) );
  GTECH_OAI2N2 U737 ( .A(n81), .B(n193), .C(n194), .D(n758), .Z(n2377) );
  GTECH_OAI2N2 U738 ( .A(n82), .B(n193), .C(n194), .D(n757), .Z(n2376) );
  GTECH_OAI2N2 U739 ( .A(n83), .B(n193), .C(n194), .D(n756), .Z(n2375) );
  GTECH_OAI2N2 U740 ( .A(n84), .B(n193), .C(n194), .D(n755), .Z(n2374) );
  GTECH_OAI2N2 U741 ( .A(n85), .B(n193), .C(n194), .D(n754), .Z(n2373) );
  GTECH_OR2 U742 ( .A(n193), .B(n13), .Z(n194) );
  GTECH_OR_NOT U743 ( .A(n170), .B(n123), .Z(n193) );
  GTECH_OAI2N2 U744 ( .A(n76), .B(n195), .C(n196), .D(n753), .Z(n2372) );
  GTECH_OAI2N2 U745 ( .A(n79), .B(n195), .C(n196), .D(n752), .Z(n2371) );
  GTECH_OAI2N2 U746 ( .A(n80), .B(n195), .C(n196), .D(n751), .Z(n2370) );
  GTECH_OAI2N2 U747 ( .A(n81), .B(n195), .C(n196), .D(n750), .Z(n2369) );
  GTECH_OAI2N2 U748 ( .A(n82), .B(n195), .C(n196), .D(n749), .Z(n2368) );
  GTECH_OAI2N2 U749 ( .A(n83), .B(n195), .C(n196), .D(n748), .Z(n2367) );
  GTECH_OAI2N2 U750 ( .A(n84), .B(n195), .C(n196), .D(n747), .Z(n2366) );
  GTECH_OAI2N2 U751 ( .A(n85), .B(n195), .C(n196), .D(n746), .Z(n2365) );
  GTECH_OR2 U752 ( .A(n195), .B(n13), .Z(n196) );
  GTECH_OR_NOT U753 ( .A(n170), .B(n126), .Z(n195) );
  GTECH_OAI2N2 U754 ( .A(n76), .B(n197), .C(n198), .D(n745), .Z(n2364) );
  GTECH_OAI2N2 U755 ( .A(n79), .B(n197), .C(n198), .D(n744), .Z(n2363) );
  GTECH_OAI2N2 U756 ( .A(n80), .B(n197), .C(n198), .D(n743), .Z(n2362) );
  GTECH_OAI2N2 U757 ( .A(n81), .B(n197), .C(n198), .D(n742), .Z(n2361) );
  GTECH_OAI2N2 U758 ( .A(n82), .B(n197), .C(n198), .D(n741), .Z(n2360) );
  GTECH_OAI2N2 U759 ( .A(n83), .B(n197), .C(n198), .D(n740), .Z(n2359) );
  GTECH_OAI2N2 U760 ( .A(n84), .B(n197), .C(n198), .D(n739), .Z(n2358) );
  GTECH_OAI2N2 U761 ( .A(n85), .B(n197), .C(n198), .D(n738), .Z(n2357) );
  GTECH_OR2 U762 ( .A(n197), .B(n13), .Z(n198) );
  GTECH_OR_NOT U763 ( .A(n170), .B(n129), .Z(n197) );
  GTECH_OAI2N2 U764 ( .A(n76), .B(n199), .C(n200), .D(n737), .Z(n2356) );
  GTECH_OAI2N2 U765 ( .A(n79), .B(n199), .C(n200), .D(n736), .Z(n2355) );
  GTECH_OAI2N2 U766 ( .A(n80), .B(n199), .C(n200), .D(n735), .Z(n2354) );
  GTECH_OAI2N2 U767 ( .A(n81), .B(n199), .C(n200), .D(n734), .Z(n2353) );
  GTECH_OAI2N2 U768 ( .A(n82), .B(n199), .C(n200), .D(n733), .Z(n2352) );
  GTECH_OAI2N2 U769 ( .A(n83), .B(n199), .C(n200), .D(n732), .Z(n2351) );
  GTECH_OAI2N2 U770 ( .A(n84), .B(n199), .C(n200), .D(n731), .Z(n2350) );
  GTECH_OAI2N2 U771 ( .A(n85), .B(n199), .C(n200), .D(n730), .Z(n2349) );
  GTECH_OR2 U772 ( .A(n199), .B(n13), .Z(n200) );
  GTECH_OR2 U773 ( .A(n170), .B(n132), .Z(n199) );
  GTECH_OR_NOT U774 ( .A(address[5]), .B(n201), .Z(n170) );
  GTECH_OAI2N2 U775 ( .A(n76), .B(n202), .C(n203), .D(n729), .Z(n2348) );
  GTECH_OAI2N2 U776 ( .A(n79), .B(n202), .C(n203), .D(n728), .Z(n2347) );
  GTECH_OAI2N2 U777 ( .A(n80), .B(n202), .C(n203), .D(n727), .Z(n2346) );
  GTECH_OAI2N2 U778 ( .A(n81), .B(n202), .C(n203), .D(n726), .Z(n2345) );
  GTECH_OAI2N2 U779 ( .A(n82), .B(n202), .C(n203), .D(n725), .Z(n2344) );
  GTECH_OAI2N2 U780 ( .A(n83), .B(n202), .C(n203), .D(n724), .Z(n2343) );
  GTECH_OAI2N2 U781 ( .A(n84), .B(n202), .C(n203), .D(n723), .Z(n2342) );
  GTECH_OAI2N2 U782 ( .A(n85), .B(n202), .C(n203), .D(n722), .Z(n2341) );
  GTECH_OR2 U783 ( .A(n202), .B(n13), .Z(n203) );
  GTECH_OR_NOT U784 ( .A(n204), .B(n87), .Z(n202) );
  GTECH_OAI2N2 U785 ( .A(n76), .B(n205), .C(n206), .D(n721), .Z(n2340) );
  GTECH_OAI2N2 U786 ( .A(n79), .B(n205), .C(n206), .D(n720), .Z(n2339) );
  GTECH_OAI2N2 U787 ( .A(n80), .B(n205), .C(n206), .D(n719), .Z(n2338) );
  GTECH_OAI2N2 U788 ( .A(n81), .B(n205), .C(n206), .D(n718), .Z(n2337) );
  GTECH_OAI2N2 U789 ( .A(n82), .B(n205), .C(n206), .D(n717), .Z(n2336) );
  GTECH_OAI2N2 U790 ( .A(n83), .B(n205), .C(n206), .D(n716), .Z(n2335) );
  GTECH_OAI2N2 U791 ( .A(n84), .B(n205), .C(n206), .D(n715), .Z(n2334) );
  GTECH_OAI2N2 U792 ( .A(n85), .B(n205), .C(n206), .D(n714), .Z(n2333) );
  GTECH_OR2 U793 ( .A(n205), .B(n13), .Z(n206) );
  GTECH_OR_NOT U794 ( .A(n204), .B(n90), .Z(n205) );
  GTECH_OAI2N2 U795 ( .A(n76), .B(n207), .C(n208), .D(n713), .Z(n2332) );
  GTECH_OAI2N2 U796 ( .A(n79), .B(n207), .C(n208), .D(n712), .Z(n2331) );
  GTECH_OAI2N2 U797 ( .A(n80), .B(n207), .C(n208), .D(n711), .Z(n2330) );
  GTECH_OAI2N2 U798 ( .A(n81), .B(n207), .C(n208), .D(n710), .Z(n2329) );
  GTECH_OAI2N2 U799 ( .A(n82), .B(n207), .C(n208), .D(n709), .Z(n2328) );
  GTECH_OAI2N2 U800 ( .A(n83), .B(n207), .C(n208), .D(n708), .Z(n2327) );
  GTECH_OAI2N2 U801 ( .A(n84), .B(n207), .C(n208), .D(n707), .Z(n2326) );
  GTECH_OAI2N2 U802 ( .A(n85), .B(n207), .C(n208), .D(n706), .Z(n2325) );
  GTECH_OR2 U803 ( .A(n207), .B(n13), .Z(n208) );
  GTECH_OR_NOT U804 ( .A(n204), .B(n93), .Z(n207) );
  GTECH_OAI2N2 U805 ( .A(n76), .B(n209), .C(n210), .D(n705), .Z(n2324) );
  GTECH_OAI2N2 U806 ( .A(n79), .B(n209), .C(n210), .D(n704), .Z(n2323) );
  GTECH_OAI2N2 U807 ( .A(n80), .B(n209), .C(n210), .D(n703), .Z(n2322) );
  GTECH_OAI2N2 U808 ( .A(n81), .B(n209), .C(n210), .D(n702), .Z(n2321) );
  GTECH_OAI2N2 U809 ( .A(n82), .B(n209), .C(n210), .D(n701), .Z(n2320) );
  GTECH_OAI2N2 U810 ( .A(n83), .B(n209), .C(n210), .D(n700), .Z(n2319) );
  GTECH_OAI2N2 U811 ( .A(n84), .B(n209), .C(n210), .D(n699), .Z(n2318) );
  GTECH_OAI2N2 U812 ( .A(n85), .B(n209), .C(n210), .D(n698), .Z(n2317) );
  GTECH_OR2 U813 ( .A(n209), .B(n13), .Z(n210) );
  GTECH_OR_NOT U814 ( .A(n204), .B(n96), .Z(n209) );
  GTECH_OAI2N2 U815 ( .A(n76), .B(n211), .C(n212), .D(n697), .Z(n2316) );
  GTECH_OAI2N2 U816 ( .A(n79), .B(n211), .C(n212), .D(n696), .Z(n2315) );
  GTECH_OAI2N2 U817 ( .A(n80), .B(n211), .C(n212), .D(n695), .Z(n2314) );
  GTECH_OAI2N2 U818 ( .A(n81), .B(n211), .C(n212), .D(n694), .Z(n2313) );
  GTECH_OAI2N2 U819 ( .A(n82), .B(n211), .C(n212), .D(n693), .Z(n2312) );
  GTECH_OAI2N2 U820 ( .A(n83), .B(n211), .C(n212), .D(n692), .Z(n2311) );
  GTECH_OAI2N2 U821 ( .A(n84), .B(n211), .C(n212), .D(n691), .Z(n2310) );
  GTECH_OAI2N2 U822 ( .A(n85), .B(n211), .C(n212), .D(n690), .Z(n2309) );
  GTECH_OR2 U823 ( .A(n211), .B(n13), .Z(n212) );
  GTECH_OR_NOT U824 ( .A(n204), .B(n99), .Z(n211) );
  GTECH_OAI2N2 U825 ( .A(n76), .B(n213), .C(n214), .D(n689), .Z(n2308) );
  GTECH_OAI2N2 U826 ( .A(n79), .B(n213), .C(n214), .D(n688), .Z(n2307) );
  GTECH_OAI2N2 U827 ( .A(n80), .B(n213), .C(n214), .D(n687), .Z(n2306) );
  GTECH_OAI2N2 U828 ( .A(n81), .B(n213), .C(n214), .D(n686), .Z(n2305) );
  GTECH_OAI2N2 U829 ( .A(n82), .B(n213), .C(n214), .D(n685), .Z(n2304) );
  GTECH_OAI2N2 U830 ( .A(n83), .B(n213), .C(n214), .D(n684), .Z(n2303) );
  GTECH_OAI2N2 U831 ( .A(n84), .B(n213), .C(n214), .D(n683), .Z(n2302) );
  GTECH_OAI2N2 U832 ( .A(n85), .B(n213), .C(n214), .D(n682), .Z(n2301) );
  GTECH_OR2 U833 ( .A(n213), .B(n13), .Z(n214) );
  GTECH_OR_NOT U834 ( .A(n204), .B(n102), .Z(n213) );
  GTECH_OAI2N2 U835 ( .A(n76), .B(n215), .C(n216), .D(n681), .Z(n2300) );
  GTECH_OAI2N2 U836 ( .A(n79), .B(n215), .C(n216), .D(n680), .Z(n2299) );
  GTECH_OAI2N2 U837 ( .A(n80), .B(n215), .C(n216), .D(n679), .Z(n2298) );
  GTECH_OAI2N2 U838 ( .A(n81), .B(n215), .C(n216), .D(n678), .Z(n2297) );
  GTECH_OAI2N2 U839 ( .A(n82), .B(n215), .C(n216), .D(n677), .Z(n2296) );
  GTECH_OAI2N2 U840 ( .A(n83), .B(n215), .C(n216), .D(n676), .Z(n2295) );
  GTECH_OAI2N2 U841 ( .A(n84), .B(n215), .C(n216), .D(n675), .Z(n2294) );
  GTECH_OAI2N2 U842 ( .A(n85), .B(n215), .C(n216), .D(n674), .Z(n2293) );
  GTECH_OR2 U843 ( .A(n215), .B(n13), .Z(n216) );
  GTECH_OR_NOT U844 ( .A(n204), .B(n105), .Z(n215) );
  GTECH_OAI2N2 U845 ( .A(n76), .B(n217), .C(n218), .D(n673), .Z(n2292) );
  GTECH_OAI2N2 U846 ( .A(n79), .B(n217), .C(n218), .D(n672), .Z(n2291) );
  GTECH_OAI2N2 U847 ( .A(n80), .B(n217), .C(n218), .D(n671), .Z(n2290) );
  GTECH_OAI2N2 U848 ( .A(n81), .B(n217), .C(n218), .D(n670), .Z(n2289) );
  GTECH_OAI2N2 U849 ( .A(n82), .B(n217), .C(n218), .D(n669), .Z(n2288) );
  GTECH_OAI2N2 U850 ( .A(n83), .B(n217), .C(n218), .D(n668), .Z(n2287) );
  GTECH_OAI2N2 U851 ( .A(n84), .B(n217), .C(n218), .D(n667), .Z(n2286) );
  GTECH_OAI2N2 U852 ( .A(n85), .B(n217), .C(n218), .D(n666), .Z(n2285) );
  GTECH_OR2 U853 ( .A(n217), .B(n13), .Z(n218) );
  GTECH_OR_NOT U854 ( .A(n204), .B(n108), .Z(n217) );
  GTECH_OAI2N2 U855 ( .A(n76), .B(n219), .C(n220), .D(n665), .Z(n2284) );
  GTECH_OAI2N2 U856 ( .A(n79), .B(n219), .C(n220), .D(n664), .Z(n2283) );
  GTECH_OAI2N2 U857 ( .A(n80), .B(n219), .C(n220), .D(n663), .Z(n2282) );
  GTECH_OAI2N2 U858 ( .A(n81), .B(n219), .C(n220), .D(n662), .Z(n2281) );
  GTECH_OAI2N2 U859 ( .A(n82), .B(n219), .C(n220), .D(n661), .Z(n2280) );
  GTECH_OAI2N2 U860 ( .A(n83), .B(n219), .C(n220), .D(n660), .Z(n2279) );
  GTECH_OAI2N2 U861 ( .A(n84), .B(n219), .C(n220), .D(n659), .Z(n2278) );
  GTECH_OAI2N2 U862 ( .A(n85), .B(n219), .C(n220), .D(n658), .Z(n2277) );
  GTECH_OR2 U863 ( .A(n219), .B(n13), .Z(n220) );
  GTECH_OR_NOT U864 ( .A(n204), .B(n111), .Z(n219) );
  GTECH_OAI2N2 U865 ( .A(n76), .B(n221), .C(n222), .D(n657), .Z(n2276) );
  GTECH_OAI2N2 U866 ( .A(n79), .B(n221), .C(n222), .D(n656), .Z(n2275) );
  GTECH_OAI2N2 U867 ( .A(n80), .B(n221), .C(n222), .D(n655), .Z(n2274) );
  GTECH_OAI2N2 U868 ( .A(n81), .B(n221), .C(n222), .D(n654), .Z(n2273) );
  GTECH_OAI2N2 U869 ( .A(n82), .B(n221), .C(n222), .D(n653), .Z(n2272) );
  GTECH_OAI2N2 U870 ( .A(n83), .B(n221), .C(n222), .D(n652), .Z(n2271) );
  GTECH_OAI2N2 U871 ( .A(n84), .B(n221), .C(n222), .D(n651), .Z(n2270) );
  GTECH_OAI2N2 U872 ( .A(n85), .B(n221), .C(n222), .D(n650), .Z(n2269) );
  GTECH_OR2 U873 ( .A(n221), .B(n13), .Z(n222) );
  GTECH_OR_NOT U874 ( .A(n204), .B(n114), .Z(n221) );
  GTECH_OAI2N2 U875 ( .A(n76), .B(n223), .C(n224), .D(n649), .Z(n2268) );
  GTECH_OAI2N2 U876 ( .A(n79), .B(n223), .C(n224), .D(n648), .Z(n2267) );
  GTECH_OAI2N2 U877 ( .A(n80), .B(n223), .C(n224), .D(n647), .Z(n2266) );
  GTECH_OAI2N2 U878 ( .A(n81), .B(n223), .C(n224), .D(n646), .Z(n2265) );
  GTECH_OAI2N2 U879 ( .A(n82), .B(n223), .C(n224), .D(n645), .Z(n2264) );
  GTECH_OAI2N2 U880 ( .A(n83), .B(n223), .C(n224), .D(n644), .Z(n2263) );
  GTECH_OAI2N2 U881 ( .A(n84), .B(n223), .C(n224), .D(n643), .Z(n2262) );
  GTECH_OAI2N2 U882 ( .A(n85), .B(n223), .C(n224), .D(n642), .Z(n2261) );
  GTECH_OR2 U883 ( .A(n223), .B(n13), .Z(n224) );
  GTECH_OR_NOT U884 ( .A(n204), .B(n117), .Z(n223) );
  GTECH_OAI2N2 U885 ( .A(n76), .B(n225), .C(n226), .D(n641), .Z(n2260) );
  GTECH_OAI2N2 U886 ( .A(n79), .B(n225), .C(n226), .D(n640), .Z(n2259) );
  GTECH_OAI2N2 U887 ( .A(n80), .B(n225), .C(n226), .D(n639), .Z(n2258) );
  GTECH_OAI2N2 U888 ( .A(n81), .B(n225), .C(n226), .D(n638), .Z(n2257) );
  GTECH_OAI2N2 U889 ( .A(n82), .B(n225), .C(n226), .D(n637), .Z(n2256) );
  GTECH_OAI2N2 U890 ( .A(n83), .B(n225), .C(n226), .D(n636), .Z(n2255) );
  GTECH_OAI2N2 U891 ( .A(n84), .B(n225), .C(n226), .D(n635), .Z(n2254) );
  GTECH_OAI2N2 U892 ( .A(n85), .B(n225), .C(n226), .D(n634), .Z(n2253) );
  GTECH_OR2 U893 ( .A(n225), .B(n13), .Z(n226) );
  GTECH_OR_NOT U894 ( .A(n204), .B(n120), .Z(n225) );
  GTECH_OAI2N2 U895 ( .A(n76), .B(n227), .C(n228), .D(n633), .Z(n2252) );
  GTECH_OAI2N2 U896 ( .A(n79), .B(n227), .C(n228), .D(n632), .Z(n2251) );
  GTECH_OAI2N2 U897 ( .A(n80), .B(n227), .C(n228), .D(n631), .Z(n2250) );
  GTECH_OAI2N2 U898 ( .A(n81), .B(n227), .C(n228), .D(n630), .Z(n2249) );
  GTECH_OAI2N2 U899 ( .A(n82), .B(n227), .C(n228), .D(n629), .Z(n2248) );
  GTECH_OAI2N2 U900 ( .A(n83), .B(n227), .C(n228), .D(n628), .Z(n2247) );
  GTECH_OAI2N2 U901 ( .A(n84), .B(n227), .C(n228), .D(n627), .Z(n2246) );
  GTECH_OAI2N2 U902 ( .A(n85), .B(n227), .C(n228), .D(n626), .Z(n2245) );
  GTECH_OR2 U903 ( .A(n227), .B(n13), .Z(n228) );
  GTECH_OR_NOT U904 ( .A(n204), .B(n123), .Z(n227) );
  GTECH_OAI2N2 U905 ( .A(n76), .B(n229), .C(n230), .D(n625), .Z(n2244) );
  GTECH_OAI2N2 U906 ( .A(n79), .B(n229), .C(n230), .D(n624), .Z(n2243) );
  GTECH_OAI2N2 U907 ( .A(n80), .B(n229), .C(n230), .D(n623), .Z(n2242) );
  GTECH_OAI2N2 U908 ( .A(n81), .B(n229), .C(n230), .D(n622), .Z(n2241) );
  GTECH_OAI2N2 U909 ( .A(n82), .B(n229), .C(n230), .D(n621), .Z(n2240) );
  GTECH_OAI2N2 U910 ( .A(n83), .B(n229), .C(n230), .D(n620), .Z(n2239) );
  GTECH_OAI2N2 U911 ( .A(n84), .B(n229), .C(n230), .D(n619), .Z(n2238) );
  GTECH_OAI2N2 U912 ( .A(n85), .B(n229), .C(n230), .D(n618), .Z(n2237) );
  GTECH_OR2 U913 ( .A(n229), .B(n13), .Z(n230) );
  GTECH_OR_NOT U914 ( .A(n204), .B(n126), .Z(n229) );
  GTECH_OAI2N2 U915 ( .A(n76), .B(n231), .C(n232), .D(n617), .Z(n2236) );
  GTECH_OAI2N2 U916 ( .A(n79), .B(n231), .C(n232), .D(n616), .Z(n2235) );
  GTECH_OAI2N2 U917 ( .A(n80), .B(n231), .C(n232), .D(n615), .Z(n2234) );
  GTECH_OAI2N2 U918 ( .A(n81), .B(n231), .C(n232), .D(n614), .Z(n2233) );
  GTECH_OAI2N2 U919 ( .A(n82), .B(n231), .C(n232), .D(n613), .Z(n2232) );
  GTECH_OAI2N2 U920 ( .A(n83), .B(n231), .C(n232), .D(n612), .Z(n2231) );
  GTECH_OAI2N2 U921 ( .A(n84), .B(n231), .C(n232), .D(n611), .Z(n2230) );
  GTECH_OAI2N2 U922 ( .A(n85), .B(n231), .C(n232), .D(n610), .Z(n2229) );
  GTECH_OR2 U923 ( .A(n231), .B(n13), .Z(n232) );
  GTECH_OR_NOT U924 ( .A(n204), .B(n129), .Z(n231) );
  GTECH_NOT U925 ( .A(n12), .Z(n85) );
  GTECH_OAI2N2 U926 ( .A(n76), .B(n233), .C(n234), .D(n609), .Z(n2228) );
  GTECH_NOT U927 ( .A(n5), .Z(n76) );
  GTECH_AND2 U928 ( .A(data_in[7]), .B(write), .Z(n5) );
  GTECH_OAI2N2 U929 ( .A(n79), .B(n233), .C(n234), .D(n608), .Z(n2227) );
  GTECH_NOT U930 ( .A(n6), .Z(n79) );
  GTECH_AND2 U931 ( .A(data_in[6]), .B(write), .Z(n6) );
  GTECH_OAI2N2 U932 ( .A(n80), .B(n233), .C(n234), .D(n607), .Z(n2226) );
  GTECH_NOT U933 ( .A(n7), .Z(n80) );
  GTECH_AND2 U934 ( .A(data_in[5]), .B(write), .Z(n7) );
  GTECH_OAI2N2 U935 ( .A(n81), .B(n233), .C(n234), .D(n606), .Z(n2225) );
  GTECH_NOT U936 ( .A(n8), .Z(n81) );
  GTECH_AND2 U937 ( .A(data_in[4]), .B(write), .Z(n8) );
  GTECH_OAI2N2 U938 ( .A(n82), .B(n233), .C(n234), .D(n605), .Z(n2224) );
  GTECH_NOT U939 ( .A(n9), .Z(n82) );
  GTECH_AND2 U940 ( .A(data_in[3]), .B(write), .Z(n9) );
  GTECH_OAI2N2 U941 ( .A(n83), .B(n233), .C(n234), .D(n604), .Z(n2223) );
  GTECH_NOT U942 ( .A(n10), .Z(n83) );
  GTECH_AND2 U943 ( .A(data_in[2]), .B(write), .Z(n10) );
  GTECH_OAI2N2 U944 ( .A(n84), .B(n233), .C(n234), .D(n603), .Z(n2222) );
  GTECH_NOT U945 ( .A(n235), .Z(n233) );
  GTECH_NOT U946 ( .A(n11), .Z(n84) );
  GTECH_AND2 U947 ( .A(data_in[1]), .B(write), .Z(n11) );
  GTECH_AO22 U948 ( .A(n12), .B(n235), .C(n234), .D(n602), .Z(n2221) );
  GTECH_OR_NOT U949 ( .A(n13), .B(n235), .Z(n234) );
  GTECH_NOR2 U950 ( .A(n204), .B(n132), .Z(n235) );
  GTECH_OR2 U951 ( .A(n236), .B(address[5]), .Z(n204) );
  GTECH_AND_NOT U952 ( .A(data_in[0]), .B(n13), .Z(n12) );
  GTECH_NOT U953 ( .A(write), .Z(n13) );
  GTECH_NAND4 U954 ( .A(n237), .B(n238), .C(n239), .D(n240), .Z(data_out[7])
         );
  GTECH_AND8 U955 ( .A(n241), .B(n242), .C(n243), .D(n244), .E(n245), .F(n246), 
        .G(n247), .H(n248), .Z(n240) );
  GTECH_AOI222 U956 ( .A(n1137), .B(n71), .C(n1121), .D(n75), .E(n1129), .F(
        n73), .Z(n248) );
  GTECH_AOI222 U957 ( .A(n1161), .B(n65), .C(n1145), .D(n69), .E(n1153), .F(
        n67), .Z(n247) );
  GTECH_AOI222 U958 ( .A(n1185), .B(n59), .C(n1169), .D(n63), .E(n1177), .F(
        n61), .Z(n246) );
  GTECH_AOI222 U959 ( .A(n1209), .B(n53), .C(n1193), .D(n57), .E(n1201), .F(
        n55), .Z(n245) );
  GTECH_AOI222 U960 ( .A(n1233), .B(n47), .C(n1217), .D(n51), .E(n1225), .F(
        n49), .Z(n244) );
  GTECH_AOI222 U961 ( .A(n1257), .B(n41), .C(n1241), .D(n45), .E(n1249), .F(
        n43), .Z(n243) );
  GTECH_AOI222 U962 ( .A(n1281), .B(n35), .C(n1265), .D(n39), .E(n1273), .F(
        n37), .Z(n242) );
  GTECH_AOI222 U963 ( .A(n1305), .B(n29), .C(n1289), .D(n33), .E(n1297), .F(
        n31), .Z(n241) );
  GTECH_AND8 U964 ( .A(n249), .B(n250), .C(n251), .D(n252), .E(n253), .F(n254), 
        .G(n255), .H(n256), .Z(n239) );
  GTECH_AOI222 U965 ( .A(n1329), .B(n23), .C(n1313), .D(n27), .E(n1321), .F(
        n25), .Z(n256) );
  GTECH_AOI222 U966 ( .A(n1353), .B(n17), .C(n1337), .D(n21), .E(n1345), .F(
        n19), .Z(n255) );
  GTECH_AOI222 U967 ( .A(n257), .B(n609), .C(n1361), .D(n15), .E(n1369), .F(n4), .Z(n254) );
  GTECH_AOI222 U968 ( .A(n258), .B(n633), .C(n259), .D(n617), .E(n260), .F(
        n625), .Z(n253) );
  GTECH_AOI222 U969 ( .A(n261), .B(n657), .C(n262), .D(n641), .E(n263), .F(
        n649), .Z(n252) );
  GTECH_AOI222 U970 ( .A(n264), .B(n681), .C(n265), .D(n665), .E(n266), .F(
        n673), .Z(n251) );
  GTECH_AOI222 U971 ( .A(n267), .B(n705), .C(n268), .D(n689), .E(n269), .F(
        n697), .Z(n250) );
  GTECH_AOI222 U972 ( .A(n270), .B(n729), .C(n271), .D(n713), .E(n272), .F(
        n721), .Z(n249) );
  GTECH_AND8 U973 ( .A(n273), .B(n274), .C(n275), .D(n276), .E(n277), .F(n278), 
        .G(n279), .H(n280), .Z(n238) );
  GTECH_AOI222 U974 ( .A(n281), .B(n753), .C(n282), .D(n737), .E(n283), .F(
        n745), .Z(n280) );
  GTECH_AOI222 U975 ( .A(n284), .B(n777), .C(n285), .D(n761), .E(n286), .F(
        n769), .Z(n279) );
  GTECH_AOI222 U976 ( .A(n287), .B(n801), .C(n288), .D(n785), .E(n289), .F(
        n793), .Z(n278) );
  GTECH_AOI222 U977 ( .A(n290), .B(n825), .C(n291), .D(n809), .E(n292), .F(
        n817), .Z(n277) );
  GTECH_AOI222 U978 ( .A(n293), .B(n849), .C(n294), .D(n833), .E(n295), .F(
        n841), .Z(n276) );
  GTECH_AOI222 U979 ( .A(n296), .B(n873), .C(n297), .D(n857), .E(n298), .F(
        n865), .Z(n275) );
  GTECH_AOI222 U980 ( .A(n299), .B(n897), .C(n300), .D(n881), .E(n301), .F(
        n889), .Z(n274) );
  GTECH_AOI222 U981 ( .A(n302), .B(n921), .C(n303), .D(n905), .E(n304), .F(
        n913), .Z(n273) );
  GTECH_AND8 U982 ( .A(n305), .B(n306), .C(n307), .D(n308), .E(n309), .F(n310), 
        .G(n311), .H(n312), .Z(n237) );
  GTECH_AOI222 U983 ( .A(n313), .B(n945), .C(n314), .D(n929), .E(n315), .F(
        n937), .Z(n312) );
  GTECH_AOI222 U984 ( .A(n316), .B(n969), .C(n317), .D(n953), .E(n318), .F(
        n961), .Z(n311) );
  GTECH_AOI222 U985 ( .A(n319), .B(n993), .C(n320), .D(n977), .E(n321), .F(
        n985), .Z(n310) );
  GTECH_AOI222 U986 ( .A(n322), .B(n1017), .C(n323), .D(n1001), .E(n324), .F(
        n1009), .Z(n309) );
  GTECH_AOI222 U987 ( .A(n325), .B(n1041), .C(n326), .D(n1025), .E(n327), .F(
        n1033), .Z(n308) );
  GTECH_AOI222 U988 ( .A(n328), .B(n1065), .C(n329), .D(n1049), .E(n330), .F(
        n1057), .Z(n307) );
  GTECH_AOI222 U989 ( .A(n331), .B(n1089), .C(n332), .D(n1073), .E(n333), .F(
        n1081), .Z(n306) );
  GTECH_AOI222 U990 ( .A(n334), .B(n1113), .C(n335), .D(n1097), .E(n336), .F(
        n1105), .Z(n305) );
  GTECH_NAND4 U991 ( .A(n337), .B(n338), .C(n339), .D(n340), .Z(data_out[6])
         );
  GTECH_AND8 U992 ( .A(n341), .B(n342), .C(n343), .D(n344), .E(n345), .F(n346), 
        .G(n347), .H(n348), .Z(n340) );
  GTECH_AOI222 U993 ( .A(n1136), .B(n71), .C(n1120), .D(n75), .E(n1128), .F(
        n73), .Z(n348) );
  GTECH_AOI222 U994 ( .A(n1160), .B(n65), .C(n1144), .D(n69), .E(n1152), .F(
        n67), .Z(n347) );
  GTECH_AOI222 U995 ( .A(n1184), .B(n59), .C(n1168), .D(n63), .E(n1176), .F(
        n61), .Z(n346) );
  GTECH_AOI222 U996 ( .A(n1208), .B(n53), .C(n1192), .D(n57), .E(n1200), .F(
        n55), .Z(n345) );
  GTECH_AOI222 U997 ( .A(n1232), .B(n47), .C(n1216), .D(n51), .E(n1224), .F(
        n49), .Z(n344) );
  GTECH_AOI222 U998 ( .A(n1256), .B(n41), .C(n1240), .D(n45), .E(n1248), .F(
        n43), .Z(n343) );
  GTECH_AOI222 U999 ( .A(n1280), .B(n35), .C(n1264), .D(n39), .E(n1272), .F(
        n37), .Z(n342) );
  GTECH_AOI222 U1000 ( .A(n1304), .B(n29), .C(n1288), .D(n33), .E(n1296), .F(
        n31), .Z(n341) );
  GTECH_AND8 U1001 ( .A(n349), .B(n350), .C(n351), .D(n352), .E(n353), .F(n354), .G(n355), .H(n356), .Z(n339) );
  GTECH_AOI222 U1002 ( .A(n1328), .B(n23), .C(n1312), .D(n27), .E(n1320), .F(
        n25), .Z(n356) );
  GTECH_AOI222 U1003 ( .A(n1352), .B(n17), .C(n1336), .D(n21), .E(n1344), .F(
        n19), .Z(n355) );
  GTECH_AOI222 U1004 ( .A(n257), .B(n608), .C(n1360), .D(n15), .E(n1368), .F(
        n4), .Z(n354) );
  GTECH_AOI222 U1005 ( .A(n258), .B(n632), .C(n259), .D(n616), .E(n260), .F(
        n624), .Z(n353) );
  GTECH_AOI222 U1006 ( .A(n261), .B(n656), .C(n262), .D(n640), .E(n263), .F(
        n648), .Z(n352) );
  GTECH_AOI222 U1007 ( .A(n264), .B(n680), .C(n265), .D(n664), .E(n266), .F(
        n672), .Z(n351) );
  GTECH_AOI222 U1008 ( .A(n267), .B(n704), .C(n268), .D(n688), .E(n269), .F(
        n696), .Z(n350) );
  GTECH_AOI222 U1009 ( .A(n270), .B(n728), .C(n271), .D(n712), .E(n272), .F(
        n720), .Z(n349) );
  GTECH_AND8 U1010 ( .A(n357), .B(n358), .C(n359), .D(n360), .E(n361), .F(n362), .G(n363), .H(n364), .Z(n338) );
  GTECH_AOI222 U1011 ( .A(n281), .B(n752), .C(n282), .D(n736), .E(n283), .F(
        n744), .Z(n364) );
  GTECH_AOI222 U1012 ( .A(n284), .B(n776), .C(n285), .D(n760), .E(n286), .F(
        n768), .Z(n363) );
  GTECH_AOI222 U1013 ( .A(n287), .B(n800), .C(n288), .D(n784), .E(n289), .F(
        n792), .Z(n362) );
  GTECH_AOI222 U1014 ( .A(n290), .B(n824), .C(n291), .D(n808), .E(n292), .F(
        n816), .Z(n361) );
  GTECH_AOI222 U1015 ( .A(n293), .B(n848), .C(n294), .D(n832), .E(n295), .F(
        n840), .Z(n360) );
  GTECH_AOI222 U1016 ( .A(n296), .B(n872), .C(n297), .D(n856), .E(n298), .F(
        n864), .Z(n359) );
  GTECH_AOI222 U1017 ( .A(n299), .B(n896), .C(n300), .D(n880), .E(n301), .F(
        n888), .Z(n358) );
  GTECH_AOI222 U1018 ( .A(n302), .B(n920), .C(n303), .D(n904), .E(n304), .F(
        n912), .Z(n357) );
  GTECH_AND8 U1019 ( .A(n365), .B(n366), .C(n367), .D(n368), .E(n369), .F(n370), .G(n371), .H(n372), .Z(n337) );
  GTECH_AOI222 U1020 ( .A(n313), .B(n944), .C(n314), .D(n928), .E(n315), .F(
        n936), .Z(n372) );
  GTECH_AOI222 U1021 ( .A(n316), .B(n968), .C(n317), .D(n952), .E(n318), .F(
        n960), .Z(n371) );
  GTECH_AOI222 U1022 ( .A(n319), .B(n992), .C(n320), .D(n976), .E(n321), .F(
        n984), .Z(n370) );
  GTECH_AOI222 U1023 ( .A(n322), .B(n1016), .C(n323), .D(n1000), .E(n324), .F(
        n1008), .Z(n369) );
  GTECH_AOI222 U1024 ( .A(n325), .B(n1040), .C(n326), .D(n1024), .E(n327), .F(
        n1032), .Z(n368) );
  GTECH_AOI222 U1025 ( .A(n328), .B(n1064), .C(n329), .D(n1048), .E(n330), .F(
        n1056), .Z(n367) );
  GTECH_AOI222 U1026 ( .A(n331), .B(n1088), .C(n332), .D(n1072), .E(n333), .F(
        n1080), .Z(n366) );
  GTECH_AOI222 U1027 ( .A(n334), .B(n1112), .C(n335), .D(n1096), .E(n336), .F(
        n1104), .Z(n365) );
  GTECH_NAND4 U1028 ( .A(n373), .B(n374), .C(n375), .D(n376), .Z(data_out[5])
         );
  GTECH_AND8 U1029 ( .A(n377), .B(n378), .C(n379), .D(n380), .E(n381), .F(n382), .G(n383), .H(n384), .Z(n376) );
  GTECH_AOI222 U1030 ( .A(n1135), .B(n71), .C(n1119), .D(n75), .E(n1127), .F(
        n73), .Z(n384) );
  GTECH_AOI222 U1031 ( .A(n1159), .B(n65), .C(n1143), .D(n69), .E(n1151), .F(
        n67), .Z(n383) );
  GTECH_AOI222 U1032 ( .A(n1183), .B(n59), .C(n1167), .D(n63), .E(n1175), .F(
        n61), .Z(n382) );
  GTECH_AOI222 U1033 ( .A(n1207), .B(n53), .C(n1191), .D(n57), .E(n1199), .F(
        n55), .Z(n381) );
  GTECH_AOI222 U1034 ( .A(n1231), .B(n47), .C(n1215), .D(n51), .E(n1223), .F(
        n49), .Z(n380) );
  GTECH_AOI222 U1035 ( .A(n1255), .B(n41), .C(n1239), .D(n45), .E(n1247), .F(
        n43), .Z(n379) );
  GTECH_AOI222 U1036 ( .A(n1279), .B(n35), .C(n1263), .D(n39), .E(n1271), .F(
        n37), .Z(n378) );
  GTECH_AOI222 U1037 ( .A(n1303), .B(n29), .C(n1287), .D(n33), .E(n1295), .F(
        n31), .Z(n377) );
  GTECH_AND8 U1038 ( .A(n385), .B(n386), .C(n387), .D(n388), .E(n389), .F(n390), .G(n391), .H(n392), .Z(n375) );
  GTECH_AOI222 U1039 ( .A(n1327), .B(n23), .C(n1311), .D(n27), .E(n1319), .F(
        n25), .Z(n392) );
  GTECH_AOI222 U1040 ( .A(n1351), .B(n17), .C(n1335), .D(n21), .E(n1343), .F(
        n19), .Z(n391) );
  GTECH_AOI222 U1041 ( .A(n257), .B(n607), .C(n1359), .D(n15), .E(n1367), .F(
        n4), .Z(n390) );
  GTECH_AOI222 U1042 ( .A(n258), .B(n631), .C(n259), .D(n615), .E(n260), .F(
        n623), .Z(n389) );
  GTECH_AOI222 U1043 ( .A(n261), .B(n655), .C(n262), .D(n639), .E(n263), .F(
        n647), .Z(n388) );
  GTECH_AOI222 U1044 ( .A(n264), .B(n679), .C(n265), .D(n663), .E(n266), .F(
        n671), .Z(n387) );
  GTECH_AOI222 U1045 ( .A(n267), .B(n703), .C(n268), .D(n687), .E(n269), .F(
        n695), .Z(n386) );
  GTECH_AOI222 U1046 ( .A(n270), .B(n727), .C(n271), .D(n711), .E(n272), .F(
        n719), .Z(n385) );
  GTECH_AND8 U1047 ( .A(n393), .B(n394), .C(n395), .D(n396), .E(n397), .F(n398), .G(n399), .H(n400), .Z(n374) );
  GTECH_AOI222 U1048 ( .A(n281), .B(n751), .C(n282), .D(n735), .E(n283), .F(
        n743), .Z(n400) );
  GTECH_AOI222 U1049 ( .A(n284), .B(n775), .C(n285), .D(n759), .E(n286), .F(
        n767), .Z(n399) );
  GTECH_AOI222 U1050 ( .A(n287), .B(n799), .C(n288), .D(n783), .E(n289), .F(
        n791), .Z(n398) );
  GTECH_AOI222 U1051 ( .A(n290), .B(n823), .C(n291), .D(n807), .E(n292), .F(
        n815), .Z(n397) );
  GTECH_AOI222 U1052 ( .A(n293), .B(n847), .C(n294), .D(n831), .E(n295), .F(
        n839), .Z(n396) );
  GTECH_AOI222 U1053 ( .A(n296), .B(n871), .C(n297), .D(n855), .E(n298), .F(
        n863), .Z(n395) );
  GTECH_AOI222 U1054 ( .A(n299), .B(n895), .C(n300), .D(n879), .E(n301), .F(
        n887), .Z(n394) );
  GTECH_AOI222 U1055 ( .A(n302), .B(n919), .C(n303), .D(n903), .E(n304), .F(
        n911), .Z(n393) );
  GTECH_AND8 U1056 ( .A(n401), .B(n402), .C(n403), .D(n404), .E(n405), .F(n406), .G(n407), .H(n408), .Z(n373) );
  GTECH_AOI222 U1057 ( .A(n313), .B(n943), .C(n314), .D(n927), .E(n315), .F(
        n935), .Z(n408) );
  GTECH_AOI222 U1058 ( .A(n316), .B(n967), .C(n317), .D(n951), .E(n318), .F(
        n959), .Z(n407) );
  GTECH_AOI222 U1059 ( .A(n319), .B(n991), .C(n320), .D(n975), .E(n321), .F(
        n983), .Z(n406) );
  GTECH_AOI222 U1060 ( .A(n322), .B(n1015), .C(n323), .D(n999), .E(n324), .F(
        n1007), .Z(n405) );
  GTECH_AOI222 U1061 ( .A(n325), .B(n1039), .C(n326), .D(n1023), .E(n327), .F(
        n1031), .Z(n404) );
  GTECH_AOI222 U1062 ( .A(n328), .B(n1063), .C(n329), .D(n1047), .E(n330), .F(
        n1055), .Z(n403) );
  GTECH_AOI222 U1063 ( .A(n331), .B(n1087), .C(n332), .D(n1071), .E(n333), .F(
        n1079), .Z(n402) );
  GTECH_AOI222 U1064 ( .A(n334), .B(n1111), .C(n335), .D(n1095), .E(n336), .F(
        n1103), .Z(n401) );
  GTECH_NAND4 U1065 ( .A(n409), .B(n410), .C(n411), .D(n412), .Z(data_out[4])
         );
  GTECH_AND8 U1066 ( .A(n413), .B(n414), .C(n415), .D(n416), .E(n417), .F(n418), .G(n419), .H(n420), .Z(n412) );
  GTECH_AOI222 U1067 ( .A(n1134), .B(n71), .C(n1118), .D(n75), .E(n1126), .F(
        n73), .Z(n420) );
  GTECH_AOI222 U1068 ( .A(n1158), .B(n65), .C(n1142), .D(n69), .E(n1150), .F(
        n67), .Z(n419) );
  GTECH_AOI222 U1069 ( .A(n1182), .B(n59), .C(n1166), .D(n63), .E(n1174), .F(
        n61), .Z(n418) );
  GTECH_AOI222 U1070 ( .A(n1206), .B(n53), .C(n1190), .D(n57), .E(n1198), .F(
        n55), .Z(n417) );
  GTECH_AOI222 U1071 ( .A(n1230), .B(n47), .C(n1214), .D(n51), .E(n1222), .F(
        n49), .Z(n416) );
  GTECH_AOI222 U1072 ( .A(n1254), .B(n41), .C(n1238), .D(n45), .E(n1246), .F(
        n43), .Z(n415) );
  GTECH_AOI222 U1073 ( .A(n1278), .B(n35), .C(n1262), .D(n39), .E(n1270), .F(
        n37), .Z(n414) );
  GTECH_AOI222 U1074 ( .A(n1302), .B(n29), .C(n1286), .D(n33), .E(n1294), .F(
        n31), .Z(n413) );
  GTECH_AND8 U1075 ( .A(n421), .B(n422), .C(n423), .D(n424), .E(n425), .F(n426), .G(n427), .H(n428), .Z(n411) );
  GTECH_AOI222 U1076 ( .A(n1326), .B(n23), .C(n1310), .D(n27), .E(n1318), .F(
        n25), .Z(n428) );
  GTECH_AOI222 U1077 ( .A(n1350), .B(n17), .C(n1334), .D(n21), .E(n1342), .F(
        n19), .Z(n427) );
  GTECH_AOI222 U1078 ( .A(n257), .B(n606), .C(n1358), .D(n15), .E(n1366), .F(
        n4), .Z(n426) );
  GTECH_AOI222 U1079 ( .A(n258), .B(n630), .C(n259), .D(n614), .E(n260), .F(
        n622), .Z(n425) );
  GTECH_AOI222 U1080 ( .A(n261), .B(n654), .C(n262), .D(n638), .E(n263), .F(
        n646), .Z(n424) );
  GTECH_AOI222 U1081 ( .A(n264), .B(n678), .C(n265), .D(n662), .E(n266), .F(
        n670), .Z(n423) );
  GTECH_AOI222 U1082 ( .A(n267), .B(n702), .C(n268), .D(n686), .E(n269), .F(
        n694), .Z(n422) );
  GTECH_AOI222 U1083 ( .A(n270), .B(n726), .C(n271), .D(n710), .E(n272), .F(
        n718), .Z(n421) );
  GTECH_AND8 U1084 ( .A(n429), .B(n430), .C(n431), .D(n432), .E(n433), .F(n434), .G(n435), .H(n436), .Z(n410) );
  GTECH_AOI222 U1085 ( .A(n281), .B(n750), .C(n282), .D(n734), .E(n283), .F(
        n742), .Z(n436) );
  GTECH_AOI222 U1086 ( .A(n284), .B(n774), .C(n285), .D(n758), .E(n286), .F(
        n766), .Z(n435) );
  GTECH_AOI222 U1087 ( .A(n287), .B(n798), .C(n288), .D(n782), .E(n289), .F(
        n790), .Z(n434) );
  GTECH_AOI222 U1088 ( .A(n290), .B(n822), .C(n291), .D(n806), .E(n292), .F(
        n814), .Z(n433) );
  GTECH_AOI222 U1089 ( .A(n293), .B(n846), .C(n294), .D(n830), .E(n295), .F(
        n838), .Z(n432) );
  GTECH_AOI222 U1090 ( .A(n296), .B(n870), .C(n297), .D(n854), .E(n298), .F(
        n862), .Z(n431) );
  GTECH_AOI222 U1091 ( .A(n299), .B(n894), .C(n300), .D(n878), .E(n301), .F(
        n886), .Z(n430) );
  GTECH_AOI222 U1092 ( .A(n302), .B(n918), .C(n303), .D(n902), .E(n304), .F(
        n910), .Z(n429) );
  GTECH_AND8 U1093 ( .A(n437), .B(n438), .C(n439), .D(n440), .E(n441), .F(n442), .G(n443), .H(n444), .Z(n409) );
  GTECH_AOI222 U1094 ( .A(n313), .B(n942), .C(n314), .D(n926), .E(n315), .F(
        n934), .Z(n444) );
  GTECH_AOI222 U1095 ( .A(n316), .B(n966), .C(n317), .D(n950), .E(n318), .F(
        n958), .Z(n443) );
  GTECH_AOI222 U1096 ( .A(n319), .B(n990), .C(n320), .D(n974), .E(n321), .F(
        n982), .Z(n442) );
  GTECH_AOI222 U1097 ( .A(n322), .B(n1014), .C(n323), .D(n998), .E(n324), .F(
        n1006), .Z(n441) );
  GTECH_AOI222 U1098 ( .A(n325), .B(n1038), .C(n326), .D(n1022), .E(n327), .F(
        n1030), .Z(n440) );
  GTECH_AOI222 U1099 ( .A(n328), .B(n1062), .C(n329), .D(n1046), .E(n330), .F(
        n1054), .Z(n439) );
  GTECH_AOI222 U1100 ( .A(n331), .B(n1086), .C(n332), .D(n1070), .E(n333), .F(
        n1078), .Z(n438) );
  GTECH_AOI222 U1101 ( .A(n334), .B(n1110), .C(n335), .D(n1094), .E(n336), .F(
        n1102), .Z(n437) );
  GTECH_NAND4 U1102 ( .A(n445), .B(n446), .C(n447), .D(n448), .Z(data_out[3])
         );
  GTECH_AND8 U1103 ( .A(n449), .B(n450), .C(n451), .D(n452), .E(n453), .F(n454), .G(n455), .H(n456), .Z(n448) );
  GTECH_AOI222 U1104 ( .A(n1133), .B(n71), .C(n1117), .D(n75), .E(n1125), .F(
        n73), .Z(n456) );
  GTECH_AOI222 U1105 ( .A(n1157), .B(n65), .C(n1141), .D(n69), .E(n1149), .F(
        n67), .Z(n455) );
  GTECH_AOI222 U1106 ( .A(n1181), .B(n59), .C(n1165), .D(n63), .E(n1173), .F(
        n61), .Z(n454) );
  GTECH_AOI222 U1107 ( .A(n1205), .B(n53), .C(n1189), .D(n57), .E(n1197), .F(
        n55), .Z(n453) );
  GTECH_AOI222 U1108 ( .A(n1229), .B(n47), .C(n1213), .D(n51), .E(n1221), .F(
        n49), .Z(n452) );
  GTECH_AOI222 U1109 ( .A(n1253), .B(n41), .C(n1237), .D(n45), .E(n1245), .F(
        n43), .Z(n451) );
  GTECH_AOI222 U1110 ( .A(n1277), .B(n35), .C(n1261), .D(n39), .E(n1269), .F(
        n37), .Z(n450) );
  GTECH_AOI222 U1111 ( .A(n1301), .B(n29), .C(n1285), .D(n33), .E(n1293), .F(
        n31), .Z(n449) );
  GTECH_AND8 U1112 ( .A(n457), .B(n458), .C(n459), .D(n460), .E(n461), .F(n462), .G(n463), .H(n464), .Z(n447) );
  GTECH_AOI222 U1113 ( .A(n1325), .B(n23), .C(n1309), .D(n27), .E(n1317), .F(
        n25), .Z(n464) );
  GTECH_AOI222 U1114 ( .A(n1349), .B(n17), .C(n1333), .D(n21), .E(n1341), .F(
        n19), .Z(n463) );
  GTECH_AOI222 U1115 ( .A(n257), .B(n605), .C(n1357), .D(n15), .E(n1365), .F(
        n4), .Z(n462) );
  GTECH_AOI222 U1116 ( .A(n258), .B(n629), .C(n259), .D(n613), .E(n260), .F(
        n621), .Z(n461) );
  GTECH_AOI222 U1117 ( .A(n261), .B(n653), .C(n262), .D(n637), .E(n263), .F(
        n645), .Z(n460) );
  GTECH_AOI222 U1118 ( .A(n264), .B(n677), .C(n265), .D(n661), .E(n266), .F(
        n669), .Z(n459) );
  GTECH_AOI222 U1119 ( .A(n267), .B(n701), .C(n268), .D(n685), .E(n269), .F(
        n693), .Z(n458) );
  GTECH_AOI222 U1120 ( .A(n270), .B(n725), .C(n271), .D(n709), .E(n272), .F(
        n717), .Z(n457) );
  GTECH_AND8 U1121 ( .A(n465), .B(n466), .C(n467), .D(n468), .E(n469), .F(n470), .G(n471), .H(n472), .Z(n446) );
  GTECH_AOI222 U1122 ( .A(n281), .B(n749), .C(n282), .D(n733), .E(n283), .F(
        n741), .Z(n472) );
  GTECH_AOI222 U1123 ( .A(n284), .B(n773), .C(n285), .D(n757), .E(n286), .F(
        n765), .Z(n471) );
  GTECH_AOI222 U1124 ( .A(n287), .B(n797), .C(n288), .D(n781), .E(n289), .F(
        n789), .Z(n470) );
  GTECH_AOI222 U1125 ( .A(n290), .B(n821), .C(n291), .D(n805), .E(n292), .F(
        n813), .Z(n469) );
  GTECH_AOI222 U1126 ( .A(n293), .B(n845), .C(n294), .D(n829), .E(n295), .F(
        n837), .Z(n468) );
  GTECH_AOI222 U1127 ( .A(n296), .B(n869), .C(n297), .D(n853), .E(n298), .F(
        n861), .Z(n467) );
  GTECH_AOI222 U1128 ( .A(n299), .B(n893), .C(n300), .D(n877), .E(n301), .F(
        n885), .Z(n466) );
  GTECH_AOI222 U1129 ( .A(n302), .B(n917), .C(n303), .D(n901), .E(n304), .F(
        n909), .Z(n465) );
  GTECH_AND8 U1130 ( .A(n473), .B(n474), .C(n475), .D(n476), .E(n477), .F(n478), .G(n479), .H(n480), .Z(n445) );
  GTECH_AOI222 U1131 ( .A(n313), .B(n941), .C(n314), .D(n925), .E(n315), .F(
        n933), .Z(n480) );
  GTECH_AOI222 U1132 ( .A(n316), .B(n965), .C(n317), .D(n949), .E(n318), .F(
        n957), .Z(n479) );
  GTECH_AOI222 U1133 ( .A(n319), .B(n989), .C(n320), .D(n973), .E(n321), .F(
        n981), .Z(n478) );
  GTECH_AOI222 U1134 ( .A(n322), .B(n1013), .C(n323), .D(n997), .E(n324), .F(
        n1005), .Z(n477) );
  GTECH_AOI222 U1135 ( .A(n325), .B(n1037), .C(n326), .D(n1021), .E(n327), .F(
        n1029), .Z(n476) );
  GTECH_AOI222 U1136 ( .A(n328), .B(n1061), .C(n329), .D(n1045), .E(n330), .F(
        n1053), .Z(n475) );
  GTECH_AOI222 U1137 ( .A(n331), .B(n1085), .C(n332), .D(n1069), .E(n333), .F(
        n1077), .Z(n474) );
  GTECH_AOI222 U1138 ( .A(n334), .B(n1109), .C(n335), .D(n1093), .E(n336), .F(
        n1101), .Z(n473) );
  GTECH_NAND4 U1139 ( .A(n481), .B(n482), .C(n483), .D(n484), .Z(data_out[2])
         );
  GTECH_AND8 U1140 ( .A(n485), .B(n486), .C(n487), .D(n488), .E(n489), .F(n490), .G(n491), .H(n492), .Z(n484) );
  GTECH_AOI222 U1141 ( .A(n1132), .B(n71), .C(n1116), .D(n75), .E(n1124), .F(
        n73), .Z(n492) );
  GTECH_AOI222 U1142 ( .A(n1156), .B(n65), .C(n1140), .D(n69), .E(n1148), .F(
        n67), .Z(n491) );
  GTECH_AOI222 U1143 ( .A(n1180), .B(n59), .C(n1164), .D(n63), .E(n1172), .F(
        n61), .Z(n490) );
  GTECH_AOI222 U1144 ( .A(n1204), .B(n53), .C(n1188), .D(n57), .E(n1196), .F(
        n55), .Z(n489) );
  GTECH_AOI222 U1145 ( .A(n1228), .B(n47), .C(n1212), .D(n51), .E(n1220), .F(
        n49), .Z(n488) );
  GTECH_AOI222 U1146 ( .A(n1252), .B(n41), .C(n1236), .D(n45), .E(n1244), .F(
        n43), .Z(n487) );
  GTECH_AOI222 U1147 ( .A(n1276), .B(n35), .C(n1260), .D(n39), .E(n1268), .F(
        n37), .Z(n486) );
  GTECH_AOI222 U1148 ( .A(n1300), .B(n29), .C(n1284), .D(n33), .E(n1292), .F(
        n31), .Z(n485) );
  GTECH_AND8 U1149 ( .A(n493), .B(n494), .C(n495), .D(n496), .E(n497), .F(n498), .G(n499), .H(n500), .Z(n483) );
  GTECH_AOI222 U1150 ( .A(n1324), .B(n23), .C(n1308), .D(n27), .E(n1316), .F(
        n25), .Z(n500) );
  GTECH_AOI222 U1151 ( .A(n1348), .B(n17), .C(n1332), .D(n21), .E(n1340), .F(
        n19), .Z(n499) );
  GTECH_AOI222 U1152 ( .A(n257), .B(n604), .C(n1356), .D(n15), .E(n1364), .F(
        n4), .Z(n498) );
  GTECH_AOI222 U1153 ( .A(n258), .B(n628), .C(n259), .D(n612), .E(n260), .F(
        n620), .Z(n497) );
  GTECH_AOI222 U1154 ( .A(n261), .B(n652), .C(n262), .D(n636), .E(n263), .F(
        n644), .Z(n496) );
  GTECH_AOI222 U1155 ( .A(n264), .B(n676), .C(n265), .D(n660), .E(n266), .F(
        n668), .Z(n495) );
  GTECH_AOI222 U1156 ( .A(n267), .B(n700), .C(n268), .D(n684), .E(n269), .F(
        n692), .Z(n494) );
  GTECH_AOI222 U1157 ( .A(n270), .B(n724), .C(n271), .D(n708), .E(n272), .F(
        n716), .Z(n493) );
  GTECH_AND8 U1158 ( .A(n501), .B(n502), .C(n503), .D(n504), .E(n505), .F(n506), .G(n507), .H(n508), .Z(n482) );
  GTECH_AOI222 U1159 ( .A(n281), .B(n748), .C(n282), .D(n732), .E(n283), .F(
        n740), .Z(n508) );
  GTECH_AOI222 U1160 ( .A(n284), .B(n772), .C(n285), .D(n756), .E(n286), .F(
        n764), .Z(n507) );
  GTECH_AOI222 U1161 ( .A(n287), .B(n796), .C(n288), .D(n780), .E(n289), .F(
        n788), .Z(n506) );
  GTECH_AOI222 U1162 ( .A(n290), .B(n820), .C(n291), .D(n804), .E(n292), .F(
        n812), .Z(n505) );
  GTECH_AOI222 U1163 ( .A(n293), .B(n844), .C(n294), .D(n828), .E(n295), .F(
        n836), .Z(n504) );
  GTECH_AOI222 U1164 ( .A(n296), .B(n868), .C(n297), .D(n852), .E(n298), .F(
        n860), .Z(n503) );
  GTECH_AOI222 U1165 ( .A(n299), .B(n892), .C(n300), .D(n876), .E(n301), .F(
        n884), .Z(n502) );
  GTECH_AOI222 U1166 ( .A(n302), .B(n916), .C(n303), .D(n900), .E(n304), .F(
        n908), .Z(n501) );
  GTECH_AND8 U1167 ( .A(n509), .B(n510), .C(n511), .D(n512), .E(n513), .F(n514), .G(n515), .H(n516), .Z(n481) );
  GTECH_AOI222 U1168 ( .A(n313), .B(n940), .C(n314), .D(n924), .E(n315), .F(
        n932), .Z(n516) );
  GTECH_AOI222 U1169 ( .A(n316), .B(n964), .C(n317), .D(n948), .E(n318), .F(
        n956), .Z(n515) );
  GTECH_AOI222 U1170 ( .A(n319), .B(n988), .C(n320), .D(n972), .E(n321), .F(
        n980), .Z(n514) );
  GTECH_AOI222 U1171 ( .A(n322), .B(n1012), .C(n323), .D(n996), .E(n324), .F(
        n1004), .Z(n513) );
  GTECH_AOI222 U1172 ( .A(n325), .B(n1036), .C(n326), .D(n1020), .E(n327), .F(
        n1028), .Z(n512) );
  GTECH_AOI222 U1173 ( .A(n328), .B(n1060), .C(n329), .D(n1044), .E(n330), .F(
        n1052), .Z(n511) );
  GTECH_AOI222 U1174 ( .A(n331), .B(n1084), .C(n332), .D(n1068), .E(n333), .F(
        n1076), .Z(n510) );
  GTECH_AOI222 U1175 ( .A(n334), .B(n1108), .C(n335), .D(n1092), .E(n336), .F(
        n1100), .Z(n509) );
  GTECH_NAND4 U1176 ( .A(n517), .B(n518), .C(n519), .D(n520), .Z(data_out[1])
         );
  GTECH_AND8 U1177 ( .A(n521), .B(n522), .C(n523), .D(n524), .E(n525), .F(n526), .G(n527), .H(n528), .Z(n520) );
  GTECH_AOI222 U1178 ( .A(n1131), .B(n71), .C(n1115), .D(n75), .E(n1123), .F(
        n73), .Z(n528) );
  GTECH_AOI222 U1179 ( .A(n1155), .B(n65), .C(n1139), .D(n69), .E(n1147), .F(
        n67), .Z(n527) );
  GTECH_AOI222 U1180 ( .A(n1179), .B(n59), .C(n1163), .D(n63), .E(n1171), .F(
        n61), .Z(n526) );
  GTECH_AOI222 U1181 ( .A(n1203), .B(n53), .C(n1187), .D(n57), .E(n1195), .F(
        n55), .Z(n525) );
  GTECH_AOI222 U1182 ( .A(n1227), .B(n47), .C(n1211), .D(n51), .E(n1219), .F(
        n49), .Z(n524) );
  GTECH_AOI222 U1183 ( .A(n1251), .B(n41), .C(n1235), .D(n45), .E(n1243), .F(
        n43), .Z(n523) );
  GTECH_AOI222 U1184 ( .A(n1275), .B(n35), .C(n1259), .D(n39), .E(n1267), .F(
        n37), .Z(n522) );
  GTECH_AOI222 U1185 ( .A(n1299), .B(n29), .C(n1283), .D(n33), .E(n1291), .F(
        n31), .Z(n521) );
  GTECH_AND8 U1186 ( .A(n529), .B(n530), .C(n531), .D(n532), .E(n533), .F(n534), .G(n535), .H(n536), .Z(n519) );
  GTECH_AOI222 U1187 ( .A(n1323), .B(n23), .C(n1307), .D(n27), .E(n1315), .F(
        n25), .Z(n536) );
  GTECH_AOI222 U1188 ( .A(n1347), .B(n17), .C(n1331), .D(n21), .E(n1339), .F(
        n19), .Z(n535) );
  GTECH_AOI222 U1189 ( .A(n257), .B(n603), .C(n1355), .D(n15), .E(n1363), .F(
        n4), .Z(n534) );
  GTECH_AOI222 U1190 ( .A(n258), .B(n627), .C(n259), .D(n611), .E(n260), .F(
        n619), .Z(n533) );
  GTECH_AOI222 U1191 ( .A(n261), .B(n651), .C(n262), .D(n635), .E(n263), .F(
        n643), .Z(n532) );
  GTECH_AOI222 U1192 ( .A(n264), .B(n675), .C(n265), .D(n659), .E(n266), .F(
        n667), .Z(n531) );
  GTECH_AOI222 U1193 ( .A(n267), .B(n699), .C(n268), .D(n683), .E(n269), .F(
        n691), .Z(n530) );
  GTECH_AOI222 U1194 ( .A(n270), .B(n723), .C(n271), .D(n707), .E(n272), .F(
        n715), .Z(n529) );
  GTECH_AND8 U1195 ( .A(n537), .B(n538), .C(n539), .D(n540), .E(n541), .F(n542), .G(n543), .H(n544), .Z(n518) );
  GTECH_AOI222 U1196 ( .A(n281), .B(n747), .C(n282), .D(n731), .E(n283), .F(
        n739), .Z(n544) );
  GTECH_AOI222 U1197 ( .A(n284), .B(n771), .C(n285), .D(n755), .E(n286), .F(
        n763), .Z(n543) );
  GTECH_AOI222 U1198 ( .A(n287), .B(n795), .C(n288), .D(n779), .E(n289), .F(
        n787), .Z(n542) );
  GTECH_AOI222 U1199 ( .A(n290), .B(n819), .C(n291), .D(n803), .E(n292), .F(
        n811), .Z(n541) );
  GTECH_AOI222 U1200 ( .A(n293), .B(n843), .C(n294), .D(n827), .E(n295), .F(
        n835), .Z(n540) );
  GTECH_AOI222 U1201 ( .A(n296), .B(n867), .C(n297), .D(n851), .E(n298), .F(
        n859), .Z(n539) );
  GTECH_AOI222 U1202 ( .A(n299), .B(n891), .C(n300), .D(n875), .E(n301), .F(
        n883), .Z(n538) );
  GTECH_AOI222 U1203 ( .A(n302), .B(n915), .C(n303), .D(n899), .E(n304), .F(
        n907), .Z(n537) );
  GTECH_AND8 U1204 ( .A(n545), .B(n546), .C(n547), .D(n548), .E(n549), .F(n550), .G(n551), .H(n552), .Z(n517) );
  GTECH_AOI222 U1205 ( .A(n313), .B(n939), .C(n314), .D(n923), .E(n315), .F(
        n931), .Z(n552) );
  GTECH_AOI222 U1206 ( .A(n316), .B(n963), .C(n317), .D(n947), .E(n318), .F(
        n955), .Z(n551) );
  GTECH_AOI222 U1207 ( .A(n319), .B(n987), .C(n320), .D(n971), .E(n321), .F(
        n979), .Z(n550) );
  GTECH_AOI222 U1208 ( .A(n322), .B(n1011), .C(n323), .D(n995), .E(n324), .F(
        n1003), .Z(n549) );
  GTECH_AOI222 U1209 ( .A(n325), .B(n1035), .C(n326), .D(n1019), .E(n327), .F(
        n1027), .Z(n548) );
  GTECH_AOI222 U1210 ( .A(n328), .B(n1059), .C(n329), .D(n1043), .E(n330), .F(
        n1051), .Z(n547) );
  GTECH_AOI222 U1211 ( .A(n331), .B(n1083), .C(n332), .D(n1067), .E(n333), .F(
        n1075), .Z(n546) );
  GTECH_AOI222 U1212 ( .A(n334), .B(n1107), .C(n335), .D(n1091), .E(n336), .F(
        n1099), .Z(n545) );
  GTECH_NAND4 U1213 ( .A(n553), .B(n554), .C(n555), .D(n556), .Z(data_out[0])
         );
  GTECH_AND8 U1214 ( .A(n557), .B(n558), .C(n559), .D(n560), .E(n561), .F(n562), .G(n563), .H(n564), .Z(n556) );
  GTECH_AOI222 U1215 ( .A(n1130), .B(n71), .C(n1114), .D(n75), .E(n1122), .F(
        n73), .Z(n564) );
  GTECH_AND_NOT U1216 ( .A(n129), .B(n565), .Z(n73) );
  GTECH_NOR2 U1217 ( .A(n565), .B(n132), .Z(n75) );
  GTECH_AND_NOT U1218 ( .A(n126), .B(n565), .Z(n71) );
  GTECH_AOI222 U1219 ( .A(n1154), .B(n65), .C(n1138), .D(n69), .E(n1146), .F(
        n67), .Z(n563) );
  GTECH_AND_NOT U1220 ( .A(n120), .B(n565), .Z(n67) );
  GTECH_AND_NOT U1221 ( .A(n123), .B(n565), .Z(n69) );
  GTECH_AND_NOT U1222 ( .A(n117), .B(n565), .Z(n65) );
  GTECH_AOI222 U1223 ( .A(n1178), .B(n59), .C(n1162), .D(n63), .E(n1170), .F(
        n61), .Z(n562) );
  GTECH_AND_NOT U1224 ( .A(n111), .B(n565), .Z(n61) );
  GTECH_AND_NOT U1225 ( .A(n114), .B(n565), .Z(n63) );
  GTECH_AND_NOT U1226 ( .A(n108), .B(n565), .Z(n59) );
  GTECH_AOI222 U1227 ( .A(n1202), .B(n53), .C(n1186), .D(n57), .E(n1194), .F(
        n55), .Z(n561) );
  GTECH_AND_NOT U1228 ( .A(n102), .B(n565), .Z(n55) );
  GTECH_AND_NOT U1229 ( .A(n105), .B(n565), .Z(n57) );
  GTECH_AND_NOT U1230 ( .A(n99), .B(n565), .Z(n53) );
  GTECH_AOI222 U1231 ( .A(n1226), .B(n47), .C(n1210), .D(n51), .E(n1218), .F(
        n49), .Z(n560) );
  GTECH_AND_NOT U1232 ( .A(n93), .B(n565), .Z(n49) );
  GTECH_AND_NOT U1233 ( .A(n96), .B(n565), .Z(n51) );
  GTECH_AND_NOT U1234 ( .A(n90), .B(n565), .Z(n47) );
  GTECH_AOI222 U1235 ( .A(n1250), .B(n41), .C(n1234), .D(n45), .E(n1242), .F(
        n43), .Z(n559) );
  GTECH_AND_NOT U1236 ( .A(n566), .B(n132), .Z(n43) );
  GTECH_AND_NOT U1237 ( .A(n87), .B(n565), .Z(n45) );
  GTECH_OR3 U1238 ( .A(address[5]), .B(address[6]), .C(n567), .Z(n565) );
  GTECH_AND2 U1239 ( .A(n129), .B(n566), .Z(n41) );
  GTECH_AOI222 U1240 ( .A(n1274), .B(n35), .C(n1258), .D(n39), .E(n1266), .F(
        n37), .Z(n558) );
  GTECH_AND2 U1241 ( .A(n566), .B(n123), .Z(n37) );
  GTECH_AND2 U1242 ( .A(n566), .B(n126), .Z(n39) );
  GTECH_AND2 U1243 ( .A(n566), .B(n120), .Z(n35) );
  GTECH_AOI222 U1244 ( .A(n1298), .B(n29), .C(n1282), .D(n33), .E(n1290), .F(
        n31), .Z(n557) );
  GTECH_AND2 U1245 ( .A(n566), .B(n114), .Z(n31) );
  GTECH_AND2 U1246 ( .A(n566), .B(n117), .Z(n33) );
  GTECH_AND2 U1247 ( .A(n566), .B(n111), .Z(n29) );
  GTECH_AND8 U1248 ( .A(n568), .B(n569), .C(n570), .D(n571), .E(n572), .F(n573), .G(n574), .H(n575), .Z(n555) );
  GTECH_AOI222 U1249 ( .A(n1322), .B(n23), .C(n1306), .D(n27), .E(n1314), .F(
        n25), .Z(n575) );
  GTECH_AND2 U1250 ( .A(n566), .B(n105), .Z(n25) );
  GTECH_AND2 U1251 ( .A(n566), .B(n108), .Z(n27) );
  GTECH_AND2 U1252 ( .A(n566), .B(n102), .Z(n23) );
  GTECH_AOI222 U1253 ( .A(n1346), .B(n17), .C(n1330), .D(n21), .E(n1338), .F(
        n19), .Z(n574) );
  GTECH_AND2 U1254 ( .A(n566), .B(n96), .Z(n19) );
  GTECH_AND2 U1255 ( .A(n566), .B(n99), .Z(n21) );
  GTECH_AND2 U1256 ( .A(n566), .B(n93), .Z(n17) );
  GTECH_AOI222 U1257 ( .A(n257), .B(n602), .C(n1354), .D(n15), .E(n1362), .F(
        n4), .Z(n573) );
  GTECH_AND2 U1258 ( .A(n566), .B(n87), .Z(n4) );
  GTECH_AND2 U1259 ( .A(n566), .B(n90), .Z(n15) );
  GTECH_NOR3 U1260 ( .A(address[5]), .B(address[6]), .C(address[4]), .Z(n566)
         );
  GTECH_NOR2 U1261 ( .A(n236), .B(n132), .Z(n257) );
  GTECH_AOI222 U1262 ( .A(n258), .B(n626), .C(n259), .D(n610), .E(n260), .F(
        n618), .Z(n572) );
  GTECH_AND_NOT U1263 ( .A(n126), .B(n236), .Z(n260) );
  GTECH_AND_NOT U1264 ( .A(n129), .B(n236), .Z(n259) );
  GTECH_AND_NOT U1265 ( .A(n123), .B(n236), .Z(n258) );
  GTECH_AOI222 U1266 ( .A(n261), .B(n650), .C(n262), .D(n634), .E(n263), .F(
        n642), .Z(n571) );
  GTECH_AND_NOT U1267 ( .A(n117), .B(n236), .Z(n263) );
  GTECH_AND_NOT U1268 ( .A(n120), .B(n236), .Z(n262) );
  GTECH_AND_NOT U1269 ( .A(n114), .B(n236), .Z(n261) );
  GTECH_AOI222 U1270 ( .A(n264), .B(n674), .C(n265), .D(n658), .E(n266), .F(
        n666), .Z(n570) );
  GTECH_AND_NOT U1271 ( .A(n108), .B(n236), .Z(n266) );
  GTECH_AND_NOT U1272 ( .A(n111), .B(n236), .Z(n265) );
  GTECH_AND_NOT U1273 ( .A(n105), .B(n236), .Z(n264) );
  GTECH_AOI222 U1274 ( .A(n267), .B(n698), .C(n268), .D(n682), .E(n269), .F(
        n690), .Z(n569) );
  GTECH_AND_NOT U1275 ( .A(n99), .B(n236), .Z(n269) );
  GTECH_AND_NOT U1276 ( .A(n102), .B(n236), .Z(n268) );
  GTECH_AND_NOT U1277 ( .A(n96), .B(n236), .Z(n267) );
  GTECH_AOI222 U1278 ( .A(n270), .B(n722), .C(n271), .D(n706), .E(n272), .F(
        n714), .Z(n568) );
  GTECH_AND_NOT U1279 ( .A(n90), .B(n236), .Z(n272) );
  GTECH_AND_NOT U1280 ( .A(n93), .B(n236), .Z(n271) );
  GTECH_AND_NOT U1281 ( .A(n87), .B(n236), .Z(n270) );
  GTECH_OR_NOT U1282 ( .A(n567), .B(address[6]), .Z(n236) );
  GTECH_AND8 U1283 ( .A(n576), .B(n577), .C(n578), .D(n579), .E(n580), .F(n581), .G(n582), .H(n583), .Z(n554) );
  GTECH_AOI222 U1284 ( .A(n281), .B(n746), .C(n282), .D(n730), .E(n283), .F(
        n738), .Z(n583) );
  GTECH_AND2 U1285 ( .A(n129), .B(n201), .Z(n283) );
  GTECH_AND_NOT U1286 ( .A(n201), .B(n132), .Z(n282) );
  GTECH_AND2 U1287 ( .A(n126), .B(n201), .Z(n281) );
  GTECH_AOI222 U1288 ( .A(n284), .B(n770), .C(n285), .D(n754), .E(n286), .F(
        n762), .Z(n582) );
  GTECH_AND2 U1289 ( .A(n120), .B(n201), .Z(n286) );
  GTECH_AND2 U1290 ( .A(n123), .B(n201), .Z(n285) );
  GTECH_AND2 U1291 ( .A(n117), .B(n201), .Z(n284) );
  GTECH_AOI222 U1292 ( .A(n287), .B(n794), .C(n288), .D(n778), .E(n289), .F(
        n786), .Z(n581) );
  GTECH_AND2 U1293 ( .A(n111), .B(n201), .Z(n289) );
  GTECH_AND2 U1294 ( .A(n114), .B(n201), .Z(n288) );
  GTECH_AND2 U1295 ( .A(n108), .B(n201), .Z(n287) );
  GTECH_AOI222 U1296 ( .A(n290), .B(n818), .C(n291), .D(n802), .E(n292), .F(
        n810), .Z(n580) );
  GTECH_AND2 U1297 ( .A(n102), .B(n201), .Z(n292) );
  GTECH_AND2 U1298 ( .A(n105), .B(n201), .Z(n291) );
  GTECH_AND2 U1299 ( .A(n99), .B(n201), .Z(n290) );
  GTECH_AOI222 U1300 ( .A(n293), .B(n842), .C(n294), .D(n826), .E(n295), .F(
        n834), .Z(n579) );
  GTECH_AND2 U1301 ( .A(n93), .B(n201), .Z(n295) );
  GTECH_AND2 U1302 ( .A(n96), .B(n201), .Z(n294) );
  GTECH_AND2 U1303 ( .A(n90), .B(n201), .Z(n293) );
  GTECH_AOI222 U1304 ( .A(n296), .B(n866), .C(n297), .D(n850), .E(n298), .F(
        n858), .Z(n578) );
  GTECH_AND_NOT U1305 ( .A(n167), .B(n132), .Z(n298) );
  GTECH_AND2 U1306 ( .A(n87), .B(n201), .Z(n297) );
  GTECH_AND2 U1307 ( .A(address[6]), .B(n567), .Z(n201) );
  GTECH_AND2 U1308 ( .A(n129), .B(n167), .Z(n296) );
  GTECH_AOI222 U1309 ( .A(n299), .B(n890), .C(n300), .D(n874), .E(n301), .F(
        n882), .Z(n577) );
  GTECH_AND2 U1310 ( .A(n123), .B(n167), .Z(n301) );
  GTECH_AND2 U1311 ( .A(n126), .B(n167), .Z(n300) );
  GTECH_AND2 U1312 ( .A(n120), .B(n167), .Z(n299) );
  GTECH_AOI222 U1313 ( .A(n302), .B(n914), .C(n303), .D(n898), .E(n304), .F(
        n906), .Z(n576) );
  GTECH_AND2 U1314 ( .A(n114), .B(n167), .Z(n304) );
  GTECH_AND2 U1315 ( .A(n117), .B(n167), .Z(n303) );
  GTECH_AND2 U1316 ( .A(n111), .B(n167), .Z(n302) );
  GTECH_AND8 U1317 ( .A(n584), .B(n585), .C(n586), .D(n587), .E(n588), .F(n589), .G(n590), .H(n591), .Z(n553) );
  GTECH_AOI222 U1318 ( .A(n313), .B(n938), .C(n314), .D(n922), .E(n315), .F(
        n930), .Z(n591) );
  GTECH_AND2 U1319 ( .A(n105), .B(n167), .Z(n315) );
  GTECH_AND2 U1320 ( .A(n108), .B(n167), .Z(n314) );
  GTECH_AND2 U1321 ( .A(n102), .B(n167), .Z(n313) );
  GTECH_AOI222 U1322 ( .A(n316), .B(n962), .C(n317), .D(n946), .E(n318), .F(
        n954), .Z(n590) );
  GTECH_AND2 U1323 ( .A(n96), .B(n167), .Z(n318) );
  GTECH_AND2 U1324 ( .A(n99), .B(n167), .Z(n317) );
  GTECH_AND2 U1325 ( .A(n93), .B(n167), .Z(n316) );
  GTECH_AOI222 U1326 ( .A(n319), .B(n986), .C(n320), .D(n970), .E(n321), .F(
        n978), .Z(n589) );
  GTECH_AND2 U1327 ( .A(n87), .B(n167), .Z(n321) );
  GTECH_AND2 U1328 ( .A(n90), .B(n167), .Z(n320) );
  GTECH_AND2 U1329 ( .A(address[5]), .B(address[4]), .Z(n167) );
  GTECH_AND_NOT U1330 ( .A(n133), .B(n132), .Z(n319) );
  GTECH_OR2 U1331 ( .A(n592), .B(n593), .Z(n132) );
  GTECH_AOI222 U1332 ( .A(n322), .B(n1010), .C(n323), .D(n994), .E(n324), .F(
        n1002), .Z(n588) );
  GTECH_AND2 U1333 ( .A(n126), .B(n133), .Z(n324) );
  GTECH_NOR2 U1334 ( .A(n592), .B(n594), .Z(n126) );
  GTECH_AND2 U1335 ( .A(n129), .B(n133), .Z(n323) );
  GTECH_NOR2 U1336 ( .A(n592), .B(n595), .Z(n129) );
  GTECH_AND2 U1337 ( .A(n123), .B(n133), .Z(n322) );
  GTECH_NOR2 U1338 ( .A(n592), .B(n596), .Z(n123) );
  GTECH_OR_NOT U1339 ( .A(n597), .B(address[3]), .Z(n592) );
  GTECH_AOI222 U1340 ( .A(n325), .B(n1034), .C(n326), .D(n1018), .E(n327), .F(
        n1026), .Z(n587) );
  GTECH_AND2 U1341 ( .A(n117), .B(n133), .Z(n327) );
  GTECH_NOR2 U1342 ( .A(n598), .B(n595), .Z(n117) );
  GTECH_AND2 U1343 ( .A(n120), .B(n133), .Z(n326) );
  GTECH_NOR2 U1344 ( .A(n593), .B(n598), .Z(n120) );
  GTECH_AND2 U1345 ( .A(n114), .B(n133), .Z(n325) );
  GTECH_NOR2 U1346 ( .A(n598), .B(n594), .Z(n114) );
  GTECH_AOI222 U1347 ( .A(n328), .B(n1058), .C(n329), .D(n1042), .E(n330), .F(
        n1050), .Z(n586) );
  GTECH_AND2 U1348 ( .A(n108), .B(n133), .Z(n330) );
  GTECH_NOR2 U1349 ( .A(n593), .B(n599), .Z(n108) );
  GTECH_AND2 U1350 ( .A(n111), .B(n133), .Z(n329) );
  GTECH_NOR2 U1351 ( .A(n598), .B(n596), .Z(n111) );
  GTECH_OR_NOT U1352 ( .A(address[2]), .B(address[3]), .Z(n598) );
  GTECH_AND2 U1353 ( .A(n105), .B(n133), .Z(n328) );
  GTECH_NOR2 U1354 ( .A(n599), .B(n595), .Z(n105) );
  GTECH_AOI222 U1355 ( .A(n331), .B(n1082), .C(n332), .D(n1066), .E(n333), .F(
        n1074), .Z(n585) );
  GTECH_AND2 U1356 ( .A(n99), .B(n133), .Z(n333) );
  GTECH_NOR2 U1357 ( .A(n599), .B(n596), .Z(n99) );
  GTECH_AND2 U1358 ( .A(n102), .B(n133), .Z(n332) );
  GTECH_NOR2 U1359 ( .A(n599), .B(n594), .Z(n102) );
  GTECH_OR_NOT U1360 ( .A(address[3]), .B(address[2]), .Z(n599) );
  GTECH_AND2 U1361 ( .A(n96), .B(n133), .Z(n331) );
  GTECH_NOR2 U1362 ( .A(n593), .B(n600), .Z(n96) );
  GTECH_OR_NOT U1363 ( .A(n601), .B(address[1]), .Z(n593) );
  GTECH_AOI222 U1364 ( .A(n334), .B(n1106), .C(n335), .D(n1090), .E(n336), .F(
        n1098), .Z(n584) );
  GTECH_AND2 U1365 ( .A(n90), .B(n133), .Z(n336) );
  GTECH_NOR2 U1366 ( .A(n594), .B(n600), .Z(n90) );
  GTECH_OR_NOT U1367 ( .A(address[1]), .B(address[0]), .Z(n594) );
  GTECH_AND2 U1368 ( .A(n93), .B(n133), .Z(n335) );
  GTECH_NOR2 U1369 ( .A(n595), .B(n600), .Z(n93) );
  GTECH_OR_NOT U1370 ( .A(address[0]), .B(address[1]), .Z(n595) );
  GTECH_AND2 U1371 ( .A(n87), .B(n133), .Z(n334) );
  GTECH_AND2 U1372 ( .A(address[5]), .B(n567), .Z(n133) );
  GTECH_NOT U1373 ( .A(address[4]), .Z(n567) );
  GTECH_NOR2 U1374 ( .A(n600), .B(n596), .Z(n87) );
  GTECH_OR_NOT U1375 ( .A(address[1]), .B(n601), .Z(n596) );
  GTECH_NOT U1376 ( .A(address[0]), .Z(n601) );
  GTECH_OR_NOT U1377 ( .A(address[3]), .B(n597), .Z(n600) );
  GTECH_NOT U1378 ( .A(address[2]), .Z(n597) );
endmodule


module Output_Ports ( address, data_in, write, clock, reset, port_out_00, 
        port_out_01, port_out_02, port_out_03, port_out_04, port_out_05, 
        port_out_06, port_out_07, port_out_08, port_out_09, port_out_10, 
        port_out_11, port_out_12, port_out_13, port_out_14, port_out_15 );
  input [3:0] address;
  input [7:0] data_in;
  output [7:0] port_out_00;
  output [7:0] port_out_01;
  output [7:0] port_out_02;
  output [7:0] port_out_03;
  output [7:0] port_out_04;
  output [7:0] port_out_05;
  output [7:0] port_out_06;
  output [7:0] port_out_07;
  output [7:0] port_out_08;
  output [7:0] port_out_09;
  output [7:0] port_out_10;
  output [7:0] port_out_11;
  output [7:0] port_out_12;
  output [7:0] port_out_13;
  output [7:0] port_out_14;
  output [7:0] port_out_15;
  input write, clock, reset;
  wire   n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296;

  GTECH_FD2 RAM_reg_0__7_ ( .D(n284), .CP(n3), .CD(n1), .Q(port_out_00[7]), 
        .QN(n29) );
  GTECH_FD2 RAM_reg_0__6_ ( .D(n283), .CP(n3), .CD(n1), .Q(port_out_00[6]), 
        .QN(n30) );
  GTECH_FD2 RAM_reg_0__5_ ( .D(n282), .CP(n3), .CD(n1), .Q(port_out_00[5]), 
        .QN(n31) );
  GTECH_FD2 RAM_reg_0__4_ ( .D(n281), .CP(n3), .CD(n1), .Q(port_out_00[4]), 
        .QN(n32) );
  GTECH_FD2 RAM_reg_0__3_ ( .D(n280), .CP(n3), .CD(n1), .Q(port_out_00[3]), 
        .QN(n33) );
  GTECH_FD2 RAM_reg_0__2_ ( .D(n279), .CP(n3), .CD(n1), .Q(port_out_00[2]), 
        .QN(n34) );
  GTECH_FD2 RAM_reg_0__1_ ( .D(n278), .CP(n3), .CD(n1), .Q(port_out_00[1]), 
        .QN(n35) );
  GTECH_FD2 RAM_reg_0__0_ ( .D(n277), .CP(n3), .CD(n1), .Q(port_out_00[0]), 
        .QN(n36) );
  GTECH_FD2 RAM_reg_1__7_ ( .D(n276), .CP(n3), .CD(n1), .Q(port_out_01[7]), 
        .QN(n37) );
  GTECH_FD2 RAM_reg_1__6_ ( .D(n275), .CP(n3), .CD(n1), .Q(port_out_01[6]), 
        .QN(n38) );
  GTECH_FD2 RAM_reg_1__5_ ( .D(n274), .CP(n3), .CD(n1), .Q(port_out_01[5]), 
        .QN(n39) );
  GTECH_FD2 RAM_reg_1__4_ ( .D(n273), .CP(n3), .CD(n1), .Q(port_out_01[4]), 
        .QN(n40) );
  GTECH_FD2 RAM_reg_1__3_ ( .D(n272), .CP(n3), .CD(n1), .Q(port_out_01[3]), 
        .QN(n41) );
  GTECH_FD2 RAM_reg_1__2_ ( .D(n271), .CP(n3), .CD(n1), .Q(port_out_01[2]), 
        .QN(n42) );
  GTECH_FD2 RAM_reg_1__1_ ( .D(n270), .CP(n3), .CD(n1), .Q(port_out_01[1]), 
        .QN(n43) );
  GTECH_FD2 RAM_reg_1__0_ ( .D(n269), .CP(n3), .CD(n1), .Q(port_out_01[0]), 
        .QN(n44) );
  GTECH_FD2 RAM_reg_2__7_ ( .D(n268), .CP(n3), .CD(n1), .Q(port_out_02[7]), 
        .QN(n45) );
  GTECH_FD2 RAM_reg_2__6_ ( .D(n267), .CP(n3), .CD(n1), .Q(port_out_02[6]), 
        .QN(n46) );
  GTECH_FD2 RAM_reg_2__5_ ( .D(n266), .CP(n3), .CD(n1), .Q(port_out_02[5]), 
        .QN(n47) );
  GTECH_FD2 RAM_reg_2__4_ ( .D(n265), .CP(n3), .CD(n1), .Q(port_out_02[4]), 
        .QN(n48) );
  GTECH_FD2 RAM_reg_2__3_ ( .D(n264), .CP(n3), .CD(n1), .Q(port_out_02[3]), 
        .QN(n49) );
  GTECH_FD2 RAM_reg_2__2_ ( .D(n263), .CP(n3), .CD(n1), .Q(port_out_02[2]), 
        .QN(n50) );
  GTECH_FD2 RAM_reg_2__1_ ( .D(n262), .CP(n3), .CD(n1), .Q(port_out_02[1]), 
        .QN(n51) );
  GTECH_FD2 RAM_reg_2__0_ ( .D(n261), .CP(n3), .CD(n1), .Q(port_out_02[0]), 
        .QN(n52) );
  GTECH_FD2 RAM_reg_3__7_ ( .D(n260), .CP(n3), .CD(n1), .Q(port_out_03[7]), 
        .QN(n53) );
  GTECH_FD2 RAM_reg_3__6_ ( .D(n259), .CP(n3), .CD(n1), .Q(port_out_03[6]), 
        .QN(n54) );
  GTECH_FD2 RAM_reg_3__5_ ( .D(n258), .CP(n3), .CD(n1), .Q(port_out_03[5]), 
        .QN(n55) );
  GTECH_FD2 RAM_reg_3__4_ ( .D(n257), .CP(n3), .CD(n1), .Q(port_out_03[4]), 
        .QN(n56) );
  GTECH_FD2 RAM_reg_3__3_ ( .D(n256), .CP(n3), .CD(n1), .Q(port_out_03[3]), 
        .QN(n57) );
  GTECH_FD2 RAM_reg_3__2_ ( .D(n255), .CP(n3), .CD(n1), .Q(port_out_03[2]), 
        .QN(n58) );
  GTECH_FD2 RAM_reg_3__1_ ( .D(n254), .CP(n3), .CD(n1), .Q(port_out_03[1]), 
        .QN(n59) );
  GTECH_FD2 RAM_reg_3__0_ ( .D(n253), .CP(n3), .CD(n1), .Q(port_out_03[0]), 
        .QN(n60) );
  GTECH_FD2 RAM_reg_4__7_ ( .D(n252), .CP(n3), .CD(n1), .Q(port_out_04[7]), 
        .QN(n61) );
  GTECH_FD2 RAM_reg_4__6_ ( .D(n251), .CP(n3), .CD(n1), .Q(port_out_04[6]), 
        .QN(n62) );
  GTECH_FD2 RAM_reg_4__5_ ( .D(n250), .CP(n3), .CD(n1), .Q(port_out_04[5]), 
        .QN(n63) );
  GTECH_FD2 RAM_reg_4__4_ ( .D(n249), .CP(n3), .CD(n1), .Q(port_out_04[4]), 
        .QN(n64) );
  GTECH_FD2 RAM_reg_4__3_ ( .D(n248), .CP(n3), .CD(n1), .Q(port_out_04[3]), 
        .QN(n65) );
  GTECH_FD2 RAM_reg_4__2_ ( .D(n247), .CP(n3), .CD(n1), .Q(port_out_04[2]), 
        .QN(n66) );
  GTECH_FD2 RAM_reg_4__1_ ( .D(n246), .CP(n3), .CD(n1), .Q(port_out_04[1]), 
        .QN(n67) );
  GTECH_FD2 RAM_reg_4__0_ ( .D(n245), .CP(n3), .CD(n1), .Q(port_out_04[0]), 
        .QN(n68) );
  GTECH_FD2 RAM_reg_5__7_ ( .D(n244), .CP(n3), .CD(n1), .Q(port_out_05[7]), 
        .QN(n69) );
  GTECH_FD2 RAM_reg_5__6_ ( .D(n243), .CP(n3), .CD(n1), .Q(port_out_05[6]), 
        .QN(n70) );
  GTECH_FD2 RAM_reg_5__5_ ( .D(n242), .CP(n3), .CD(n1), .Q(port_out_05[5]), 
        .QN(n71) );
  GTECH_FD2 RAM_reg_5__4_ ( .D(n241), .CP(n3), .CD(n1), .Q(port_out_05[4]), 
        .QN(n72) );
  GTECH_FD2 RAM_reg_5__3_ ( .D(n240), .CP(n3), .CD(n1), .Q(port_out_05[3]), 
        .QN(n73) );
  GTECH_FD2 RAM_reg_5__2_ ( .D(n239), .CP(n3), .CD(n1), .Q(port_out_05[2]), 
        .QN(n74) );
  GTECH_FD2 RAM_reg_5__1_ ( .D(n238), .CP(n3), .CD(n1), .Q(port_out_05[1]), 
        .QN(n75) );
  GTECH_FD2 RAM_reg_5__0_ ( .D(n237), .CP(n3), .CD(n1), .Q(port_out_05[0]), 
        .QN(n76) );
  GTECH_FD2 RAM_reg_6__7_ ( .D(n236), .CP(n3), .CD(n1), .Q(port_out_06[7]), 
        .QN(n77) );
  GTECH_FD2 RAM_reg_6__6_ ( .D(n235), .CP(n3), .CD(n1), .Q(port_out_06[6]), 
        .QN(n78) );
  GTECH_FD2 RAM_reg_6__5_ ( .D(n234), .CP(n3), .CD(n1), .Q(port_out_06[5]), 
        .QN(n79) );
  GTECH_FD2 RAM_reg_6__4_ ( .D(n233), .CP(n3), .CD(n1), .Q(port_out_06[4]), 
        .QN(n80) );
  GTECH_FD2 RAM_reg_6__3_ ( .D(n232), .CP(n3), .CD(n1), .Q(port_out_06[3]), 
        .QN(n81) );
  GTECH_FD2 RAM_reg_6__2_ ( .D(n231), .CP(n3), .CD(n1), .Q(port_out_06[2]), 
        .QN(n82) );
  GTECH_FD2 RAM_reg_6__1_ ( .D(n230), .CP(n3), .CD(n1), .Q(port_out_06[1]), 
        .QN(n83) );
  GTECH_FD2 RAM_reg_6__0_ ( .D(n229), .CP(n3), .CD(n1), .Q(port_out_06[0]), 
        .QN(n84) );
  GTECH_FD2 RAM_reg_7__7_ ( .D(n228), .CP(n3), .CD(n1), .Q(port_out_07[7]), 
        .QN(n85) );
  GTECH_FD2 RAM_reg_7__6_ ( .D(n227), .CP(n3), .CD(n1), .Q(port_out_07[6]), 
        .QN(n86) );
  GTECH_FD2 RAM_reg_7__5_ ( .D(n226), .CP(n3), .CD(n1), .Q(port_out_07[5]), 
        .QN(n87) );
  GTECH_FD2 RAM_reg_7__4_ ( .D(n225), .CP(n3), .CD(n1), .Q(port_out_07[4]), 
        .QN(n88) );
  GTECH_FD2 RAM_reg_7__3_ ( .D(n224), .CP(n3), .CD(n1), .Q(port_out_07[3]), 
        .QN(n89) );
  GTECH_FD2 RAM_reg_7__2_ ( .D(n223), .CP(n3), .CD(n1), .Q(port_out_07[2]), 
        .QN(n90) );
  GTECH_FD2 RAM_reg_7__1_ ( .D(n222), .CP(n3), .CD(n1), .Q(port_out_07[1]), 
        .QN(n91) );
  GTECH_FD2 RAM_reg_7__0_ ( .D(n221), .CP(n3), .CD(n1), .Q(port_out_07[0]), 
        .QN(n92) );
  GTECH_FD2 RAM_reg_8__7_ ( .D(n220), .CP(n3), .CD(n1), .Q(port_out_08[7]), 
        .QN(n93) );
  GTECH_FD2 RAM_reg_8__6_ ( .D(n219), .CP(n3), .CD(n1), .Q(port_out_08[6]), 
        .QN(n94) );
  GTECH_FD2 RAM_reg_8__5_ ( .D(n218), .CP(n3), .CD(n1), .Q(port_out_08[5]), 
        .QN(n95) );
  GTECH_FD2 RAM_reg_8__4_ ( .D(n217), .CP(n3), .CD(n1), .Q(port_out_08[4]), 
        .QN(n96) );
  GTECH_FD2 RAM_reg_8__3_ ( .D(n216), .CP(n3), .CD(n1), .Q(port_out_08[3]), 
        .QN(n97) );
  GTECH_FD2 RAM_reg_8__2_ ( .D(n215), .CP(n3), .CD(n1), .Q(port_out_08[2]), 
        .QN(n98) );
  GTECH_FD2 RAM_reg_8__1_ ( .D(n214), .CP(n3), .CD(n1), .Q(port_out_08[1]), 
        .QN(n99) );
  GTECH_FD2 RAM_reg_8__0_ ( .D(n213), .CP(n3), .CD(n1), .Q(port_out_08[0]), 
        .QN(n100) );
  GTECH_FD2 RAM_reg_9__7_ ( .D(n212), .CP(n3), .CD(n1), .Q(port_out_09[7]), 
        .QN(n101) );
  GTECH_FD2 RAM_reg_9__6_ ( .D(n211), .CP(n3), .CD(n1), .Q(port_out_09[6]), 
        .QN(n102) );
  GTECH_FD2 RAM_reg_9__5_ ( .D(n210), .CP(n3), .CD(n1), .Q(port_out_09[5]), 
        .QN(n103) );
  GTECH_FD2 RAM_reg_9__4_ ( .D(n209), .CP(n3), .CD(n1), .Q(port_out_09[4]), 
        .QN(n104) );
  GTECH_FD2 RAM_reg_9__3_ ( .D(n208), .CP(n3), .CD(n1), .Q(port_out_09[3]), 
        .QN(n105) );
  GTECH_FD2 RAM_reg_9__2_ ( .D(n207), .CP(n3), .CD(n1), .Q(port_out_09[2]), 
        .QN(n106) );
  GTECH_FD2 RAM_reg_9__1_ ( .D(n206), .CP(n3), .CD(n1), .Q(port_out_09[1]), 
        .QN(n107) );
  GTECH_FD2 RAM_reg_9__0_ ( .D(n205), .CP(n3), .CD(n1), .Q(port_out_09[0]), 
        .QN(n108) );
  GTECH_FD2 RAM_reg_10__7_ ( .D(n204), .CP(n3), .CD(n1), .Q(port_out_10[7]), 
        .QN(n109) );
  GTECH_FD2 RAM_reg_10__6_ ( .D(n203), .CP(n3), .CD(n1), .Q(port_out_10[6]), 
        .QN(n110) );
  GTECH_FD2 RAM_reg_10__5_ ( .D(n202), .CP(n3), .CD(n1), .Q(port_out_10[5]), 
        .QN(n111) );
  GTECH_FD2 RAM_reg_10__4_ ( .D(n201), .CP(n3), .CD(n1), .Q(port_out_10[4]), 
        .QN(n112) );
  GTECH_FD2 RAM_reg_10__3_ ( .D(n200), .CP(n3), .CD(n1), .Q(port_out_10[3]), 
        .QN(n113) );
  GTECH_FD2 RAM_reg_10__2_ ( .D(n199), .CP(n3), .CD(n1), .Q(port_out_10[2]), 
        .QN(n114) );
  GTECH_FD2 RAM_reg_10__1_ ( .D(n198), .CP(n3), .CD(n1), .Q(port_out_10[1]), 
        .QN(n115) );
  GTECH_FD2 RAM_reg_10__0_ ( .D(n197), .CP(n3), .CD(n1), .Q(port_out_10[0]), 
        .QN(n116) );
  GTECH_FD2 RAM_reg_11__7_ ( .D(n196), .CP(n3), .CD(n1), .Q(port_out_11[7]), 
        .QN(n117) );
  GTECH_FD2 RAM_reg_11__6_ ( .D(n195), .CP(n3), .CD(n1), .Q(port_out_11[6]), 
        .QN(n118) );
  GTECH_FD2 RAM_reg_11__5_ ( .D(n194), .CP(n3), .CD(n1), .Q(port_out_11[5]), 
        .QN(n119) );
  GTECH_FD2 RAM_reg_11__4_ ( .D(n193), .CP(n3), .CD(n1), .Q(port_out_11[4]), 
        .QN(n120) );
  GTECH_FD2 RAM_reg_11__3_ ( .D(n192), .CP(n3), .CD(n1), .Q(port_out_11[3]), 
        .QN(n121) );
  GTECH_FD2 RAM_reg_11__2_ ( .D(n191), .CP(n3), .CD(n1), .Q(port_out_11[2]), 
        .QN(n122) );
  GTECH_FD2 RAM_reg_11__1_ ( .D(n190), .CP(n3), .CD(n1), .Q(port_out_11[1]), 
        .QN(n123) );
  GTECH_FD2 RAM_reg_11__0_ ( .D(n189), .CP(n3), .CD(n1), .Q(port_out_11[0]), 
        .QN(n124) );
  GTECH_FD2 RAM_reg_12__7_ ( .D(n188), .CP(n3), .CD(n1), .Q(port_out_12[7]), 
        .QN(n125) );
  GTECH_FD2 RAM_reg_12__6_ ( .D(n187), .CP(n3), .CD(n1), .Q(port_out_12[6]), 
        .QN(n126) );
  GTECH_FD2 RAM_reg_12__5_ ( .D(n186), .CP(n3), .CD(n1), .Q(port_out_12[5]), 
        .QN(n127) );
  GTECH_FD2 RAM_reg_12__4_ ( .D(n185), .CP(n3), .CD(n1), .Q(port_out_12[4]), 
        .QN(n128) );
  GTECH_FD2 RAM_reg_12__3_ ( .D(n184), .CP(n3), .CD(n1), .Q(port_out_12[3]), 
        .QN(n129) );
  GTECH_FD2 RAM_reg_12__2_ ( .D(n183), .CP(n3), .CD(n1), .Q(port_out_12[2]), 
        .QN(n130) );
  GTECH_FD2 RAM_reg_12__1_ ( .D(n182), .CP(n3), .CD(n1), .Q(port_out_12[1]), 
        .QN(n131) );
  GTECH_FD2 RAM_reg_12__0_ ( .D(n181), .CP(n3), .CD(n1), .Q(port_out_12[0]), 
        .QN(n132) );
  GTECH_FD2 RAM_reg_13__7_ ( .D(n180), .CP(n3), .CD(n1), .Q(port_out_13[7]), 
        .QN(n133) );
  GTECH_FD2 RAM_reg_13__6_ ( .D(n179), .CP(n3), .CD(n1), .Q(port_out_13[6]), 
        .QN(n134) );
  GTECH_FD2 RAM_reg_13__5_ ( .D(n178), .CP(n3), .CD(n1), .Q(port_out_13[5]), 
        .QN(n135) );
  GTECH_FD2 RAM_reg_13__4_ ( .D(n177), .CP(n3), .CD(n1), .Q(port_out_13[4]), 
        .QN(n136) );
  GTECH_FD2 RAM_reg_13__3_ ( .D(n176), .CP(n3), .CD(n1), .Q(port_out_13[3]), 
        .QN(n137) );
  GTECH_FD2 RAM_reg_13__2_ ( .D(n175), .CP(n3), .CD(n1), .Q(port_out_13[2]), 
        .QN(n138) );
  GTECH_FD2 RAM_reg_13__1_ ( .D(n174), .CP(n3), .CD(n1), .Q(port_out_13[1]), 
        .QN(n139) );
  GTECH_FD2 RAM_reg_13__0_ ( .D(n173), .CP(n3), .CD(n1), .Q(port_out_13[0]), 
        .QN(n140) );
  GTECH_FD2 RAM_reg_14__7_ ( .D(n172), .CP(n3), .CD(n1), .Q(port_out_14[7]), 
        .QN(n141) );
  GTECH_FD2 RAM_reg_14__6_ ( .D(n171), .CP(n3), .CD(n1), .Q(port_out_14[6]), 
        .QN(n142) );
  GTECH_FD2 RAM_reg_14__5_ ( .D(n170), .CP(n3), .CD(n1), .Q(port_out_14[5]), 
        .QN(n143) );
  GTECH_FD2 RAM_reg_14__4_ ( .D(n169), .CP(n3), .CD(n1), .Q(port_out_14[4]), 
        .QN(n144) );
  GTECH_FD2 RAM_reg_14__3_ ( .D(n168), .CP(n3), .CD(n1), .Q(port_out_14[3]), 
        .QN(n145) );
  GTECH_FD2 RAM_reg_14__2_ ( .D(n167), .CP(n3), .CD(n1), .Q(port_out_14[2]), 
        .QN(n146) );
  GTECH_FD2 RAM_reg_14__1_ ( .D(n166), .CP(n3), .CD(n1), .Q(port_out_14[1]), 
        .QN(n147) );
  GTECH_FD2 RAM_reg_14__0_ ( .D(n165), .CP(n3), .CD(n1), .Q(port_out_14[0]), 
        .QN(n148) );
  GTECH_FD2 RAM_reg_15__7_ ( .D(n164), .CP(n3), .CD(n1), .Q(port_out_15[7]), 
        .QN(n149) );
  GTECH_FD2 RAM_reg_15__6_ ( .D(n163), .CP(n3), .CD(n1), .Q(port_out_15[6]), 
        .QN(n150) );
  GTECH_FD2 RAM_reg_15__5_ ( .D(n162), .CP(n3), .CD(n1), .Q(port_out_15[5]), 
        .QN(n151) );
  GTECH_FD2 RAM_reg_15__4_ ( .D(n161), .CP(n3), .CD(n1), .Q(port_out_15[4]), 
        .QN(n152) );
  GTECH_FD2 RAM_reg_15__3_ ( .D(n160), .CP(n3), .CD(n1), .Q(port_out_15[3]), 
        .QN(n153) );
  GTECH_FD2 RAM_reg_15__2_ ( .D(n159), .CP(n3), .CD(n1), .Q(port_out_15[2]), 
        .QN(n154) );
  GTECH_FD2 RAM_reg_15__1_ ( .D(n158), .CP(n3), .CD(n1), .Q(port_out_15[1]), 
        .QN(n155) );
  GTECH_FD2 RAM_reg_15__0_ ( .D(n157), .CP(n3), .CD(n1), .Q(port_out_15[0]), 
        .QN(n156) );
  GTECH_NOT U2 ( .A(n2), .Z(n1) );
  GTECH_NOT U3 ( .A(reset), .Z(n2) );
  GTECH_NOT U4 ( .A(n4), .Z(n3) );
  GTECH_NOT U5 ( .A(clock), .Z(n4) );
  GTECH_MUXI2 U6 ( .A(n5), .B(n29), .S(n6), .Z(n284) );
  GTECH_MUXI2 U7 ( .A(n7), .B(n30), .S(n6), .Z(n283) );
  GTECH_MUXI2 U8 ( .A(n8), .B(n31), .S(n6), .Z(n282) );
  GTECH_MUXI2 U9 ( .A(n9), .B(n32), .S(n6), .Z(n281) );
  GTECH_MUXI2 U10 ( .A(n10), .B(n33), .S(n6), .Z(n280) );
  GTECH_MUXI2 U11 ( .A(n11), .B(n34), .S(n6), .Z(n279) );
  GTECH_MUXI2 U12 ( .A(n12), .B(n35), .S(n6), .Z(n278) );
  GTECH_MUXI2 U13 ( .A(n13), .B(n36), .S(n6), .Z(n277) );
  GTECH_OR2 U14 ( .A(n14), .B(n15), .Z(n6) );
  GTECH_MUXI2 U15 ( .A(n5), .B(n37), .S(n16), .Z(n276) );
  GTECH_MUXI2 U16 ( .A(n7), .B(n38), .S(n16), .Z(n275) );
  GTECH_MUXI2 U17 ( .A(n8), .B(n39), .S(n16), .Z(n274) );
  GTECH_MUXI2 U18 ( .A(n9), .B(n40), .S(n16), .Z(n273) );
  GTECH_MUXI2 U19 ( .A(n10), .B(n41), .S(n16), .Z(n272) );
  GTECH_MUXI2 U20 ( .A(n11), .B(n42), .S(n16), .Z(n271) );
  GTECH_MUXI2 U21 ( .A(n12), .B(n43), .S(n16), .Z(n270) );
  GTECH_MUXI2 U22 ( .A(n13), .B(n44), .S(n16), .Z(n269) );
  GTECH_OR2 U23 ( .A(n17), .B(n14), .Z(n16) );
  GTECH_MUXI2 U24 ( .A(n5), .B(n45), .S(n18), .Z(n268) );
  GTECH_MUXI2 U25 ( .A(n7), .B(n46), .S(n18), .Z(n267) );
  GTECH_MUXI2 U26 ( .A(n8), .B(n47), .S(n18), .Z(n266) );
  GTECH_MUXI2 U27 ( .A(n9), .B(n48), .S(n18), .Z(n265) );
  GTECH_MUXI2 U28 ( .A(n10), .B(n49), .S(n18), .Z(n264) );
  GTECH_MUXI2 U29 ( .A(n11), .B(n50), .S(n18), .Z(n263) );
  GTECH_MUXI2 U30 ( .A(n12), .B(n51), .S(n18), .Z(n262) );
  GTECH_MUXI2 U31 ( .A(n13), .B(n52), .S(n18), .Z(n261) );
  GTECH_OR2 U32 ( .A(n19), .B(n15), .Z(n18) );
  GTECH_MUXI2 U33 ( .A(n5), .B(n53), .S(n20), .Z(n260) );
  GTECH_MUXI2 U34 ( .A(n7), .B(n54), .S(n20), .Z(n259) );
  GTECH_MUXI2 U35 ( .A(n8), .B(n55), .S(n20), .Z(n258) );
  GTECH_MUXI2 U36 ( .A(n9), .B(n56), .S(n20), .Z(n257) );
  GTECH_MUXI2 U37 ( .A(n10), .B(n57), .S(n20), .Z(n256) );
  GTECH_MUXI2 U38 ( .A(n11), .B(n58), .S(n20), .Z(n255) );
  GTECH_MUXI2 U39 ( .A(n12), .B(n59), .S(n20), .Z(n254) );
  GTECH_MUXI2 U40 ( .A(n13), .B(n60), .S(n20), .Z(n253) );
  GTECH_OR2 U41 ( .A(n19), .B(n17), .Z(n20) );
  GTECH_MUXI2 U42 ( .A(n5), .B(n61), .S(n21), .Z(n252) );
  GTECH_MUXI2 U43 ( .A(n7), .B(n62), .S(n21), .Z(n251) );
  GTECH_MUXI2 U44 ( .A(n8), .B(n63), .S(n21), .Z(n250) );
  GTECH_MUXI2 U45 ( .A(n9), .B(n64), .S(n21), .Z(n249) );
  GTECH_MUXI2 U46 ( .A(n10), .B(n65), .S(n21), .Z(n248) );
  GTECH_MUXI2 U47 ( .A(n11), .B(n66), .S(n21), .Z(n247) );
  GTECH_MUXI2 U48 ( .A(n12), .B(n67), .S(n21), .Z(n246) );
  GTECH_MUXI2 U49 ( .A(n13), .B(n68), .S(n21), .Z(n245) );
  GTECH_OR2 U50 ( .A(n22), .B(n15), .Z(n21) );
  GTECH_MUXI2 U51 ( .A(n5), .B(n69), .S(n23), .Z(n244) );
  GTECH_MUXI2 U52 ( .A(n7), .B(n70), .S(n23), .Z(n243) );
  GTECH_MUXI2 U53 ( .A(n8), .B(n71), .S(n23), .Z(n242) );
  GTECH_MUXI2 U54 ( .A(n9), .B(n72), .S(n23), .Z(n241) );
  GTECH_MUXI2 U55 ( .A(n10), .B(n73), .S(n23), .Z(n240) );
  GTECH_MUXI2 U56 ( .A(n11), .B(n74), .S(n23), .Z(n239) );
  GTECH_MUXI2 U57 ( .A(n12), .B(n75), .S(n23), .Z(n238) );
  GTECH_MUXI2 U58 ( .A(n13), .B(n76), .S(n23), .Z(n237) );
  GTECH_OR2 U59 ( .A(n22), .B(n17), .Z(n23) );
  GTECH_MUXI2 U60 ( .A(n5), .B(n77), .S(n24), .Z(n236) );
  GTECH_MUXI2 U61 ( .A(n7), .B(n78), .S(n24), .Z(n235) );
  GTECH_MUXI2 U62 ( .A(n8), .B(n79), .S(n24), .Z(n234) );
  GTECH_MUXI2 U63 ( .A(n9), .B(n80), .S(n24), .Z(n233) );
  GTECH_MUXI2 U64 ( .A(n10), .B(n81), .S(n24), .Z(n232) );
  GTECH_MUXI2 U65 ( .A(n11), .B(n82), .S(n24), .Z(n231) );
  GTECH_MUXI2 U66 ( .A(n12), .B(n83), .S(n24), .Z(n230) );
  GTECH_MUXI2 U67 ( .A(n13), .B(n84), .S(n24), .Z(n229) );
  GTECH_OR2 U68 ( .A(n25), .B(n15), .Z(n24) );
  GTECH_NAND3 U69 ( .A(n26), .B(n27), .C(write), .Z(n15) );
  GTECH_MUXI2 U70 ( .A(n5), .B(n85), .S(n28), .Z(n228) );
  GTECH_MUXI2 U71 ( .A(n7), .B(n86), .S(n28), .Z(n227) );
  GTECH_MUXI2 U72 ( .A(n8), .B(n87), .S(n28), .Z(n226) );
  GTECH_MUXI2 U73 ( .A(n9), .B(n88), .S(n28), .Z(n225) );
  GTECH_MUXI2 U74 ( .A(n10), .B(n89), .S(n28), .Z(n224) );
  GTECH_MUXI2 U75 ( .A(n11), .B(n90), .S(n28), .Z(n223) );
  GTECH_MUXI2 U76 ( .A(n12), .B(n91), .S(n28), .Z(n222) );
  GTECH_MUXI2 U77 ( .A(n13), .B(n92), .S(n28), .Z(n221) );
  GTECH_OR2 U78 ( .A(n25), .B(n17), .Z(n28) );
  GTECH_NAND3 U79 ( .A(write), .B(n27), .C(address[0]), .Z(n17) );
  GTECH_NOT U80 ( .A(address[3]), .Z(n27) );
  GTECH_MUXI2 U81 ( .A(n5), .B(n93), .S(n285), .Z(n220) );
  GTECH_MUXI2 U82 ( .A(n7), .B(n94), .S(n285), .Z(n219) );
  GTECH_MUXI2 U83 ( .A(n8), .B(n95), .S(n285), .Z(n218) );
  GTECH_MUXI2 U84 ( .A(n9), .B(n96), .S(n285), .Z(n217) );
  GTECH_MUXI2 U85 ( .A(n10), .B(n97), .S(n285), .Z(n216) );
  GTECH_MUXI2 U86 ( .A(n11), .B(n98), .S(n285), .Z(n215) );
  GTECH_MUXI2 U87 ( .A(n12), .B(n99), .S(n285), .Z(n214) );
  GTECH_MUXI2 U88 ( .A(n13), .B(n100), .S(n285), .Z(n213) );
  GTECH_OR2 U89 ( .A(n286), .B(n14), .Z(n285) );
  GTECH_MUXI2 U90 ( .A(n5), .B(n101), .S(n287), .Z(n212) );
  GTECH_MUXI2 U91 ( .A(n7), .B(n102), .S(n287), .Z(n211) );
  GTECH_MUXI2 U92 ( .A(n8), .B(n103), .S(n287), .Z(n210) );
  GTECH_MUXI2 U93 ( .A(n9), .B(n104), .S(n287), .Z(n209) );
  GTECH_MUXI2 U94 ( .A(n10), .B(n105), .S(n287), .Z(n208) );
  GTECH_MUXI2 U95 ( .A(n11), .B(n106), .S(n287), .Z(n207) );
  GTECH_MUXI2 U96 ( .A(n12), .B(n107), .S(n287), .Z(n206) );
  GTECH_MUXI2 U97 ( .A(n13), .B(n108), .S(n287), .Z(n205) );
  GTECH_OR2 U98 ( .A(n288), .B(n14), .Z(n287) );
  GTECH_OR_NOT U99 ( .A(address[1]), .B(n289), .Z(n14) );
  GTECH_MUXI2 U100 ( .A(n5), .B(n109), .S(n290), .Z(n204) );
  GTECH_MUXI2 U101 ( .A(n7), .B(n110), .S(n290), .Z(n203) );
  GTECH_MUXI2 U102 ( .A(n8), .B(n111), .S(n290), .Z(n202) );
  GTECH_MUXI2 U103 ( .A(n9), .B(n112), .S(n290), .Z(n201) );
  GTECH_MUXI2 U104 ( .A(n10), .B(n113), .S(n290), .Z(n200) );
  GTECH_MUXI2 U105 ( .A(n11), .B(n114), .S(n290), .Z(n199) );
  GTECH_MUXI2 U106 ( .A(n12), .B(n115), .S(n290), .Z(n198) );
  GTECH_MUXI2 U107 ( .A(n13), .B(n116), .S(n290), .Z(n197) );
  GTECH_OR2 U108 ( .A(n286), .B(n19), .Z(n290) );
  GTECH_MUXI2 U109 ( .A(n5), .B(n117), .S(n291), .Z(n196) );
  GTECH_MUXI2 U110 ( .A(n7), .B(n118), .S(n291), .Z(n195) );
  GTECH_MUXI2 U111 ( .A(n8), .B(n119), .S(n291), .Z(n194) );
  GTECH_MUXI2 U112 ( .A(n9), .B(n120), .S(n291), .Z(n193) );
  GTECH_MUXI2 U113 ( .A(n10), .B(n121), .S(n291), .Z(n192) );
  GTECH_MUXI2 U114 ( .A(n11), .B(n122), .S(n291), .Z(n191) );
  GTECH_MUXI2 U115 ( .A(n12), .B(n123), .S(n291), .Z(n190) );
  GTECH_MUXI2 U116 ( .A(n13), .B(n124), .S(n291), .Z(n189) );
  GTECH_OR2 U117 ( .A(n288), .B(n19), .Z(n291) );
  GTECH_OR_NOT U118 ( .A(n292), .B(n289), .Z(n19) );
  GTECH_MUXI2 U119 ( .A(n5), .B(n125), .S(n293), .Z(n188) );
  GTECH_MUXI2 U120 ( .A(n7), .B(n126), .S(n293), .Z(n187) );
  GTECH_MUXI2 U121 ( .A(n8), .B(n127), .S(n293), .Z(n186) );
  GTECH_MUXI2 U122 ( .A(n9), .B(n128), .S(n293), .Z(n185) );
  GTECH_MUXI2 U123 ( .A(n10), .B(n129), .S(n293), .Z(n184) );
  GTECH_MUXI2 U124 ( .A(n11), .B(n130), .S(n293), .Z(n183) );
  GTECH_MUXI2 U125 ( .A(n12), .B(n131), .S(n293), .Z(n182) );
  GTECH_MUXI2 U126 ( .A(n13), .B(n132), .S(n293), .Z(n181) );
  GTECH_OR2 U127 ( .A(n286), .B(n22), .Z(n293) );
  GTECH_MUXI2 U128 ( .A(n5), .B(n133), .S(n294), .Z(n180) );
  GTECH_MUXI2 U129 ( .A(n7), .B(n134), .S(n294), .Z(n179) );
  GTECH_MUXI2 U130 ( .A(n8), .B(n135), .S(n294), .Z(n178) );
  GTECH_MUXI2 U131 ( .A(n9), .B(n136), .S(n294), .Z(n177) );
  GTECH_MUXI2 U132 ( .A(n10), .B(n137), .S(n294), .Z(n176) );
  GTECH_MUXI2 U133 ( .A(n11), .B(n138), .S(n294), .Z(n175) );
  GTECH_MUXI2 U134 ( .A(n12), .B(n139), .S(n294), .Z(n174) );
  GTECH_MUXI2 U135 ( .A(n13), .B(n140), .S(n294), .Z(n173) );
  GTECH_OR2 U136 ( .A(n288), .B(n22), .Z(n294) );
  GTECH_OR_NOT U137 ( .A(n289), .B(n292), .Z(n22) );
  GTECH_NOT U138 ( .A(address[1]), .Z(n292) );
  GTECH_MUXI2 U139 ( .A(n5), .B(n141), .S(n295), .Z(n172) );
  GTECH_MUXI2 U140 ( .A(n7), .B(n142), .S(n295), .Z(n171) );
  GTECH_MUXI2 U141 ( .A(n8), .B(n143), .S(n295), .Z(n170) );
  GTECH_MUXI2 U142 ( .A(n9), .B(n144), .S(n295), .Z(n169) );
  GTECH_MUXI2 U143 ( .A(n10), .B(n145), .S(n295), .Z(n168) );
  GTECH_MUXI2 U144 ( .A(n11), .B(n146), .S(n295), .Z(n167) );
  GTECH_MUXI2 U145 ( .A(n12), .B(n147), .S(n295), .Z(n166) );
  GTECH_MUXI2 U146 ( .A(n13), .B(n148), .S(n295), .Z(n165) );
  GTECH_OR2 U147 ( .A(n25), .B(n286), .Z(n295) );
  GTECH_NAND3 U148 ( .A(write), .B(n26), .C(address[3]), .Z(n286) );
  GTECH_NOT U149 ( .A(address[0]), .Z(n26) );
  GTECH_MUXI2 U150 ( .A(n5), .B(n149), .S(n296), .Z(n164) );
  GTECH_NOT U151 ( .A(data_in[7]), .Z(n5) );
  GTECH_MUXI2 U152 ( .A(n7), .B(n150), .S(n296), .Z(n163) );
  GTECH_NOT U153 ( .A(data_in[6]), .Z(n7) );
  GTECH_MUXI2 U154 ( .A(n8), .B(n151), .S(n296), .Z(n162) );
  GTECH_NOT U155 ( .A(data_in[5]), .Z(n8) );
  GTECH_MUXI2 U156 ( .A(n9), .B(n152), .S(n296), .Z(n161) );
  GTECH_NOT U157 ( .A(data_in[4]), .Z(n9) );
  GTECH_MUXI2 U158 ( .A(n10), .B(n153), .S(n296), .Z(n160) );
  GTECH_NOT U159 ( .A(data_in[3]), .Z(n10) );
  GTECH_MUXI2 U160 ( .A(n11), .B(n154), .S(n296), .Z(n159) );
  GTECH_NOT U161 ( .A(data_in[2]), .Z(n11) );
  GTECH_MUXI2 U162 ( .A(n12), .B(n155), .S(n296), .Z(n158) );
  GTECH_NOT U163 ( .A(data_in[1]), .Z(n12) );
  GTECH_MUXI2 U164 ( .A(n13), .B(n156), .S(n296), .Z(n157) );
  GTECH_OR2 U165 ( .A(n288), .B(n25), .Z(n296) );
  GTECH_OR_NOT U166 ( .A(n289), .B(address[1]), .Z(n25) );
  GTECH_NOT U167 ( .A(address[2]), .Z(n289) );
  GTECH_NAND3 U168 ( .A(address[0]), .B(write), .C(address[3]), .Z(n288) );
  GTECH_NOT U169 ( .A(data_in[0]), .Z(n13) );
endmodule


module memory ( clock, reset, data_in, address, write, port_in_00, port_in_01, 
        port_in_02, port_in_03, port_in_04, port_in_05, port_in_06, port_in_07, 
        port_in_08, port_in_09, port_in_10, port_in_11, port_in_12, port_in_13, 
        port_in_14, port_in_15, data_out, port_out_00, port_out_01, 
        port_out_02, port_out_03, port_out_04, port_out_05, port_out_06, 
        port_out_07, port_out_08, port_out_09, port_out_10, port_out_11, 
        port_out_12, port_out_13, port_out_14, port_out_15 );
  input [7:0] data_in;
  input [7:0] address;
  input [7:0] port_in_00;
  input [7:0] port_in_01;
  input [7:0] port_in_02;
  input [7:0] port_in_03;
  input [7:0] port_in_04;
  input [7:0] port_in_05;
  input [7:0] port_in_06;
  input [7:0] port_in_07;
  input [7:0] port_in_08;
  input [7:0] port_in_09;
  input [7:0] port_in_10;
  input [7:0] port_in_11;
  input [7:0] port_in_12;
  input [7:0] port_in_13;
  input [7:0] port_in_14;
  input [7:0] port_in_15;
  output [7:0] data_out;
  output [7:0] port_out_00;
  output [7:0] port_out_01;
  output [7:0] port_out_02;
  output [7:0] port_out_03;
  output [7:0] port_out_04;
  output [7:0] port_out_05;
  output [7:0] port_out_06;
  output [7:0] port_out_07;
  output [7:0] port_out_08;
  output [7:0] port_out_09;
  output [7:0] port_out_10;
  output [7:0] port_out_11;
  output [7:0] port_out_12;
  output [7:0] port_out_13;
  output [7:0] port_out_14;
  output [7:0] port_out_15;
  input clock, reset, write;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8;
  wire   [6:0] ram_address;
  wire   [6:0] rom_address;
  wire   [3:0] output_port_addr;
  wire   [7:0] ram_out;

  rom_128x8_sync rom_128x8_sync_u ( .address(rom_address), .data_out({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, 
        SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8}), .clock(n3) );
  rw_96x8_sync rw_96x8_sync_u ( .address(ram_address), .data_in(data_in), 
        .write(write), .clock(n3), .data_out(ram_out) );
  Output_Ports Output_Ports_u ( .address(output_port_addr), .data_in(data_in), 
        .write(write), .clock(n3), .reset(n1), .port_out_00(port_out_00), 
        .port_out_01(port_out_01), .port_out_02(port_out_02), .port_out_03(
        port_out_03), .port_out_04(port_out_04), .port_out_05(port_out_05), 
        .port_out_06(port_out_06), .port_out_07(port_out_07), .port_out_08(
        port_out_08), .port_out_09(port_out_09), .port_out_10(port_out_10), 
        .port_out_11(port_out_11), .port_out_12(port_out_12), .port_out_13(
        port_out_13), .port_out_14(port_out_14), .port_out_15(port_out_15) );
  GTECH_NOT U3 ( .A(n2), .Z(n1) );
  GTECH_NOT U4 ( .A(reset), .Z(n2) );
  GTECH_NOT U5 ( .A(n4), .Z(n3) );
  GTECH_NOT U6 ( .A(clock), .Z(n4) );
  GTECH_AND_NOT U7 ( .A(address[6]), .B(address[7]), .Z(rom_address[6]) );
  GTECH_AND_NOT U8 ( .A(n5), .B(n6), .Z(rom_address[5]) );
  GTECH_NOT U9 ( .A(address[5]), .Z(n6) );
  GTECH_AND_NOT U10 ( .A(n5), .B(n7), .Z(rom_address[4]) );
  GTECH_AND_NOT U11 ( .A(n5), .B(n8), .Z(rom_address[3]) );
  GTECH_AND_NOT U12 ( .A(n5), .B(n9), .Z(rom_address[2]) );
  GTECH_AND_NOT U13 ( .A(address[1]), .B(address[7]), .Z(rom_address[1]) );
  GTECH_AND_NOT U14 ( .A(address[0]), .B(address[7]), .Z(rom_address[0]) );
  GTECH_AND_NOT U15 ( .A(address[5]), .B(n5), .Z(ram_address[5]) );
  GTECH_AND_NOT U16 ( .A(address[4]), .B(n5), .Z(ram_address[4]) );
  GTECH_AND_NOT U17 ( .A(address[3]), .B(n5), .Z(ram_address[3]) );
  GTECH_AND_NOT U18 ( .A(address[2]), .B(n5), .Z(ram_address[2]) );
  GTECH_AND_NOT U19 ( .A(address[1]), .B(n5), .Z(ram_address[1]) );
  GTECH_AND_NOT U20 ( .A(address[0]), .B(n5), .Z(ram_address[0]) );
  GTECH_NOR2 U21 ( .A(n8), .B(n10), .Z(output_port_addr[3]) );
  GTECH_NOR2 U22 ( .A(n9), .B(n10), .Z(output_port_addr[2]) );
  GTECH_AND_NOT U23 ( .A(address[1]), .B(n10), .Z(output_port_addr[1]) );
  GTECH_AND_NOT U24 ( .A(address[0]), .B(n10), .Z(output_port_addr[0]) );
  GTECH_OR_NOT U25 ( .A(address[4]), .B(n11), .Z(n10) );
  GTECH_NAND8 U26 ( .A(n12), .B(n13), .C(n14), .D(n15), .E(n16), .F(n17), .G(
        n18), .H(n19), .Z(data_out[7]) );
  GTECH_AOI222 U27 ( .A(port_in_12[7]), .B(n20), .C(port_in_15[7]), .D(n21), 
        .E(port_in_14[7]), .F(n22), .Z(n19) );
  GTECH_AOI22 U28 ( .A(port_in_13[7]), .B(n23), .C(port_in_10[7]), .D(n24), 
        .Z(n18) );
  GTECH_AOI22 U29 ( .A(port_in_11[7]), .B(n25), .C(port_in_08[7]), .D(n26), 
        .Z(n17) );
  GTECH_AOI22 U30 ( .A(port_in_09[7]), .B(n27), .C(port_in_07[7]), .D(n28), 
        .Z(n16) );
  GTECH_AOI22 U31 ( .A(port_in_03[7]), .B(n29), .C(port_in_05[7]), .D(n30), 
        .Z(n15) );
  GTECH_AOI22 U32 ( .A(port_in_04[7]), .B(n31), .C(port_in_06[7]), .D(n32), 
        .Z(n14) );
  GTECH_AOI22 U33 ( .A(port_in_02[7]), .B(n33), .C(port_in_01[7]), .D(n34), 
        .Z(n13) );
  GTECH_AOI22 U34 ( .A(ram_out[7]), .B(n35), .C(port_in_00[7]), .D(n36), .Z(
        n12) );
  GTECH_NAND8 U35 ( .A(n37), .B(n38), .C(n39), .D(n40), .E(n41), .F(n42), .G(
        n43), .H(n44), .Z(data_out[6]) );
  GTECH_AOI222 U36 ( .A(port_in_12[6]), .B(n20), .C(port_in_15[6]), .D(n21), 
        .E(port_in_14[6]), .F(n22), .Z(n44) );
  GTECH_AOI22 U37 ( .A(port_in_13[6]), .B(n23), .C(port_in_10[6]), .D(n24), 
        .Z(n43) );
  GTECH_AOI22 U38 ( .A(port_in_11[6]), .B(n25), .C(port_in_08[6]), .D(n26), 
        .Z(n42) );
  GTECH_AOI22 U39 ( .A(port_in_09[6]), .B(n27), .C(port_in_07[6]), .D(n28), 
        .Z(n41) );
  GTECH_AOI22 U40 ( .A(port_in_03[6]), .B(n29), .C(port_in_05[6]), .D(n30), 
        .Z(n40) );
  GTECH_AOI22 U41 ( .A(port_in_04[6]), .B(n31), .C(port_in_06[6]), .D(n32), 
        .Z(n39) );
  GTECH_AOI22 U42 ( .A(port_in_02[6]), .B(n33), .C(port_in_01[6]), .D(n34), 
        .Z(n38) );
  GTECH_AOI22 U43 ( .A(ram_out[6]), .B(n35), .C(port_in_00[6]), .D(n36), .Z(
        n37) );
  GTECH_NAND8 U44 ( .A(n45), .B(n46), .C(n47), .D(n48), .E(n49), .F(n50), .G(
        n51), .H(n52), .Z(data_out[5]) );
  GTECH_AOI222 U45 ( .A(port_in_12[5]), .B(n20), .C(port_in_15[5]), .D(n21), 
        .E(port_in_14[5]), .F(n22), .Z(n52) );
  GTECH_AOI22 U46 ( .A(port_in_13[5]), .B(n23), .C(port_in_10[5]), .D(n24), 
        .Z(n51) );
  GTECH_AOI22 U47 ( .A(port_in_11[5]), .B(n25), .C(port_in_08[5]), .D(n26), 
        .Z(n50) );
  GTECH_AOI22 U48 ( .A(port_in_09[5]), .B(n27), .C(port_in_07[5]), .D(n28), 
        .Z(n49) );
  GTECH_AOI22 U49 ( .A(port_in_03[5]), .B(n29), .C(port_in_05[5]), .D(n30), 
        .Z(n48) );
  GTECH_AOI22 U50 ( .A(port_in_04[5]), .B(n31), .C(port_in_06[5]), .D(n32), 
        .Z(n47) );
  GTECH_AOI22 U51 ( .A(port_in_02[5]), .B(n33), .C(port_in_01[5]), .D(n34), 
        .Z(n46) );
  GTECH_AOI22 U52 ( .A(ram_out[5]), .B(n35), .C(port_in_00[5]), .D(n36), .Z(
        n45) );
  GTECH_NAND8 U53 ( .A(n53), .B(n54), .C(n55), .D(n56), .E(n57), .F(n58), .G(
        n59), .H(n60), .Z(data_out[4]) );
  GTECH_AOI222 U54 ( .A(port_in_12[4]), .B(n20), .C(port_in_15[4]), .D(n21), 
        .E(port_in_14[4]), .F(n22), .Z(n60) );
  GTECH_AOI22 U55 ( .A(port_in_13[4]), .B(n23), .C(port_in_10[4]), .D(n24), 
        .Z(n59) );
  GTECH_AOI22 U56 ( .A(port_in_11[4]), .B(n25), .C(port_in_08[4]), .D(n26), 
        .Z(n58) );
  GTECH_AOI22 U57 ( .A(port_in_09[4]), .B(n27), .C(port_in_07[4]), .D(n28), 
        .Z(n57) );
  GTECH_AOI22 U58 ( .A(port_in_03[4]), .B(n29), .C(port_in_05[4]), .D(n30), 
        .Z(n56) );
  GTECH_AOI22 U59 ( .A(port_in_04[4]), .B(n31), .C(port_in_06[4]), .D(n32), 
        .Z(n55) );
  GTECH_AOI22 U60 ( .A(port_in_02[4]), .B(n33), .C(port_in_01[4]), .D(n34), 
        .Z(n54) );
  GTECH_AOI22 U61 ( .A(ram_out[4]), .B(n35), .C(port_in_00[4]), .D(n36), .Z(
        n53) );
  GTECH_NAND8 U62 ( .A(n61), .B(n62), .C(n63), .D(n64), .E(n65), .F(n66), .G(
        n67), .H(n68), .Z(data_out[3]) );
  GTECH_AOI222 U63 ( .A(port_in_12[3]), .B(n20), .C(port_in_15[3]), .D(n21), 
        .E(port_in_14[3]), .F(n22), .Z(n68) );
  GTECH_AOI22 U64 ( .A(port_in_13[3]), .B(n23), .C(port_in_10[3]), .D(n24), 
        .Z(n67) );
  GTECH_AOI22 U65 ( .A(port_in_11[3]), .B(n25), .C(port_in_08[3]), .D(n26), 
        .Z(n66) );
  GTECH_AOI22 U66 ( .A(port_in_09[3]), .B(n27), .C(port_in_07[3]), .D(n28), 
        .Z(n65) );
  GTECH_AOI22 U67 ( .A(port_in_03[3]), .B(n29), .C(port_in_05[3]), .D(n30), 
        .Z(n64) );
  GTECH_AOI22 U68 ( .A(port_in_04[3]), .B(n31), .C(port_in_06[3]), .D(n32), 
        .Z(n63) );
  GTECH_AOI22 U69 ( .A(port_in_02[3]), .B(n33), .C(port_in_01[3]), .D(n34), 
        .Z(n62) );
  GTECH_AOI22 U70 ( .A(ram_out[3]), .B(n35), .C(port_in_00[3]), .D(n36), .Z(
        n61) );
  GTECH_NAND8 U71 ( .A(n69), .B(n70), .C(n71), .D(n72), .E(n73), .F(n74), .G(
        n75), .H(n76), .Z(data_out[2]) );
  GTECH_AOI222 U72 ( .A(port_in_12[2]), .B(n20), .C(port_in_15[2]), .D(n21), 
        .E(port_in_14[2]), .F(n22), .Z(n76) );
  GTECH_AOI22 U73 ( .A(port_in_13[2]), .B(n23), .C(port_in_10[2]), .D(n24), 
        .Z(n75) );
  GTECH_AOI22 U74 ( .A(port_in_11[2]), .B(n25), .C(port_in_08[2]), .D(n26), 
        .Z(n74) );
  GTECH_AOI22 U75 ( .A(port_in_09[2]), .B(n27), .C(port_in_07[2]), .D(n28), 
        .Z(n73) );
  GTECH_AOI22 U76 ( .A(port_in_03[2]), .B(n29), .C(port_in_05[2]), .D(n30), 
        .Z(n72) );
  GTECH_AOI22 U77 ( .A(port_in_04[2]), .B(n31), .C(port_in_06[2]), .D(n32), 
        .Z(n71) );
  GTECH_AOI22 U78 ( .A(port_in_02[2]), .B(n33), .C(port_in_01[2]), .D(n34), 
        .Z(n70) );
  GTECH_AOI22 U79 ( .A(ram_out[2]), .B(n35), .C(port_in_00[2]), .D(n36), .Z(
        n69) );
  GTECH_NAND8 U80 ( .A(n77), .B(n78), .C(n79), .D(n80), .E(n81), .F(n82), .G(
        n83), .H(n84), .Z(data_out[1]) );
  GTECH_AOI222 U81 ( .A(port_in_12[1]), .B(n20), .C(port_in_15[1]), .D(n21), 
        .E(port_in_14[1]), .F(n22), .Z(n84) );
  GTECH_AOI22 U82 ( .A(port_in_13[1]), .B(n23), .C(port_in_10[1]), .D(n24), 
        .Z(n83) );
  GTECH_AOI22 U83 ( .A(port_in_11[1]), .B(n25), .C(port_in_08[1]), .D(n26), 
        .Z(n82) );
  GTECH_AOI22 U84 ( .A(port_in_09[1]), .B(n27), .C(port_in_07[1]), .D(n28), 
        .Z(n81) );
  GTECH_AOI22 U85 ( .A(port_in_03[1]), .B(n29), .C(port_in_05[1]), .D(n30), 
        .Z(n80) );
  GTECH_AOI22 U86 ( .A(port_in_04[1]), .B(n31), .C(port_in_06[1]), .D(n32), 
        .Z(n79) );
  GTECH_AOI22 U87 ( .A(port_in_02[1]), .B(n33), .C(port_in_01[1]), .D(n34), 
        .Z(n78) );
  GTECH_AOI22 U88 ( .A(ram_out[1]), .B(n35), .C(port_in_00[1]), .D(n36), .Z(
        n77) );
  GTECH_NAND8 U89 ( .A(n85), .B(n86), .C(n87), .D(n88), .E(n89), .F(n90), .G(
        n91), .H(n92), .Z(data_out[0]) );
  GTECH_AOI222 U90 ( .A(port_in_12[0]), .B(n20), .C(port_in_15[0]), .D(n21), 
        .E(port_in_14[0]), .F(n22), .Z(n92) );
  GTECH_NOR5 U91 ( .A(n93), .B(n8), .C(n22), .D(n20), .E(n94), .Z(n21) );
  GTECH_OR5 U92 ( .A(n26), .B(n27), .C(n25), .D(n23), .E(n24), .Z(n94) );
  GTECH_AND_NOT U93 ( .A(n95), .B(n96), .Z(n22) );
  GTECH_AND_NOT U94 ( .A(n97), .B(n96), .Z(n20) );
  GTECH_AOI22 U95 ( .A(port_in_13[0]), .B(n23), .C(port_in_10[0]), .D(n24), 
        .Z(n91) );
  GTECH_AND_NOT U96 ( .A(n98), .B(n96), .Z(n24) );
  GTECH_AND_NOT U97 ( .A(n97), .B(n99), .Z(n23) );
  GTECH_AOI22 U98 ( .A(port_in_11[0]), .B(n25), .C(port_in_08[0]), .D(n26), 
        .Z(n90) );
  GTECH_AND_NOT U99 ( .A(n100), .B(n96), .Z(n26) );
  GTECH_OR3 U100 ( .A(n8), .B(address[0]), .C(n93), .Z(n96) );
  GTECH_AND_NOT U101 ( .A(n98), .B(n99), .Z(n25) );
  GTECH_AOI22 U102 ( .A(port_in_09[0]), .B(n27), .C(port_in_07[0]), .D(n28), 
        .Z(n89) );
  GTECH_AND2 U103 ( .A(n101), .B(n95), .Z(n28) );
  GTECH_AND_NOT U104 ( .A(n100), .B(n99), .Z(n27) );
  GTECH_NAND3 U105 ( .A(address[0]), .B(address[3]), .C(n102), .Z(n99) );
  GTECH_AOI22 U106 ( .A(port_in_03[0]), .B(n29), .C(port_in_05[0]), .D(n30), 
        .Z(n88) );
  GTECH_AND_NOT U107 ( .A(n101), .B(n103), .Z(n30) );
  GTECH_NOT U108 ( .A(n97), .Z(n103) );
  GTECH_AND2 U109 ( .A(n98), .B(n101), .Z(n29) );
  GTECH_AOI22 U110 ( .A(port_in_04[0]), .B(n31), .C(port_in_06[0]), .D(n32), 
        .Z(n87) );
  GTECH_AND2 U111 ( .A(n95), .B(n104), .Z(n32) );
  GTECH_AND2 U112 ( .A(address[1]), .B(address[2]), .Z(n95) );
  GTECH_AND2 U113 ( .A(n104), .B(n97), .Z(n31) );
  GTECH_AND_NOT U114 ( .A(address[2]), .B(address[1]), .Z(n97) );
  GTECH_AOI22 U115 ( .A(port_in_02[0]), .B(n33), .C(port_in_01[0]), .D(n34), 
        .Z(n86) );
  GTECH_AND2 U116 ( .A(n100), .B(n101), .Z(n34) );
  GTECH_AND3 U117 ( .A(address[0]), .B(n8), .C(n102), .Z(n101) );
  GTECH_NOT U118 ( .A(address[3]), .Z(n8) );
  GTECH_AND2 U119 ( .A(n98), .B(n104), .Z(n33) );
  GTECH_AND2 U120 ( .A(address[1]), .B(n9), .Z(n98) );
  GTECH_NOT U121 ( .A(address[2]), .Z(n9) );
  GTECH_AOI22 U122 ( .A(ram_out[0]), .B(n35), .C(port_in_00[0]), .D(n36), .Z(
        n85) );
  GTECH_AND2 U123 ( .A(n100), .B(n104), .Z(n36) );
  GTECH_NOR3 U124 ( .A(address[0]), .B(address[3]), .C(n93), .Z(n104) );
  GTECH_NOT U125 ( .A(n102), .Z(n93) );
  GTECH_AND_NOT U126 ( .A(n11), .B(n7), .Z(n102) );
  GTECH_NOT U127 ( .A(address[4]), .Z(n7) );
  GTECH_AND2 U128 ( .A(ram_address[6]), .B(address[5]), .Z(n11) );
  GTECH_AND2 U129 ( .A(address[6]), .B(address[7]), .Z(ram_address[6]) );
  GTECH_NOR2 U130 ( .A(address[2]), .B(address[1]), .Z(n100) );
  GTECH_AOI21 U131 ( .A(address[6]), .B(address[5]), .C(n5), .Z(n35) );
  GTECH_NOT U132 ( .A(address[7]), .Z(n5) );
endmodule


module computer ( clock, reset, port_in_00, port_in_01, port_in_02, port_in_03, 
        port_in_04, port_in_05, port_in_06, port_in_07, port_in_08, port_in_09, 
        port_in_10, port_in_11, port_in_12, port_in_13, port_in_14, port_in_15, 
        port_out_00, port_out_01, port_out_02, port_out_03, port_out_04, 
        port_out_05, port_out_06, port_out_07, port_out_08, port_out_09, 
        port_out_10, port_out_11, port_out_12, port_out_13, port_out_14, 
        port_out_15 );
  input [7:0] port_in_00;
  input [7:0] port_in_01;
  input [7:0] port_in_02;
  input [7:0] port_in_03;
  input [7:0] port_in_04;
  input [7:0] port_in_05;
  input [7:0] port_in_06;
  input [7:0] port_in_07;
  input [7:0] port_in_08;
  input [7:0] port_in_09;
  input [7:0] port_in_10;
  input [7:0] port_in_11;
  input [7:0] port_in_12;
  input [7:0] port_in_13;
  input [7:0] port_in_14;
  input [7:0] port_in_15;
  output [7:0] port_out_00;
  output [7:0] port_out_01;
  output [7:0] port_out_02;
  output [7:0] port_out_03;
  output [7:0] port_out_04;
  output [7:0] port_out_05;
  output [7:0] port_out_06;
  output [7:0] port_out_07;
  output [7:0] port_out_08;
  output [7:0] port_out_09;
  output [7:0] port_out_10;
  output [7:0] port_out_11;
  output [7:0] port_out_12;
  output [7:0] port_out_13;
  output [7:0] port_out_14;
  output [7:0] port_out_15;
  input clock, reset;
  wire   write_w, n1, n2, n3, n4;
  wire   [7:0] from_memory_w;
  wire   [7:0] to_memory_w;
  wire   [7:0] address_w;

  cpu CPU_1 ( .clock(n3), .reset(n1), .address(address_w), .from_memory(
        from_memory_w), .write(write_w), .to_memory(to_memory_w) );
  memory MEM_1 ( .clock(n3), .reset(n1), .data_in(to_memory_w), .address(
        address_w), .write(write_w), .port_in_00(port_in_00), .port_in_01(
        port_in_01), .port_in_02(port_in_02), .port_in_03(port_in_03), 
        .port_in_04(port_in_04), .port_in_05(port_in_05), .port_in_06(
        port_in_06), .port_in_07(port_in_07), .port_in_08(port_in_08), 
        .port_in_09(port_in_09), .port_in_10(port_in_10), .port_in_11(
        port_in_11), .port_in_12(port_in_12), .port_in_13(port_in_13), 
        .port_in_14(port_in_14), .port_in_15(port_in_15), .data_out(
        from_memory_w), .port_out_00(port_out_00), .port_out_01(port_out_01), 
        .port_out_02(port_out_02), .port_out_03(port_out_03), .port_out_04(
        port_out_04), .port_out_05(port_out_05), .port_out_06(port_out_06), 
        .port_out_07(port_out_07), .port_out_08(port_out_08), .port_out_09(
        port_out_09), .port_out_10(port_out_10), .port_out_11(port_out_11), 
        .port_out_12(port_out_12), .port_out_13(port_out_13), .port_out_14(
        port_out_14), .port_out_15(port_out_15) );
  GTECH_NOT U1 ( .A(n2), .Z(n1) );
  GTECH_NOT U2 ( .A(reset), .Z(n2) );
  GTECH_NOT U3 ( .A(n4), .Z(n3) );
  GTECH_NOT U4 ( .A(clock), .Z(n4) );
endmodule


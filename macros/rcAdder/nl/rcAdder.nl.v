module rcAdder (carry_o,
    clk,
    a_i,
    b_i,
    sum_o);
 output carry_o;
 input clk;
 input [15:0] a_i;
 input [15:0] b_i;
 output [15:0] sum_o;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire \fa0.sum_l ;
 wire \genblk1[10].fa0.sum_o ;
 wire \genblk1[11].fa0.sum_o ;
 wire \genblk1[12].fa0.sum_o ;
 wire \genblk1[13].fa0.sum_o ;
 wire \genblk1[14].fa0.sum_o ;
 wire \genblk1[15].fa0.sum_o ;
 wire \genblk1[1].fa0.sum_o ;
 wire \genblk1[2].fa0.sum_o ;
 wire \genblk1[3].fa0.sum_o ;
 wire \genblk1[4].fa0.sum_o ;
 wire \genblk1[5].fa0.sum_o ;
 wire \genblk1[6].fa0.sum_o ;
 wire \genblk1[7].fa0.sum_o ;
 wire \genblk1[8].fa0.sum_o ;
 wire \genblk1[9].fa0.sum_o ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;

 sky130_fd_sc_hd__and2_1 _060_ (.A(net24),
    .B(net8),
    .X(_020_));
 sky130_fd_sc_hd__xor2_1 _061_ (.A(net24),
    .B(net8),
    .X(_021_));
 sky130_fd_sc_hd__nand2_1 _062_ (.A(net17),
    .B(net1),
    .Y(_022_));
 sky130_fd_sc_hd__xnor2_1 _063_ (.A(_021_),
    .B(_022_),
    .Y(\genblk1[1].fa0.sum_o ));
 sky130_fd_sc_hd__a31o_1 _064_ (.A1(net17),
    .A2(net1),
    .A3(_021_),
    .B1(_020_),
    .X(_023_));
 sky130_fd_sc_hd__or2_1 _065_ (.A(net25),
    .B(net9),
    .X(_024_));
 sky130_fd_sc_hd__nand2_1 _066_ (.A(net25),
    .B(net9),
    .Y(_025_));
 sky130_fd_sc_hd__nand2_1 _067_ (.A(_024_),
    .B(_025_),
    .Y(_026_));
 sky130_fd_sc_hd__xnor2_1 _068_ (.A(_023_),
    .B(_026_),
    .Y(\genblk1[2].fa0.sum_o ));
 sky130_fd_sc_hd__a21bo_1 _069_ (.A1(_023_),
    .A2(_024_),
    .B1_N(_025_),
    .X(_027_));
 sky130_fd_sc_hd__or2_1 _070_ (.A(net26),
    .B(net10),
    .X(_028_));
 sky130_fd_sc_hd__nand2_1 _071_ (.A(net26),
    .B(net10),
    .Y(_029_));
 sky130_fd_sc_hd__nand2_1 _072_ (.A(_028_),
    .B(_029_),
    .Y(_030_));
 sky130_fd_sc_hd__xnor2_1 _073_ (.A(_027_),
    .B(_030_),
    .Y(\genblk1[3].fa0.sum_o ));
 sky130_fd_sc_hd__or2_1 _074_ (.A(net27),
    .B(net11),
    .X(_031_));
 sky130_fd_sc_hd__nand2_1 _075_ (.A(net27),
    .B(net11),
    .Y(_032_));
 sky130_fd_sc_hd__nand2_1 _076_ (.A(_031_),
    .B(_032_),
    .Y(_033_));
 sky130_fd_sc_hd__a21bo_1 _077_ (.A1(_027_),
    .A2(_028_),
    .B1_N(_029_),
    .X(_034_));
 sky130_fd_sc_hd__xnor2_1 _078_ (.A(_033_),
    .B(_034_),
    .Y(\genblk1[4].fa0.sum_o ));
 sky130_fd_sc_hd__or2_1 _079_ (.A(net28),
    .B(net12),
    .X(_035_));
 sky130_fd_sc_hd__nand2_1 _080_ (.A(net28),
    .B(net12),
    .Y(_036_));
 sky130_fd_sc_hd__nand2_1 _081_ (.A(_035_),
    .B(_036_),
    .Y(_037_));
 sky130_fd_sc_hd__a21bo_1 _082_ (.A1(_031_),
    .A2(_034_),
    .B1_N(_032_),
    .X(_038_));
 sky130_fd_sc_hd__xnor2_1 _083_ (.A(_037_),
    .B(_038_),
    .Y(\genblk1[5].fa0.sum_o ));
 sky130_fd_sc_hd__or2_1 _084_ (.A(net29),
    .B(net13),
    .X(_039_));
 sky130_fd_sc_hd__nand2_1 _085_ (.A(net29),
    .B(net13),
    .Y(_040_));
 sky130_fd_sc_hd__nand2_1 _086_ (.A(_039_),
    .B(_040_),
    .Y(_041_));
 sky130_fd_sc_hd__a21bo_1 _087_ (.A1(_035_),
    .A2(_038_),
    .B1_N(_036_),
    .X(_042_));
 sky130_fd_sc_hd__xnor2_1 _088_ (.A(_041_),
    .B(_042_),
    .Y(\genblk1[6].fa0.sum_o ));
 sky130_fd_sc_hd__or2_1 _089_ (.A(net30),
    .B(net14),
    .X(_043_));
 sky130_fd_sc_hd__nand2_1 _090_ (.A(net30),
    .B(net14),
    .Y(_044_));
 sky130_fd_sc_hd__nand2_1 _091_ (.A(_043_),
    .B(_044_),
    .Y(_045_));
 sky130_fd_sc_hd__a21bo_1 _092_ (.A1(_039_),
    .A2(_042_),
    .B1_N(_040_),
    .X(_046_));
 sky130_fd_sc_hd__xnor2_1 _093_ (.A(_045_),
    .B(_046_),
    .Y(\genblk1[7].fa0.sum_o ));
 sky130_fd_sc_hd__or2_1 _094_ (.A(net31),
    .B(net15),
    .X(_047_));
 sky130_fd_sc_hd__nand2_1 _095_ (.A(net31),
    .B(net15),
    .Y(_048_));
 sky130_fd_sc_hd__nand2_1 _096_ (.A(_047_),
    .B(_048_),
    .Y(_049_));
 sky130_fd_sc_hd__a21bo_1 _097_ (.A1(_043_),
    .A2(_046_),
    .B1_N(_044_),
    .X(_050_));
 sky130_fd_sc_hd__xnor2_1 _098_ (.A(_049_),
    .B(_050_),
    .Y(\genblk1[8].fa0.sum_o ));
 sky130_fd_sc_hd__or2_1 _099_ (.A(net32),
    .B(net16),
    .X(_051_));
 sky130_fd_sc_hd__nand2_1 _100_ (.A(net32),
    .B(net16),
    .Y(_052_));
 sky130_fd_sc_hd__nand2_1 _101_ (.A(_051_),
    .B(_052_),
    .Y(_053_));
 sky130_fd_sc_hd__a21bo_1 _102_ (.A1(_047_),
    .A2(_050_),
    .B1_N(_048_),
    .X(_054_));
 sky130_fd_sc_hd__xnor2_1 _103_ (.A(_053_),
    .B(_054_),
    .Y(\genblk1[9].fa0.sum_o ));
 sky130_fd_sc_hd__or2_1 _104_ (.A(net18),
    .B(net2),
    .X(_055_));
 sky130_fd_sc_hd__nand2_1 _105_ (.A(net18),
    .B(net2),
    .Y(_056_));
 sky130_fd_sc_hd__nand2_1 _106_ (.A(_055_),
    .B(_056_),
    .Y(_057_));
 sky130_fd_sc_hd__a21bo_1 _107_ (.A1(_051_),
    .A2(_054_),
    .B1_N(_052_),
    .X(_058_));
 sky130_fd_sc_hd__xnor2_1 _108_ (.A(_057_),
    .B(_058_),
    .Y(\genblk1[10].fa0.sum_o ));
 sky130_fd_sc_hd__or2_1 _109_ (.A(net19),
    .B(net3),
    .X(_059_));
 sky130_fd_sc_hd__nand2_1 _110_ (.A(net19),
    .B(net3),
    .Y(_000_));
 sky130_fd_sc_hd__nand2_1 _111_ (.A(_059_),
    .B(_000_),
    .Y(_001_));
 sky130_fd_sc_hd__a21bo_1 _112_ (.A1(_055_),
    .A2(_058_),
    .B1_N(_056_),
    .X(_002_));
 sky130_fd_sc_hd__xnor2_1 _113_ (.A(_001_),
    .B(_002_),
    .Y(\genblk1[11].fa0.sum_o ));
 sky130_fd_sc_hd__or2_1 _114_ (.A(net20),
    .B(net4),
    .X(_003_));
 sky130_fd_sc_hd__nand2_1 _115_ (.A(net20),
    .B(net4),
    .Y(_004_));
 sky130_fd_sc_hd__nand2_1 _116_ (.A(_003_),
    .B(_004_),
    .Y(_005_));
 sky130_fd_sc_hd__a21bo_1 _117_ (.A1(_059_),
    .A2(_002_),
    .B1_N(_000_),
    .X(_006_));
 sky130_fd_sc_hd__xnor2_1 _118_ (.A(_005_),
    .B(_006_),
    .Y(\genblk1[12].fa0.sum_o ));
 sky130_fd_sc_hd__or2_1 _119_ (.A(net21),
    .B(net5),
    .X(_007_));
 sky130_fd_sc_hd__nand2_1 _120_ (.A(net21),
    .B(net5),
    .Y(_008_));
 sky130_fd_sc_hd__nand2_1 _121_ (.A(_007_),
    .B(_008_),
    .Y(_009_));
 sky130_fd_sc_hd__a21bo_1 _122_ (.A1(_003_),
    .A2(_006_),
    .B1_N(_004_),
    .X(_010_));
 sky130_fd_sc_hd__xnor2_1 _123_ (.A(_009_),
    .B(_010_),
    .Y(\genblk1[13].fa0.sum_o ));
 sky130_fd_sc_hd__or2_1 _124_ (.A(net22),
    .B(net6),
    .X(_011_));
 sky130_fd_sc_hd__nand2_1 _125_ (.A(net22),
    .B(net6),
    .Y(_012_));
 sky130_fd_sc_hd__nand2_1 _126_ (.A(_011_),
    .B(_012_),
    .Y(_013_));
 sky130_fd_sc_hd__a21bo_1 _127_ (.A1(_007_),
    .A2(_010_),
    .B1_N(_008_),
    .X(_014_));
 sky130_fd_sc_hd__xnor2_1 _128_ (.A(_013_),
    .B(_014_),
    .Y(\genblk1[14].fa0.sum_o ));
 sky130_fd_sc_hd__and2_1 _129_ (.A(net23),
    .B(net7),
    .X(_015_));
 sky130_fd_sc_hd__nor2_1 _130_ (.A(net23),
    .B(net7),
    .Y(_016_));
 sky130_fd_sc_hd__nor2_1 _131_ (.A(_015_),
    .B(_016_),
    .Y(_017_));
 sky130_fd_sc_hd__a21boi_1 _132_ (.A1(_011_),
    .A2(_014_),
    .B1_N(_012_),
    .Y(_018_));
 sky130_fd_sc_hd__o21bai_1 _133_ (.A1(_016_),
    .A2(_018_),
    .B1_N(_015_),
    .Y(net33));
 sky130_fd_sc_hd__xnor2_1 _134_ (.A(_017_),
    .B(_018_),
    .Y(\genblk1[15].fa0.sum_o ));
 sky130_fd_sc_hd__or2_1 _135_ (.A(net17),
    .B(net1),
    .X(_019_));
 sky130_fd_sc_hd__and2_1 _136_ (.A(_022_),
    .B(_019_),
    .X(\fa0.sum_l ));
 sky130_fd_sc_hd__dfxtp_1 _137_ (.CLK(clknet_1_1__leaf_clk),
    .D(\fa0.sum_l ),
    .Q(net34));
 sky130_fd_sc_hd__dfxtp_1 _138_ (.CLK(clknet_1_1__leaf_clk),
    .D(\genblk1[1].fa0.sum_o ),
    .Q(net41));
 sky130_fd_sc_hd__dfxtp_1 _139_ (.CLK(clknet_1_1__leaf_clk),
    .D(\genblk1[2].fa0.sum_o ),
    .Q(net42));
 sky130_fd_sc_hd__dfxtp_1 _140_ (.CLK(clknet_1_1__leaf_clk),
    .D(\genblk1[3].fa0.sum_o ),
    .Q(net43));
 sky130_fd_sc_hd__dfxtp_1 _141_ (.CLK(clknet_1_0__leaf_clk),
    .D(\genblk1[4].fa0.sum_o ),
    .Q(net44));
 sky130_fd_sc_hd__dfxtp_1 _142_ (.CLK(clknet_1_1__leaf_clk),
    .D(\genblk1[5].fa0.sum_o ),
    .Q(net45));
 sky130_fd_sc_hd__dfxtp_1 _143_ (.CLK(clknet_1_0__leaf_clk),
    .D(\genblk1[6].fa0.sum_o ),
    .Q(net46));
 sky130_fd_sc_hd__dfxtp_1 _144_ (.CLK(clknet_1_0__leaf_clk),
    .D(\genblk1[7].fa0.sum_o ),
    .Q(net47));
 sky130_fd_sc_hd__dfxtp_1 _145_ (.CLK(clknet_1_0__leaf_clk),
    .D(\genblk1[8].fa0.sum_o ),
    .Q(net48));
 sky130_fd_sc_hd__dfxtp_1 _146_ (.CLK(clknet_1_0__leaf_clk),
    .D(\genblk1[9].fa0.sum_o ),
    .Q(net49));
 sky130_fd_sc_hd__dfxtp_1 _147_ (.CLK(clknet_1_0__leaf_clk),
    .D(\genblk1[10].fa0.sum_o ),
    .Q(net35));
 sky130_fd_sc_hd__dfxtp_1 _148_ (.CLK(clknet_1_0__leaf_clk),
    .D(\genblk1[11].fa0.sum_o ),
    .Q(net36));
 sky130_fd_sc_hd__dfxtp_1 _149_ (.CLK(clknet_1_1__leaf_clk),
    .D(\genblk1[12].fa0.sum_o ),
    .Q(net37));
 sky130_fd_sc_hd__dfxtp_1 _150_ (.CLK(clknet_1_1__leaf_clk),
    .D(\genblk1[13].fa0.sum_o ),
    .Q(net38));
 sky130_fd_sc_hd__dfxtp_1 _151_ (.CLK(clknet_1_1__leaf_clk),
    .D(\genblk1[14].fa0.sum_o ),
    .Q(net39));
 sky130_fd_sc_hd__dfxtp_1 _152_ (.CLK(clknet_1_1__leaf_clk),
    .D(\genblk1[15].fa0.sum_o ),
    .Q(net40));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_65 ();
 sky130_fd_sc_hd__buf_1 input1 (.A(a_i[0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(a_i[10]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(a_i[11]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(a_i[12]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(a_i[13]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(a_i[14]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(a_i[15]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(a_i[1]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(a_i[2]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(a_i[3]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(a_i[4]),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_1 input12 (.A(a_i[5]),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_1 input13 (.A(a_i[6]),
    .X(net13));
 sky130_fd_sc_hd__clkbuf_1 input14 (.A(a_i[7]),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_1 input15 (.A(a_i[8]),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_1 input16 (.A(a_i[9]),
    .X(net16));
 sky130_fd_sc_hd__buf_1 input17 (.A(b_i[0]),
    .X(net17));
 sky130_fd_sc_hd__clkbuf_1 input18 (.A(b_i[10]),
    .X(net18));
 sky130_fd_sc_hd__clkbuf_1 input19 (.A(b_i[11]),
    .X(net19));
 sky130_fd_sc_hd__clkbuf_1 input20 (.A(b_i[12]),
    .X(net20));
 sky130_fd_sc_hd__clkbuf_1 input21 (.A(b_i[13]),
    .X(net21));
 sky130_fd_sc_hd__clkbuf_1 input22 (.A(b_i[14]),
    .X(net22));
 sky130_fd_sc_hd__clkbuf_1 input23 (.A(b_i[15]),
    .X(net23));
 sky130_fd_sc_hd__clkbuf_1 input24 (.A(b_i[1]),
    .X(net24));
 sky130_fd_sc_hd__clkbuf_1 input25 (.A(b_i[2]),
    .X(net25));
 sky130_fd_sc_hd__clkbuf_1 input26 (.A(b_i[3]),
    .X(net26));
 sky130_fd_sc_hd__clkbuf_1 input27 (.A(b_i[4]),
    .X(net27));
 sky130_fd_sc_hd__clkbuf_1 input28 (.A(b_i[5]),
    .X(net28));
 sky130_fd_sc_hd__clkbuf_1 input29 (.A(b_i[6]),
    .X(net29));
 sky130_fd_sc_hd__clkbuf_1 input30 (.A(b_i[7]),
    .X(net30));
 sky130_fd_sc_hd__clkbuf_1 input31 (.A(b_i[8]),
    .X(net31));
 sky130_fd_sc_hd__clkbuf_1 input32 (.A(b_i[9]),
    .X(net32));
 sky130_fd_sc_hd__buf_2 output33 (.A(net33),
    .X(carry_o));
 sky130_fd_sc_hd__buf_2 output34 (.A(net34),
    .X(sum_o[0]));
 sky130_fd_sc_hd__buf_2 output35 (.A(net35),
    .X(sum_o[10]));
 sky130_fd_sc_hd__buf_2 output36 (.A(net36),
    .X(sum_o[11]));
 sky130_fd_sc_hd__buf_2 output37 (.A(net37),
    .X(sum_o[12]));
 sky130_fd_sc_hd__buf_2 output38 (.A(net38),
    .X(sum_o[13]));
 sky130_fd_sc_hd__buf_2 output39 (.A(net39),
    .X(sum_o[14]));
 sky130_fd_sc_hd__buf_2 output40 (.A(net40),
    .X(sum_o[15]));
 sky130_fd_sc_hd__buf_2 output41 (.A(net41),
    .X(sum_o[1]));
 sky130_fd_sc_hd__buf_2 output42 (.A(net42),
    .X(sum_o[2]));
 sky130_fd_sc_hd__buf_2 output43 (.A(net43),
    .X(sum_o[3]));
 sky130_fd_sc_hd__buf_2 output44 (.A(net44),
    .X(sum_o[4]));
 sky130_fd_sc_hd__buf_2 output45 (.A(net45),
    .X(sum_o[5]));
 sky130_fd_sc_hd__buf_2 output46 (.A(net46),
    .X(sum_o[6]));
 sky130_fd_sc_hd__buf_2 output47 (.A(net47),
    .X(sum_o[7]));
 sky130_fd_sc_hd__buf_2 output48 (.A(net48),
    .X(sum_o[8]));
 sky130_fd_sc_hd__buf_2 output49 (.A(net49),
    .X(sum_o[9]));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload0 (.A(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_input1_A (.DIODE(a_i[0]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input2_A (.DIODE(a_i[10]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input3_A (.DIODE(a_i[11]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input4_A (.DIODE(a_i[12]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input5_A (.DIODE(a_i[13]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input6_A (.DIODE(a_i[14]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input7_A (.DIODE(a_i[15]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input8_A (.DIODE(a_i[1]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input9_A (.DIODE(a_i[2]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input10_A (.DIODE(a_i[3]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input11_A (.DIODE(a_i[4]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input12_A (.DIODE(a_i[5]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input13_A (.DIODE(a_i[6]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input14_A (.DIODE(a_i[7]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input15_A (.DIODE(a_i[8]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input16_A (.DIODE(a_i[9]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input17_A (.DIODE(b_i[0]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input18_A (.DIODE(b_i[10]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input19_A (.DIODE(b_i[11]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input20_A (.DIODE(b_i[12]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input21_A (.DIODE(b_i[13]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input22_A (.DIODE(b_i[14]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input23_A (.DIODE(b_i[15]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input24_A (.DIODE(b_i[1]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input25_A (.DIODE(b_i[2]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input26_A (.DIODE(b_i[3]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input27_A (.DIODE(b_i[4]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input28_A (.DIODE(b_i[5]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input29_A (.DIODE(b_i[6]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input30_A (.DIODE(b_i[7]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input31_A (.DIODE(b_i[8]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input32_A (.DIODE(b_i[9]));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_0_clk_A (.DIODE(clk));
 sky130_ef_sc_hd__decap_12 FILLER_0_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_34 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_55 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_63 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_70 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_79 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_90 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_8 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_16 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_38 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_55 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_64 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_84 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_22 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_40 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_61 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_78 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_92 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_8 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_20 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_104 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_41 ();
 sky130_fd_sc_hd__decap_8 FILLER_4_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_72 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_91 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_25 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_54 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_84 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_96 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_10 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_22 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_53 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_65 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_73 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_101 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_10 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_14 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_38 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_50 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_73 ();
 sky130_fd_sc_hd__decap_8 FILLER_7_92 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_100 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_24 ();
 sky130_ef_sc_hd__decap_12 FILLER_8_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_8_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_8_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_8_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_83 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_8 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_16 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_35 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_55 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_57 ();
 sky130_fd_sc_hd__decap_6 FILLER_9_80 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_86 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_103 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_7 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_17 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_25 ();
 sky130_ef_sc_hd__decap_12 FILLER_10_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_10_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_10_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_10_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_10_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_10_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_97 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_101 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_7 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_17 ();
 sky130_ef_sc_hd__decap_12 FILLER_11_34 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_46 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_11_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_11_69 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_81 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_93 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_100 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_6 ();
 sky130_fd_sc_hd__decap_8 FILLER_12_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_12_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_12_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_12_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_13_7 ();
 sky130_ef_sc_hd__decap_12 FILLER_13_19 ();
 sky130_ef_sc_hd__decap_12 FILLER_13_31 ();
 sky130_ef_sc_hd__decap_12 FILLER_13_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_55 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_61 ();
 sky130_fd_sc_hd__decap_6 FILLER_13_83 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_92 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_105 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_24 ();
 sky130_ef_sc_hd__decap_12 FILLER_14_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_14_41 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_79 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_14_85 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_97 ();
 sky130_ef_sc_hd__decap_12 FILLER_15_17 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_45 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_61 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_72 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_76 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_80 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_88 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_26 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_33 ();
 sky130_ef_sc_hd__decap_12 FILLER_16_50 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_62 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_90 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_25 ();
 sky130_ef_sc_hd__decap_12 FILLER_17_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_49 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_62 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_69 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_76 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_83 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_90 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_94 ();
endmodule

//: version "2.0-b6"
//: property encoding = "utf-8"
//: property locale = "de"
//: property prefix = "_GG"
//: property title = "flipflop.v"
//: require "tty"
//: require "coke"

`timescale 1ns/1ns

//: /netlistBegin main
module main;    //: root_module
reg w6;    //: /sn:0 {0}(336,226)(336,171){1}
//: {2}(338,169)(471,169){3}
//: {4}(475,169)(630,169)(630,229){5}
//: {6}(473,171)(473,226){7}
//: {8}(334,169)(178,169){9}
supply0 w4;    //: /sn:0 {0}(661,215)(661,212)(640,212)(640,229){1}
supply0 w3;    //: /sn:0 {0}(499,211)(499,207)(483,207)(483,226){1}
supply0 w0;    //: /sn:0 {0}(346,226)(346,200)(362,200)(362,210){1}
wire w7;    //: /sn:0 {0}(494,247)(504,247){1}
wire w16;    //: /sn:0 {0}(435,235)(446,235)(446,242)(462,242){1}
wire w19;    //: /sn:0 {0}(555,270)(564,270)(564,247)(574,247){1}
wire w15;    //: /sn:0 {0}(458,122)(458,139)(380,139)(380,235){1}
//: {2}(382,237)(414,237){3}
//: {4}(378,237)(357,237){5}
//: {6}(380,239)(380,272)(534,272){7}
wire w1;    //: /sn:0 {0}(357,247)(367,247)(367,277)(312,277)(312,242)(325,242){1}
wire [2:0] w17;    //: /sn:0 {0}(#:448,116)(448,91){1}
wire w12;    //: /sn:0 {0}(595,245)(619,245){1}
wire w11;    //: /sn:0 {0}(438,122)(438,152)(677,152)(677,188){1}
//: {2}(675,190)(564,190)(564,242)(574,242){3}
//: {4}(677,192)(677,240)(651,240){5}
wire w2;    //: /sn:0 {0}(175,344)(339,344){1}
//: {2}(343,344)(476,344){3}
//: {4}(480,344)(635,344)(635,261){5}
//: {6}(478,342)(478,258){7}
//: {8}(341,342)(341,258){9}
wire w13;    //: /sn:0 {0}(651,250)(661,250){1}
wire w5;    //: /sn:0 {0}(494,237)(518,237){1}
//: {2}(520,235)(520,194){3}
//: {4}(520,190)(520,133)(448,133)(448,122){5}
//: {6}(518,192)(404,192)(404,232)(414,232){7}
//: {8}(520,239)(520,267)(534,267){9}
//: enddecls

  //: GROUND g8 (w3) @(499,217) /sn:0 /w:[ 0 ]
  _GGCLOCK_P100_0_50 g4 (.Z(w2));   //: @(162,344) /sn:0 /w:[ 0 ] /omega:100 /phi:0 /duty:50
  //: GROUND g3 (w0) @(362,216) /sn:0 /w:[ 1 ]
  //: LED g13 (w17) @(448,84) /sn:0 /w:[ 1 ] /type:1
  _GGFF #(10, 10, 20) g2 (.Q(w11), ._Q(w13), .D(w12), .EN(w4), .CLR(w6), .CK(w2));   //: @(635,245) /sn:0 /w:[ 5 0 1 1 5 5 ] /mi:0
  _GGFF #(10, 10, 20) g1 (.Q(w5), ._Q(w7), .D(w16), .EN(w3), .CLR(w6), .CK(w2));   //: @(478,242) /sn:0 /w:[ 0 0 1 1 7 7 ] /mi:0
  //: joint g16 (w5) @(520, 192) /w:[ -1 4 6 3 ]
  //: joint g11 (w2) @(341, 344) /w:[ 2 8 1 -1 ]
  _GGAND2 #(6) g19 (.I0(w5), .I1(w15), .Z(w19));   //: @(545,270) /sn:0 /w:[ 9 7 0 ] /eb:0
  //: joint g6 (w6) @(336, 169) /w:[ 2 -1 8 1 ]
  //: GROUND g9 (w4) @(661,221) /sn:0 /w:[ 0 ]
  //: joint g7 (w6) @(473, 169) /w:[ 4 -1 3 6 ]
  //: joint g20 (w5) @(520, 237) /w:[ -1 2 1 8 ]
  _GGXOR2 #(8) g15 (.I0(w5), .I1(w15), .Z(w16));   //: @(425,235) /sn:0 /w:[ 7 3 0 ] /eb:0
  //: comment g39 @(20,12) /sn:0
  //: /line:"<a href=\"../index.v\">[ZURÜCK]</a>"
  //: /end
  //: joint g17 (w15) @(380, 237) /w:[ 2 1 4 6 ]
  assign w17 = {w11, w5, w15}; //: CONCAT g14  @(448,117) /sn:0 /R:1 /w:[ 0 0 5 0 ] /dr:0 /tp:0 /drp:1
  //: SWITCH g5 (w6) @(161,169) /sn:0 /w:[ 9 ] /st:1
  //: joint g21 (w11) @(677, 190) /w:[ -1 1 2 4 ]
  _GGFF #(10, 10, 20) g0 (.Q(w15), ._Q(w1), .D(w1), .EN(w0), .CLR(w6), .CK(w2));   //: @(341,242) /sn:0 /w:[ 5 0 1 0 0 9 ] /mi:0
  _GGXOR2 #(8) g18 (.I0(w11), .I1(w19), .Z(w12));   //: @(585,245) /sn:0 /w:[ 3 1 0 ] /eb:0
  //: joint g12 (w2) @(478, 344) /w:[ 4 6 3 -1 ]

endmodule
//: /netlistEnd


`timescale 1ns/1ns


//: /builtinBegin
module _GGXOR2 #(.Diz(1)) (I0, I1,  Z);
   output  Z;
   input   I0, I1;

     assign #Diz Z = ( I0 ^ I1 );
   
endmodule // xor

//: /builtinEnd


//: /builtinBegin
module _GGFF #(.Dsetup(1), .Dhold(1), .Dck_q(1)) (Q, _Q, D, EN, CLR, CK);
  input CK,EN,CLR;
  input  D;
  output  Q,_Q;
  reg 	  Qreg;
 
  specify
    $setup(D,posedge CK, Dsetup);
    $hold(posedge CK,D, Dhold);
  endspecify

  assign #Dck_q Q = Qreg;
  assign #Dck_q _Q = ~Qreg;

  always @(posedge CK or negedge CLR)
    if (CLR === 1'b0)
      Qreg = 1'b0;
    else if (CK === 1'b1 && EN === 1'b0)
      Qreg = D;

endmodule
//: /builtinEnd


//: /builtinBegin
module _GGCLOCK_P100_0_50 (Z);
   output Z;
   reg 	  Z =  1'b0;

   initial #50
     forever
       begin
	  Z =  1'b1;
	  #50;
	  Z =  1'b0;
	  #50;
       end
   
endmodule // clock
//: /builtinEnd


//: /builtinBegin
module _GGAND2 #(.Diz(1)) (I0, I1,  Z);
   output  Z;
   input   I0, I1;
   reg  Z;

   assign #Diz Z = ( I0 & I1 );
   
endmodule // and
//: /builtinEnd


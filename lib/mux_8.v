module mux_8 (sel, src0, src1, z);
  
  input sel;
  input[7:0] src0;
  input[7:0] src1;
  output reg [7:0] z;
  

  mux mux7(sel, src0[7], src1[7], z[7]);
  mux mux6(sel, src0[6], src1[6], z[6]);
  mux mux5(sel, src0[5], src1[5], z[5]);
  mux mux4(sel, src0[4], src1[4], z[4]);
  mux mux3(sel, src0[3], src1[3], z[3]);
  mux mux2(sel, src0[2], src1[2], z[2]);
  mux mux1(sel, src0[1], src1[1], z[1]);
  mux mux0(sel, src0[0], src1[0], z[0]);

   
endmodule
module mux_8 (sel, src0, src1, out);
  
  input sel;
  input[7:0] src0;
  input[7:0] src1;
  output[7:0] out;
  

  mux mux7(sel, src0[7], src1[7], out[7]);
  mux mux6(sel, src0[6], src1[6], out[6]);
  mux mux5(sel, src0[5], src1[5], out[5]);
  mux mux4(sel, src0[4], src1[4], out[4]);
  mux mux3(sel, src0[3], src1[3], out[3]);
  mux mux2(sel, src0[2], src1[2], out[2]);
  mux mux1(sel, src0[1], src1[1], out[1]);
  mux mux0(sel, src0[0], src1[0], out[0]);

   
endmodule
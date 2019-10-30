module mux_4 (sel, src0, src1, out);
  
  input sel;
  input[3:0] src0;
  input[3:0] src1;
  output [3:0] out;
  

  mux mux3(sel, src0[3], src1[3], out[3]);
  mux mux2(sel, src0[2], src1[2], out[2]);
  mux mux1(sel, src0[1], src1[1], out[1]);
  mux mux0(sel, src0[0], src1[0], out[0]);

   
endmodule
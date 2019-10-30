module mux_1to32 (sel, src0, src1, out);
  
  input sel;
  input[31:0] src0;
  input[31:0] src1;
  output [31:0] out;
  

  mux_8 mux1(sel, src0[7:0], src1[7:0], out[7:0]);
  mux_8 mux2(sel, src0[15:8], src1[15:8], out[15:8]);
  mux_8 mux3(sel, src0[23:16], src1[23:16], out[23:16]);
  mux_8 mux4(sel, src0[31:24], src1[31:24], out[31:24]);

   
endmodule
module mux_4 (sel, src0, src1, z);
  
  input sel;
  input[3:0] src0;
  input[3:0] src1;
  output reg [3:0] z;
  

  mux mux3(sel, src0[3], src1[3], z[3]);
  mux mux2(sel, src0[2], src1[2], z[2]);
  mux mux1(sel, src0[1], src1[1], z[1]);
  mux mux0(sel, src0[0], src1[0], z[0]);

   
endmodule
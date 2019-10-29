module mux (sel, src0, src1, z);
  
  input sel;
  input src0;
  input src1;
  output reg z;
  

  always @(sel or src0 or src1)
      begin
        if (sel == 1'b0) z <= src0;
        else z <= src1;
      end
   
endmodule
/*
    op code translation

    4'b0000 add_32 
    4'b0001 sub_32
    4'b0010 and_gate_32
    4'b0011 xor_gate_32
    4'b0100 or_gate_32
    4'b0101 sll 
    4'b0110 srl
    4'b0111 slt_32
    4'b1000 sltu_32

*/
module sub_32(a, b, i_carry, o_result, o_carry, overflow);

  input[31:0]  a, b;
  input  i_carry;

  output[31:0] o_result;
  output o_carry;
  output overflow;

  wire[31:0] tmp;
  
  not_gate_32(b, tmp);
  add_32(a, tmp, i_carry, o_result, o_carry, overflow);

endmodule
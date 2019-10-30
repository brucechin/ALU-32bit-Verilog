module sub_32(a, b, i_carry, o_result, o_carry, overflow);

  input[31:0]  a, b;
  input  i_carry;

  output[31:0] o_result;
  output o_carry;
  output overflow;

  wire[31:0] tmp;
  wire[31:0] tmp2;
  
  not_gate_32 not_tmp(b, tmp);

  wire o_carry_dummy, overflow_dummy;
  add_32 add_1(tmp, 1, 1'b0, tmp2, o_carry_dummy, overflow_dummy);

  add_32 add_tmp(a, tmp2, i_carry, o_result, o_carry, overflow);

endmodule
module full_adder (a, b, i_carry, o_sum, o_carry);
  input  a;
  input  b;
  input  i_carry;
  output o_sum;
  output o_carry;
 
  wire tmp1, tmp2, tmp3;
  xor_gate xor_1(a, b, tmp1);
  xor_gate xor_2(tmp1, i_carry, o_sum);
  and_gate and_1(tmp1, i_carry, tmp2);
  and_gate and_2(a, b, tmp3);
  or_gate or_1(tmp2, tmp3, o_carry);
  
  
  //assign o_carry = (((a ^ b) & i_carry) | (a & b));
 
   
endmodule
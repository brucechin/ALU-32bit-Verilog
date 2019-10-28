module full_adder (a, b, i_carry, o_sum, o_carry);
  input  a;
  input  b;
  input  i_carry;
  output o_sum;
  output o_carry;
 
  assign o_sum   = a ^ b ^ i_carry;
  assign o_carry = (a ^ b) & i_carry) | (a & b);
 
   
endmodule
module slt_32(result, a, b);

input[31:0] a, b;

output[31:0] result;

wire[31:0]  tmp;

wire overflow = 1'b0;
wire i_carry = 1'b0;
wire o_carry = 1'b1;

sub_32 sub_tmp(a, b, i_carry, tmp, o_carry, overflow);
xor_gate xor_tmp(tmp[31], overflow, result[0]);

endmodule
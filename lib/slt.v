module slt_32(result, a, b);

input[31:0] a, b;

output[31:0] result;

wire[31:0]  tmp;

wire overflow = 1'b0;
wire i_carry = 1'b0;
wire o_carry = 1'b1;

sub_32(a, b, i_carry, tmp, o_carry, overflow);
assign result[0] = xor_gate(tmp[31], overflow);

endmodule
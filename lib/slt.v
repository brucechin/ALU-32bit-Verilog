module slt_32(result, a, b);

input[31:0] a, b;

output wire [31:0] result;

wire[31:0]  tmp;

//due to result is 32-bit, we need to fill the left 31 bits using 0;
mux_8 fill0(1'b1, 8'h00, 8'h00, result[31:24]);
mux_8 fill1(1'b1, 8'h00, 8'h00, result[23:16]);
mux_8 fill2(1'b1, 8'h00, 8'h00, result[15:8]);
mux_4 fill3(1'b1, 4'h0, 4'h0, result[7:4]);
mux fill4(1'b1, 1'b0, 1'b0, result[3]);
mux fill5(1'b1, 1'b0, 1'b0, result[2]);
mux fill6(1'b1, 1'b0, 1'b0, result[1]);

wire overflow;
wire i_carry = 1'b0;
wire o_carry;

sub_32 sub_tmp(a, b, i_carry, tmp, o_carry, overflow);
xor_gate xor_tmp(tmp[31], overflow, result[0]);

endmodule
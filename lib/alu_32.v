module alu_32(input [31:0] a, b,
              input [3:0] op,
              output carryout,
              output overflow,
              output zero,
              output [31:0] result);

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

wire [31:0] add_tmp;
wire [31:0] sub_tmp;
wire [31:0] and_tmp;
wire [31:0] xor_tmp;
wire [31:0] or_tmp;
wire [31:0] sll_tmp;
wire [31:0] srl_tmp;
wire [31:0] slt_tmp;
wire [31:0] sltu_tmp;

wire carryout_add, carryout_sub;
wire overflow_add, overflow_sub;

add_32 add(.a(a), .b(b), .i_carry(1'b0), .o_result(add_tmp), .o_carry(carryout_add), .overflow(overflow_add));
sub_32 sub(.a(a), .b(b), .i_carry(1'b0), .o_result(sub_tmp), .o_carry(carryout_sub), .overflow(overflow_sub));
and_gate_32 and(.x(a), .y(b), .z(and_tmp));
xor_gate_32 xor(.x(a), .y(b), .z(xor_tmp));
or_gate_32 or(.x(a), .y(b), .z(or_tmp));
sll sll_(.a(a), .movement(b), .out(sll_tmp));
srl srl_(.a(a), .movement(b), .out(srl_tmp));
slt_32 slt(.result(slt_tmp), .a(a), .b(b));
sltu_32 sltu(.result(sltu_tmp), .a(a), .b(b));



wire op_res1, op_res2, op_res3, op_res4, op_res5, op_res6, op_res7, op_res8, op_res9;
op_check(.my_op(op), .target_op(4'b0000), op_res1);
mux_1to32 mux01(op_res1, result, add_tmp, result);
mux mux02(op_res1, carryout, carryout_add, carryout);
mux mux03(op_res1, overflow, overflow_add, overflow);

op_check(.my_op(op), target_op(4'b0001), op_res2);
mux_1to32 mux11(op_res2, result, sub_tmp, result);
mux mux12(op_res2, carryout, carryout_sub, carryout);
mux mux13(op_res2, overflow, overflow_sub, overflow);

op_check(.my_op(op), target_op(4'b0010), op_res3);
mux_1to32 mux21(op_res3, result, and_tmp, result);

op_check(.my_op(op), target_op(4'b0011), op_res4);
mux_1to32 mux31(op_res4, result, xor_tmp, result);

op_check(.my_op(op), target_op(4'b0100), op_res5);
mux_1to32 mux41(op_res5, result, or_tmp, result);

op_check(.my_op(op), target_op(4'b0101), op_res6);
mux_1to32 mux51(op_res6, result, sll_tmp, result);

op_check(.my_op(op), target_op(4'b0110), op_res7);
mux_1to32 mux61(op_res7, result, srl_tmp, result);

op_check(.my_op(op), target_op(4'b0111), op_res8);
mux_1to32 mux71(op_res8, result, slt_tmp, result);

op_check(.my_op(op), target_op(4'b1000), op_res9);
mux_1to32 mux81(op_res9, result, sltu_tmp, result);

is_zero_32to1(result, zero);

endmodule
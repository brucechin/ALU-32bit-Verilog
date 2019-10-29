module op_check(my_op, target_op, result)

input [4:0] my_op, target_op;
output result;

//set result default value is true
mux res(1'b1, 1'b0, 1'b1, result);

wire comp0, comp1, comp2, comp3, comp4;

xor_gate(my_op[0], target_op[0], comp0);
xor_gate(my_op[1], target_op[1], comp1);
xor_gate(my_op[2], target_op[2], comp2);
xor_gate(my_op[3], target_op[3], comp3);
xor_gate(my_op[4], target_op[4], comp4);


mux mux1(comp0, result, 1'b0, result);
mux mux2(comp1, result, 1'b0, result);
mux mux3(comp2, result, 1'b0, result);
mux mux4(comp3, result, 1'b0, result);
mux mux5(comp4, result, 1'b0, result);

//now result value is true if my_op == target_op

endmodule
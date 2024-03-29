module is_zero_32to1 (sel, out);

input [31:0] sel;
output out;
wire tmp;
//set tmp default value true;
mux default_(1'b1, 1'b0, 1'b1, tmp);

mux mux0(sel[0], tmp, 1'b0, tmp);
mux mux1(sel[1], tmp, 1'b0, tmp);
mux mux2(sel[2], tmp, 1'b0, tmp);
mux mux3(sel[3], tmp, 1'b0, tmp);
mux mux4(sel[4], tmp, 1'b0, tmp);
mux mux5(sel[5], tmp, 1'b0, tmp);
mux mux6(sel[6], tmp, 1'b0, tmp);
mux mux7(sel[7], tmp, 1'b0, tmp);
mux mux8(sel[8], tmp, 1'b0, tmp);
mux mux9(sel[9], tmp, 1'b0, tmp);
mux mux10(sel[10], tmp, 1'b0, tmp);
mux mux11(sel[11], tmp, 1'b0, tmp);
mux mux12(sel[12], tmp, 1'b0, tmp);
mux mux13(sel[13], tmp, 1'b0, tmp);
mux mux14(sel[14], tmp, 1'b0, tmp);
mux mux15(sel[15], tmp, 1'b0, tmp);
mux mux16(sel[16], tmp, 1'b0, tmp);
mux mux17(sel[17], tmp, 1'b0, tmp);
mux mux18(sel[18], tmp, 1'b0, tmp);
mux mux19(sel[19], tmp, 1'b0, tmp);
mux mux20(sel[20], tmp, 1'b0, tmp);
mux mux21(sel[21], tmp, 1'b0, tmp);
mux mux22(sel[22], tmp, 1'b0, tmp);
mux mux23(sel[23], tmp, 1'b0, tmp);
mux mux24(sel[24], tmp, 1'b0, tmp);
mux mux25(sel[25], tmp, 1'b0, tmp);
mux mux26(sel[26], tmp, 1'b0, tmp);
mux mux27(sel[27], tmp, 1'b0, tmp);
mux mux28(sel[28], tmp, 1'b0, tmp);
mux mux29(sel[29], tmp, 1'b0, tmp);
mux mux30(sel[30], tmp, 1'b0, tmp);
mux mux31(sel[31], tmp, 1'b0, tmp);

mux default1(1'b1, 1'b0, tmp, out);

endmodule
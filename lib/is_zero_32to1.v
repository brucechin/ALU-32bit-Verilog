module is_zero_32to1 (sel, z)

input [31:0] sel;
output reg z;

//set z default value true;
mux default(1'b1, 1'b0, 1'b1, z);

mux mux0(sel[0], z, 1'b0, z);
mux mux0(sel[1], z, 1'b0, z);
mux mux0(sel[2], z, 1'b0, z);
mux mux0(sel[3], z, 1'b0, z);
mux mux0(sel[4], z, 1'b0, z);
mux mux0(sel[5], z, 1'b0, z);
mux mux0(sel[6], z, 1'b0, z);
mux mux0(sel[7], z, 1'b0, z);
mux mux0(sel[8], z, 1'b0, z);
mux mux0(sel[9], z, 1'b0, z);
mux mux0(sel[10], z, 1'b0, z);
mux mux0(sel[11], z, 1'b0, z);
mux mux0(sel[12], z, 1'b0, z);
mux mux0(sel[13], z, 1'b0, z);
mux mux0(sel[14], z, 1'b0, z);
mux mux0(sel[15], z, 1'b0, z);
mux mux0(sel[16], z, 1'b0, z);
mux mux0(sel[17], z, 1'b0, z);
mux mux0(sel[18], z, 1'b0, z);
mux mux0(sel[19], z, 1'b0, z);
mux mux0(sel[20], z, 1'b0, z);
mux mux0(sel[21], z, 1'b0, z);
mux mux0(sel[22], z, 1'b0, z);
mux mux0(sel[23], z, 1'b0, z);
mux mux0(sel[24], z, 1'b0, z);
mux mux0(sel[25], z, 1'b0, z);
mux mux0(sel[26], z, 1'b0, z);
mux mux0(sel[27], z, 1'b0, z);
mux mux0(sel[28], z, 1'b0, z);
mux mux0(sel[29], z, 1'b0, z);
mux mux0(sel[30], z, 1'b0, z);
mux mux0(sel[31], z, 1'b0, z);

endmodule
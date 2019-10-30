module sll(a, movement, out);


input [31:0] a;
input [31:0] movement;
wire [31:0] tmp1, tmp2, tmp3, tmp4;
output wire [31:0] out;


mux_8 mux00 (movement[0], a[31:24], a[30:23], tmp1[31:24]);
mux_8 mux01 (movement[0], a[23:16], a[22:15], tmp1[23:16]);
mux_8 mux02 (movement[0], a[15:8], a[14:7], tmp1[15:8]);
mux_4 mux03 (movement[0], a[7:4], a[6:3], tmp1[7:4]);
mux mux04 (movement[0], a[3], a[2], tmp1[3]);
mux mux05 (movement[0], a[2], a[1], tmp1[2]);
mux mux06 (movement[0], a[1], a[0], tmp1[1]);
mux mux07 (movement[0], a[0], 1'b0, tmp1[0]);

mux_8 mux10 (movement[1], tmp1[31:24], tmp1[29:22], tmp2[31:24]);
mux_8 mux11 (movement[1], tmp1[23:16], tmp1[21:14], tmp2[23:16]);
mux_8 mux12 (movement[1], tmp1[15:8], tmp1[13:6], tmp2[15:8]);
mux_4 mux13 (movement[1], tmp1[7:4], tmp1[5:2], tmp2[7:4]);
mux mux14 (movement[1], tmp1[3], tmp1[1], tmp2[3]);
mux mux15 (movement[1], tmp1[2], tmp1[0], tmp2[2]);
mux mux16 (movement[1], tmp1[1], 1'b0, tmp2[1]);
mux mux17 (movement[1], tmp1[0], 1'b0, tmp2[0]);

mux_8 mux20 (movement[2], tmp2[31:24], tmp2[27:20], tmp3[31:24]);
mux_8 mux21 (movement[2], tmp2[23:16], tmp2[19:12], tmp3[23:16]);
mux_8 mux22 (movement[2], tmp2[15:8], tmp2[11:4], tmp3[15:8]);
mux_4 mux23 (movement[2], tmp2[7:4], tmp2[3:0], tmp3[7:4]);
mux_4 mux24 (movement[2], tmp2[3:0], 4'b0000, tmp3[3:0]);

mux_8 mux30 (movement[3], tmp3[31:24], tmp3[23:16], tmp4[31:24]);
mux_8 mux31 (movement[3], tmp3[23:16], tmp3[15:8], tmp4[23:16]);
mux_8 mux32 (movement[3], tmp3[15:8], tmp3[7:0], tmp4[15:8]);
mux_8 mux33 (movement[3], tmp3[7:0], 8'h00, tmp4[7:0]);


mux_8 mux40 (movement[4], tmp4[31:24], tmp4[15:8], out[31:24]);
mux_8 mux41 (movement[4], tmp4[23:16], tmp4[7:0], out[23:16]);
mux_8 mux42 (movement[4], tmp4[15:8], 8'h00, out[15:8]);
mux_8 mux43 (movement[4], tmp4[7:0], 8'h00, out[7:0]);

endmodule
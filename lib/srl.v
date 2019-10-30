module srl(a, movement, out);

input [31:0] a;
input [31:0] movement;

wire [31:0] tmp1, tmp2, tmp3, tmp4;
output wire [31:0] out;



//move one bit right according to movement lowest bit
mux_8 mux00 (movement[0], a[7:0], a[8:1], tmp1[7:0]);
mux_8 mux01 (movement[0], a[15:8], a[16:9], tmp1[15:8]);
mux_8 mux02 (movement[0], a[23:16], a[24:17], tmp1[23:16]);
mux_4 mux03 (movement[0], a[27:24], a[28:25], tmp1[27:24]);
mux mux04 (movement[0], a[28], a[29], tmp1[28]);
mux mux05 (movement[0], a[29], a[30], tmp1[29]);
mux mux06 (movement[0], a[30], a[31], tmp1[30]);
mux mux07 (movement[0], a[31], 1'b0, tmp1[31]);

//move two bits right if movement[3] == 1
mux_8 mux10 (movement[1], tmp1[7:0], tmp1[9:2], tmp2[7:0]);
mux_8 mux11 (movement[1], tmp1[15:8], tmp1[17:10], tmp2[15:8]);
mux_8 mux12 (movement[1], tmp1[23:16], tmp1[25:18], tmp2[23:16]);
mux_4 mux13 (movement[1], tmp1[27:24], tmp1[29:26], tmp2[27:24]);
mux mux14 (movement[1], tmp1[28], tmp1[30], tmp2[28]);
mux mux15 (movement[1], tmp1[29], tmp1[31], tmp2[29]);
mux mux16 (movement[1], tmp1[30], 1'b0, tmp2[30]);
mux mux17 (movement[1], tmp1[31], 1'b0, tmp2[31]);

//move 4 bits right if movement[2] == 1
mux_8 mux20 (movement[2], tmp2[7:0], tmp2[11:4], tmp3[7:0]);
mux_8 mux21 (movement[2], tmp2[15:8], tmp2[19:12], tmp3[15:8]);
mux_8 mux22 (movement[2], tmp2[23:16], tmp2[27:20], tmp3[23:16]);
mux_4 mux23 (movement[2], tmp2[27:24], tmp2[31:28], tmp3[27:24]);
mux_4 mux24 (movement[2], tmp2[31:28], 4'b0000, tmp3[31:28]);

//move 8 bits right if movement[1] == 1
mux_8 mux30 (movement[3], tmp3[7:0], tmp3[15:8], tmp4[7:0]);
mux_8 mux31 (movement[3], tmp3[15:8], tmp3[23:16], tmp4[15:8]);
mux_8 mux32 (movement[3], tmp3[23:16], tmp3[31:24], tmp4[23:16]);
mux_8 mux33 (movement[3], tmp3[31:24], 8'h00, tmp4[31:24]);
//move 16 bits right if movement[0] == 1
mux_8 mux40 (movement[4], tmp4[7:0], tmp4[23:16], out[7:0]);
mux_8 mux41 (movement[4], tmp4[15:8], tmp4[31:24], out[15:8]);
mux_8 mux42 (movement[4], tmp4[23:16], 8'h00, out[23:16]);
mux_8 mux43 (movement[4], tmp4[31:24], 8'h00, out[31:24]);

endmodule

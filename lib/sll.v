module sll(a, movement, out);


input [31:0] a;
input [31:0] movement;

output [31:0] out;

mux mux0(1'b1, 0, a, out);

mux_8 mux00 (movement[0], out[31:24], out[30:23], out[31:24]);
mux_8 mux01 (movement[0], out[23:16], out[22:15], out[30:16]);
mux_8 mux02 (movement[0], out[15:8], out[14:7], out[15:8]);
mux_4 mux03 (movement[0], out[7:4], out[6:3], out[7:4]);
mux mux04 (movement[0], out[3], out[2], out[3]);
mux mux05 (movement[0], out[2], out[1], out[2]);
mux mux06 (movement[0], out[1], out[0], out[1]);

mux_8 mux10 (movement[1], out[31:24], out[29:22], out[31:24]);
mux_8 mux11 (movement[1], out[23:16], out[21:14], out[30:16]);
mux_8 mux12 (movement[1], out[15:8], out[13:6], out[15:8]);
mux_4 mux13 (movement[1], out[7:4], out[5:2], out[7:4]);
mux mux14 (movement[1], out[3], out[1], out[3]);
mux mux15 (movement[1], out[2], out[0], out[2]);

mux_8 mux20 (movement[2], out[31:24], out[27:20], out[31:24]);
mux_8 mux21 (movement[2], out[23:16], out[19:12], out[30:16]);
mux_8 mux22 (movement[2], out[15:8], out[11:4], out[15:8]);
mux_4 mux23 (movement[2], out[7:4], out[3:0], out[7:4]);

mux_8 mux30 (movement[3], out[31:24], out[23:16], out[31:24]);
mux_8 mux31 (movement[3], out[23:16], out[15:8], out[30:16]);
mux_8 mux32 (movement[3], out[15:8], out[7:0], out[15:8]);

mux_8 mux40 (movement[3], out[31:24], out[15:8], out[31:24]);
mux_8 mux41 (movement[3], out[23:16], out[7:0], out[30:16]);


endmodule
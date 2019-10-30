module srl(a, movement, out);

input [31:0] a;
input [31:0] movement;

output [31:0] out;


mux_1to32 mux0(1'b1, 32'h00000000, a, out);



//move one bit left according to movement lowest bit
mux_8 mux00 (movement[0], out[7:0], out[8:1], out[7:0]);
mux_8 mux01 (movement[0], out[15:8], out[16:9], out[15:8]);
mux_8 mux02 (movement[0], out[23:16], out[24:17], out[23:16]);
mux_4 mux03 (movement[0], out[27:24], out[28:25], out[27:24]);
mux mux04 (movement[0], out[28], out[29], out[28]);
mux mux05 (movement[0], out[29], out[30], out[29]);
mux mux06 (movement[0], out[30], out[31], out[30]);

//move two bits left if movement[3] == 1
mux_8 mux10 (movement[1], out[7:0], out[9:2], out[7:0]);
mux_8 mux11 (movement[1], out[15:8], out[17:10], out[15:8]);
mux_8 mux12 (movement[1], out[23:16], out[25:18], out[23:16]);
mux_4 mux13 (movement[1], out[27:24], out[29:26], out[27:24]);
mux mux14 (movement[1], out[28], out[30], out[28]);
mux mux15 (movement[1], out[29], out[31], out[29]);

//move 4 bits left if movement[2] == 1
mux_8 mux20 (movement[2], out[7:0], out[11:4], out[7:0]);
mux_8 mux21 (movement[2], out[15:8], out[19:12], out[15:8]);
mux_8 mux22 (movement[2], out[23:16], out[27:20], out[23:16]);
mux_4 mux23 (movement[2], out[27:24], out[31:28], out[27:24]);

//move 8 bits left if movement[1] == 1
mux_8 mux30 (movement[3], out[7:0], out[15:8], out[7:0]);
mux_8 mux31 (movement[3], out[15:8], out[23:16], out[15:8]);
mux_8 mux32 (movement[3], out[23:16], out[31:24], out[23:16]);

//move 16 bits left if movement[0] == 1
mux_8 mux40 (movement[4], out[7:0], out[23:16], out[7:0]);
mux_8 mux41 (movement[4], out[15:8], out[31:24], out[15:8]);

endmodule

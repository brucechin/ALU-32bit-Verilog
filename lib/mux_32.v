module mux_32 (sel, src0, src1, out);
  
  input [31:0] sel;
  input [31:0] src0;
  input [31:0] src1;
  output reg [31:0] out;
  

  always @(sel or src0 or src1)
      begin
        if (sel == 1'b0) out <= src0;
        else out <= src1;
      end
   
endmodule

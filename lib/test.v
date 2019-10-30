module test;

    reg [31:0] a = 0;
    reg [31:0] b = 0;
    wire [31:0] res;
    reg [3:0] op = 4'b0000; 
    wire zero; 
    wire o_carry;
    wire overflow;

    //add_32 test_add (.a(a), .b(b), .i_carry(i_carry), .o_sum(sum), .o_carry(o_carry), .overflow(overflow));
    alu_32 alu(.a(a), .b(b), .op(op), .carryout(o_carry), .overflow(overflow), .zero(zero), .result(res));
    initial
    begin
        $monitor(a, b, res, op, o_carry, overflow, zero);
        #100
        a = 32'h7ffffff1; // this is add overflow test
	b = 1312342;
	op = 4'b0000;

        #100
        a = 1334212; // this is sub overflow test
	b = 32'h80000011;
	op = 4'b0001;

        #100
        a = 121233;
	b = 4;
	op = 4'b0010;

	#100
        a = 1241233;
	b = 541122;
	op = 4'b0011;

	#100
        a = 12124213;
	b = 54112122;
	op = 4'b0100;

	#100
        a = 12141223;
	b = 5;
	op = 4'b0101;

	#100
        a = 12143223;
	b = 3;
	op = 4'b0110;

	#100
        a = 1224123;
	b = 5424232;
	op = 4'b0111;

	#100
        a = 12143123;
	b = 5;
	op = 4'b1000;

    end
  

endmodule
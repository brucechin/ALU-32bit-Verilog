module test;

    reg [31:0] a = 1;
    reg [31:0] b = 0;
    wire [31:0] sum;
    reg i_carry = 0; 
    wire o_carry;
    wire overflow;

    add_32 test_add (.a(a), .b(b), .i_carry(i_carry), .o_sum(sum), .o_carry(o_carry), .overflow(overflow));

    initial
    begin
        $monitor(a, b, sum, i_carry, o_carry, overflow);
        
        #200
        assign a = 1123;
	assign b = 1312;
	assign i_carry = 1;

        #200
        assign a = 123;
	assign b = 421;
	assign i_carry = 1;

	#200
        assign a = 123;
	assign b = 432;
	assign i_carry = 1;

    end
  

endmodule
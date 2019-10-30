module bit_shift_test;

    reg [31:0] a = 1;
    reg [31:0] b = 2;
    wire [31:0] res;

    //add_32 test_add (.a(a), .b(b), .i_carry(i_carry), .o_sum(sum), .o_carry(o_carry), .overflow(overflow));
    sll sll_test(a, b, res);
    initial
    begin
        $monitor(a, b, res);
        #100
        assign a = 3; // this is add overflow test
	    assign b = 7;
        $display(a, b, res);
        #100
        assign a = 9; // this is sub overflow test
	    assign b = 12;
        $display(a, b, res);
        #100
        assign a = 15;
	    assign b = 14;
        $display(a, b, res);
        #100
        assign a = 73;
	    assign b = 9;
        $display(a, b, res);

        #100
        assign a = 723;
	    assign b = 7;
        $display(a, b, res);

        #100
        assign a = 5173;
	    assign b = 11;
        $display(a, b, res);
        
    end
  

endmodule
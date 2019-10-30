module bit_srl_test;

    reg [31:0] a = 11242412;
    reg [31:0] b = 2;
    wire [31:0] res;

    //add_32 test_add (.a(a), .b(b), .i_carry(i_carry), .o_sum(sum), .o_carry(o_carry), .overflow(overflow));
    srl srl_test(a, b, res);
    initial
    begin
        $monitor(a, b, res);
        #100
        a = 32143513; // this is add overflow test
	    b = 7;
        $display(a, b, res);
        #100
        a = 93152513; // this is sub overflow test
	    b = 5;
        $display(a, b, res);
        #100
        a = 1513242;
	    b = 5;
        $display(a, b, res);
        #100
        a = 73412343;
	    b = 9;
        $display(a, b, res);

        #100
        a = 72345233;
	    b = 7;
        $display(a, b, res);

        #100
        a = 5112473;
	    b = 7;
        $display(a, b, res);
        
    end
  

endmodule
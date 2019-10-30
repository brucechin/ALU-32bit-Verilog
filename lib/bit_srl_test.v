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
        assign a = 32143513; // this is add overflow test
	    assign b = 7;
        $display(a, b, res);
        #100
        assign a = 93152513; // this is sub overflow test
	    assign b = 5;
        $display(a, b, res);
        #100
        assign a = 1513242;
	    assign b = 5;
        $display(a, b, res);
        #100
        assign a = 73412343;
	    assign b = 9;
        $display(a, b, res);

        #100
        assign a = 72345233;
	    assign b = 7;
        $display(a, b, res);

        #100
        assign a = 5112473;
	    assign b = 7;
        $display(a, b, res);
        
    end
  

endmodule
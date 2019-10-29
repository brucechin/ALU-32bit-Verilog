module alu_32(input [31:0] a, b,
              input [3:0] op,
              output carryout,
              output overflow,
              output zero,
              output [31:0] result);

/*
    op code translation

    4'b0000 add_32 
    4'b0001 sub_32
    4'b0010 and_gate_32
    4'b0011 xor_gate_32
    4'b0100 or_gate_32
    4'b0101 sll 
    4'b0110 srl
    4'b0111 slt_32
    4'b1000 sltu_32

*/

always @(posedge op | posedge a | posedge b)

begin
    case (op)
        4'b0000 : 
        begin
            add_32(.a(a), .b(b), .i_carry(1'b0), .o_sum(result), .o_carry(carryout), .overflow(overflow));
        end

        4'b0001 : 
        begin
            sub_32(.a(a), .b(b), .i_carry(1'b0), .o_sum(result), .o_carry(carryout), .overflow(overflow));
        end

        4'b0010 :
        begin
            and_gate_32(.x(a), .y(b), .z(result));
            mux and1(1'b0, 1'b0, 1'b0, carryout);
            mux and2(1'b0, 1'b0, 1'b0, overflow);
            mux and3(1'b0, 1'b0, 1'b0, zero);
        end

        4'b0011 :
        begin
            xor_gate_32(.x(a), .y(b), .z(result));
            mux xor1(1'b0, 1'b0, 1'b0, carryout);
            mux xor2(1'b0, 1'b0, 1'b0, overflow);
            mux xor3(1'b0, 1'b0, 1'b0, zero);
        end

        4'b0100 :
        begin
            or_gate_32(.x(a), .y(b), .z(result));
            mux or1(1'b0, 1'b0, 1'b0, carryout);
            mux or2(1'b0, 1'b0, 1'b0, overflow);
            mux or3(1'b0, 1'b0, 1'b0, zero);
        end

        4'b0101 :
        begin
            sll(.a(a), .movement(b), .out(result));
            mux sll1(1'b0, 1'b0, 1'b0, carryout);
            mux sll2(1'b0, 1'b0, 1'b0, overflow);
            mux sll3(1'b0, 1'b0, 1'b0, zero);
        end

        4'b0110 :
        begin
            srl(.a(a), .movement(b), .out(result));
            mux srl1(1'b0, 1'b0, 1'b0, carryout);
            mux srl2(1'b0, 1'b0, 1'b0, overflow);
            mux srl3(1'b0, 1'b0, 1'b0, zero);
        end

        4'b0111 :
        begin
            slt_32(.result(result), .a(a), .b(b));
            mux slt1(1'b0, 1'b0, 1'b0, carryout);
            mux slt2(1'b0, 1'b0, 1'b0, overflow);
            mux slt3(1'b0, 1'b0, 1'b0, zero);
        end

        4'b1000 :
        begin
            sltu_32(.result(result), .a(a), .b(b));
            mux sltu1(1'b0, 1'b0, 1'b0, carryout);
            mux sltu2(1'b0, 1'b0, 1'b0, overflow);
            mux sltu3(1'b0, 1'b0, 1'b0, zero);
        end

        default:  
            begin
            $display("should not happen");
            $finish;
            end
    endcase    

end


endmodule
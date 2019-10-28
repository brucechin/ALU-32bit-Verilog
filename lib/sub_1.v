module full_subtractor(a ,b ,c ,diff ,borrow);
input a ;
input b ;
input c ;

output diff ;
output borrow ;

assign diff = a ^ b ^ c;
assign borrow = ((~a) & b) | (b & c) | (c & (~a));

endmodule
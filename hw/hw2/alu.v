`include "four_bit_adder.v"

module alu(A, B, Op, S);

   input [3:0]  A;
   input [3:0]  B;
   output [3:0] S;
   input [2:0]  Op;

   wire [3:0] adder_sum;
   wire adder_cout;
   four_bit_adder the_adder(A, (Op == 2) ? B: ~B, (Op == 2) ? 1'b0 : 1'b1, adder_sum, adder_cout);


   assign S =  (Op == 0) ?  A&B :
               (Op == 1) ?  A|B :
               (Op == 2) ?  adder_sum :
               (Op == 3) ?  0 :
               (Op == 4) ?  A & ~B :
               (Op == 5) ?  A | ~B :
               (Op == 6) ?  adder_sum :
               {3'b000,adder_sum[3]};

      

endmodule

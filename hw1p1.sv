/*hw1p1: A sequential circuit with a D flip-flop and a full adder
  Inputs: reset, clk, x, and y
  Output: S (sum output)* Q flows back into the adder after storing the carry (state).

*/

module hw1p1 (x, y, clk, reset, S); 

    input x, y, clk, reset;
    output S;

    reg Q;
    wire C;
    wire S;


    assign S = x ^ y ^ Q;
    assign C = ( x&y) | ( x& Q) | ( y & Q);
    
    always @( posedge clk or posedge reset)  begin

      if (reset)
       Q <= 1'b0;

     else
       Q <= C;
   end

endmodule

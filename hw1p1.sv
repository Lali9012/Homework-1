module hw1p1 (x, y, clk, reset, S); 
    input logic x,
    input logic y,
    input logic  clk,
    input logic  reset,
    output logic s,

);

    logic Q;
    logic c;

    assign S = x ^ y ^ Q;
    assign C = ( x&y) | ( x& Q) | ( y & Q);
    
    always_ff @( posedge clk or posedge reset)  begin

    if (reset)
      Q <= 0;

    else
      Q <= C;
   end

endmodule

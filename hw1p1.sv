module hw1p1 (
    input x,
    input y,
    input clk,
    input reset,
    output s,

);

reg Q;
wire c;

assign S = x ^ y ^ Q;
assign C = ( x&y) | ( x& Q) | ( y & Q);

always @( posedge clk, posedge reset) 
 begin

 if (reset)
    Q <= 1'b0;

 else
    Q <= C;
end

endmodule

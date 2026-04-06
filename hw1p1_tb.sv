// Testbench for Homework 1 problem 1

module hw1p1_tb();

  reg x, y;
  reg clk, reset;
  wire S;

  hw1p1 dut ( x, y, clk, reset, S);

  intial begin
    clk = 0;

    forever #5 clk = ~ clk;
  end

  intial begin
    x = 0; y = 0; reset = 1;
    #10 reset = 0;
    
    #10 x =0; y = 0;
    #10 x =0; y = 1;
    #10 x =1; y = 0;
    #10 x =1; y = 1;

    #10 x =0; y = 1;
    #10 x =1; y = 1;
    #10 x =0; y = 0;

    # 50 $stop;
  end
endmodule
    
    


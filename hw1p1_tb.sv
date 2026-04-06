// Testbench for Homework 1 problem 1

module hw1p1_tb();

  logic x, y;
  logic clk, reset;
  logic S;

  hw1p1 dut (.*);
  parameter ClOCK_PERIOD = 100;
  

  initial begin
    clk = 0;
    forever #(CLOCK_PERIOD/2) clk = ~ clk;
  end

  initial begin

    reset <= 1; x<=0; y <=0; @(posedge clk);
    reset <= 0; x<=0; y <=0; @(posedge clk);
    x <=0; y<=1; @(posedge clk);
    x <=1; y<=0; @(posedge clk);
    x <=1; y<=1; @(posedge clk);

    x <=0; y<=0; @(posedge clk);
    x <=1; y<=1; @(posedge clk);
    x <=0; y<=1; @(posedge clk);
    x <=1; y<=0; @(posedge clk);

    reset <=1; @(posedge clk);
    reset <= 0; x<=1; y <=1; @(posedge clk);
    x <=0; y <=0; @(posedge clk);

    $stop;
    
  end
endmodule
    
    


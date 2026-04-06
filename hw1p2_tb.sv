module hw1p2_tb();
    logic out;
    logic clk, reset, in;

	hw1p2 dut (.*); 
	parameter CLOCK_PERIOD=100;
	
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	initial begin
		reset <= 1;@(posedge clk);
		reset <= 0 ; in = 0;@(posedge clk);
		in = 1;@(posedge clk);
		in = 0;@(posedge clk);
		in = 1;@(posedge clk);
		in = 1;@(posedge clk);
		in = 0;@(posedge clk);
		in = 1;@(posedge clk);
		in = 0;@(posedge clk);
		in = 0;@(posedge clk);
		in = 0;@(posedge clk);
		in = 1;@(posedge clk);
		in = 1;@(posedge clk);
		@(posedge clk);
		$stop;
	end

	 
endmodule 
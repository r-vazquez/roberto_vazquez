`timescale 1ns / 1ps
module tb_d_ff ();

	logic clk, rst_n, d, q;
	
	d_ff UUT (	.clk(clk), 
			.rst_n(rst_n), 
			.d(d), 
			.q(q));

	initial begin
		clk = 0;
		rst_n = 1;
		d = 1;
		#10 rst_n = 0;
		#5 clk = ~clk;
		#5 rst_n = 1;
		#10 clk = ~clk;
		#15 clk = ~clk;
		#15 clk = ~clk;
		#5 rst_n = 0;
		#10 clk = ~clk;
		#10;		
	end 
endmodule

// Coder:           Daniela Najar Medrano, Roberto Vazquez Vega
// Date:            13 November 2021
// Name:            d_ff.sv
// Description:     D Flip Flop with reset controlled by macro.

//1) Create a macro that defines a D Flip Flop, that allows to change 
//between posedge and negedge of the reset

module d_ff (	input clk, rst_n, d,
		output logic q);

//`define pos_rst

`ifdef pos_rst 
	always_ff @(posedge clk, posedge rst_n) begin 
 		if (rst_n) 
`else 
	always_ff @(posedge clk, negedge rst_n) begin
		if (!rst_n)
`endif
			q <= 0; 
		else 
			q <= d; 
	end
 
endmodule

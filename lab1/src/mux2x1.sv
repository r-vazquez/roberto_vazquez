module mux2x1 (d0, d1, sel, mux_out);

	parameter DW = 		2; //DATA WIDTH

	input 			sel; // SELECTOR
	input logic [DW-1:0] 	d0; //FIRST INPUT
	input logic [DW-1:0] 	d1; //SECOND INPUT
	output logic [DW-1:0] 	mux_out; //MUX OUTPUT

	assign mux_out = (sel) ? d1 : d0;

endmodule

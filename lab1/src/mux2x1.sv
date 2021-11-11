// Coder:           Roberto Vazquez Vega
// Date:            10 November 2021
// Name:            mux2x1.sv
// Description:     2 to 1 multiplexer. 

module mux2x1 #(
	parameter 		DW = 2 	  //DATA WIDTH
	)( 
	input 			sel, 	  // SELECTOR
	input logic [DW-1:0] 	d0, 	  //FIRST INPUT
	input logic [DW-1:0] 	d1, 	  //SECOND INPUT
	output logic [DW-1:0] 	mux_out); //MUX OUTPUT

	assign mux_out = (sel) ? d1 : d0;

endmodule

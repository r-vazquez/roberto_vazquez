// Coder:           Roberto Vazquez Vega
// Date:            10 November 2021
// Name:            param_data_mux.sv
// Description:     (2**SEL) to 1 parametric type multiplexer. 

module param_data_mux #(
	parameter	 	I_NUM,		  	//NUMBER OF INPUTS
	parameter 		W_SEL = $clog2(I_NUM),  //SELECTOR WIDTH
	parameter type 		I_TP,		  	//INPUT DATA TYPE
	parameter type 		O_TP			//OUTPUT DATA TYPE
	)( 
	input [W_SEL-1:0] 	sel,	//SELECTOR
	input I_TP 		data,	//INPUT WITH PARAMETRIC DATA TYPE
	output O_TP 		mux_out	//MUX OUTPUT
	);

	assign mux_out = data[sel];

endmodule

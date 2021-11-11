// Coder:           Roberto Vazquez Vega
// Date:            10 November 2021
// Name:            TB_mux2x1.sv
// Description:     Testbench for 2 to 1 multiplexer. 

`timescale 1ns / 1ps
module TB_mux2x1 ();
        parameter 	DW = 4;  //DATA WIDTH

        logic 		sel;     // SELECTOR
        logic [DW-1:0] 	d0;      //FIRST INPUT
        logic [DW-1:0] 	d1;      //SECOND INPUT
        logic [DW-1:0] 	mux_out; //MUX OUTPUT 

	//MUX INSTANTATION
	mux2x1 #(.DW(DW)) UUT (.d0(d0), .d1(d1), .sel(sel), .mux_out(mux_out));

	initial begin
	#10	d0 = 'b0110; //INITIALIZING INPUTS
		d1 = 'b1001;
		sel = 'b0;   //0

	#10	sel = 'b1;   //1
	
	#10	sel = 'x;    //LOGIC VALUE IS UNKNOWN
	
	#10	sel = 'z;    //HIGH IMPEDANCE STATE

	#10;
	end
endmodule

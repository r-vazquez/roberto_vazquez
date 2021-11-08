`timescale 1ns / 100ps
module TB_mux2x1 (d0, d1, sel, mux_out);

        parameter DW = 		4; //DATA WIDTH

        input logic 			sel; // SELECTOR
        input logic [DW-1:0] 		d0; //FIRST INPUT
        input logic [DW-1:0] 		d1; //SECOND INPUT
        output logic [DW-1:0] 		mux_out; //MUX OUTPUT

        
	mux2x1 #(.DW(DW)) UUT (.d0(d0), .d1(d1), .sel(sel), .mux_out(mux_out));

	initial begin
	
		#10
		d0 = 'b0110;
		d1 = 'b1001;
		sel = 'b0;

		#10
		sel = 'b1;
		
		#10
		sel = 'x;
	
		#10
		sel = 'z;

		#10;
	
	end

endmodule

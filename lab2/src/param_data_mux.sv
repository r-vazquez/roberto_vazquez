module param_data_mux (sel, data_in, mux_output);
parameter DW = 2;
parameter SEL = 3;
parameter type DT = logic [DW-1:0];

input DT sel;
input /*data_in*/ [DW] data_in;
output DT mux_output;
	//integer i;

always_comb begin
	integer i;
	//mux_output = 'bX;

	for(i=0;i<2**SEL;i++) begin
		//mux_output[i] = data_in[DW*i]&sel[i];
   
        assign mux_output = sel[i] ? data_in[i] : 'z;
   	end 
   end

// assign mux_output = sel[i] ? data_in[i] : 'z;

endmodule

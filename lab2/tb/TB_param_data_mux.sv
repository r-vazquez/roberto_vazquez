`timescale 1ns / 100ps
module TB_param_data_mux ();
parameter DW1 = 2;
parameter DW2 = 4;
parameter SEL1 = 1;
parameter SEL2 = 2;
//parameter type T1 = typedef enum logic [1:0];
//parameter type T2 = typedef struct [1:0];

//typedef enum logic [1:0] TE;
//typedef struct [1:0] TS;logic [DW1-1:0] sele;
//input struct [DW2-1:0] sels ;

logic [1:0] data_ine;  
logic [1:0] sele;
logic mux_outpute;
//output T2 mux_outputs;



param_data_mux DUT1 (.data_in(data_ine), .mux_output(mux_outpute), .sel(sele));

enum logic [1:0] {sel1 = 2'b00, sel2 = 2'b11, sel3 = 2'bxx, sel4 = 2'bzz} valores_sel;


initial begin
	#10
	data_ine = 'b01;
	mux_outpute = sel1; 
	
	#10

	mux_outpute = sel2;
	
	#10
	mux_outpute = sel3;

	#10
	mux_outpute = sel4;

	#10;
	end



/*param_data_mux DUT2(.data_in(data_in2), .mux_output(mux_output2), .sel(sel2);
typedef struct {
logic [3:0] data_in;
logic [1:0] sel;
enum {valores_sel} mux_output;
} mux_struct;*/

endmodule

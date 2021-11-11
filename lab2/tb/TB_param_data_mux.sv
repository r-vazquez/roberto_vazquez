// Coder:           Roberto Vazquez Vega
// Date:            10 November 2021
// Name:            TB_param_data_mux.sv
// Description:     Testbench for (2**SEL) to 1 parametric type multiplexer . 

`timescale 1ns / 1ps
module TB_param_data_mux ();
	
	//FIRST INSTANE PARAMETERS
	parameter 	I_NUM1 = 2;		  //INPUT NUMBER
	parameter 	W_SEL1 = $clog2(I_NUM1);  //SELECTOR WIDTH 

	//SECOND INSTANCE PARAMETERS
	parameter 	I_NUM2 = 4;		  //INPUT NUMBER 
	parameter 	W_SEL2 = $clog2(I_NUM2);  //SELECTOR WIDTH 
	
	//DATA TYPES
	typedef enum logic [1:0] {EXECUTE, FETCH, DECODE, WB} T_ENUM;	//FOR FIRST INSTANCE
	typedef struct packed{
			logic [7:0]  addr;
			logic [3:0]  data;
			enum {RD,WR}   op;
			} T_STRUCT;	//FOR SECOND INSTANCE

	//FIRST INSTANCE SIGNALS
	T_ENUM [I_NUM1-1:0] 	data1;	   //INPUT
	logic [W_SEL1-1:0] 	sel1;	   //SELECTOR
	T_ENUM 			mux_out1;  //OUTPUT

	//SECOND INSTANCE SIGNALS
	T_STRUCT [I_NUM2-1:0] 	data2;	   //INPUT
	logic [W_SEL2-1:0] 	sel2;	   //SELECTOR
	T_STRUCT 		mux_out2;  //OUTPUT

	//FIRST INSTATIATION
	param_data_mux #(
		.I_NUM	(I_NUM1), 
		.I_TP	(T_ENUM [I_NUM1-1:0]),
		.O_TP	(T_ENUM)
		)UUT1( 
		.sel	(sel1),
		.data	(data1),
		.mux_out(mux_out1)
		);

	//SECOND INSTANTIATION
	param_data_mux #(
		.I_NUM	(I_NUM2), 
		.I_TP	(T_STRUCT [I_NUM2-1:0]),
		.O_TP	(T_STRUCT)
		)UUT2( 
		.sel	(sel2),
		.data	(data2),
		.mux_out(mux_out2)
		);

	initial begin
		integer idx;	//INDEX
		#1
		for(idx = 0; idx < I_NUM2; idx++) begin
			if (idx < 2) begin
				//INITIALIZING VALUES FOR FIRST INSTANCE (FIRST TIME)
				data1[0] = EXECUTE;  //FIRST ENUM INPUT
				data1[1] = FETCH;    //SECOND ENUM INPUT
				
				sel1 = idx;	     //FIRST SELECTOR
			end
			else begin
				//INITIALIZING VALUES FOR FIRST INSTANCE (SECOND TIME)
				data1[0] = DECODE;  //FIRST ENUM INPUT
				data1[1] = WB;	    //SECOND ENUM INPUT
				
				sel1 = idx - 2;	    //FIRST SELECTOR
			end
			
			//INITIALIZING VALUES FOR SECOND INSTANCE
			data2[0].addr = 'b00000011;  //FIRST STRUCT INPUT
			data2[0].data = 'b0001;
			data2[0].op = RD;
			data2[1].addr = 'b00001100;  //SECOND STRUCT INPUT
			data2[1].data = 'b0010;
			data2[1].op = WR;
			data2[2].addr = 'b00110000;  //THIRD STRUCT INPUT
			data2[2].data = 'b0100;
			data2[2].op = RD;
			data2[3].addr = 'b11000000;  //FOURTH STRUCT INPUT
			data2[3].data = 'b1000;
			data2[3].op = WR;
			
			sel2 = idx;		     //SECOND SELECTOR
		#1;
		end
	end
endmodule

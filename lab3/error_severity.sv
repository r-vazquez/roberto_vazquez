// Coder:           Daniela Najar Medrano, Roberto Vazquez Vega
// Date:            13 November 2021
// Name:            error_severity.sv
// Description:     Error severity controlled by macro.

//2) Create a macro that allows to control the severity of error reporting 
//among $warning(), $info(), $error() or $fatal()

module error_severity;

//`define warning
//`define info
//`define error
//`define fatal

`ifdef warning
	$warning("This is a warning message");
`elsif info
	$info("This is an info message");
`elsif error
	$error("This is an error message");
`elsif fatal
	$fatal("This is a fatal message");
`endif

endmodule

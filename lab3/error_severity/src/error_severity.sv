// Coder:           Daniela Najar Medrano, Roberto Vazquez Vega
// Date:            13 November 2021
// Name:            error_severity.sv
// Description:     Error severity controlled by macro.

//2) Create a macro that allows to control the severity of error reporting 
//among $warning(), $info(), $error() or $fatal()

module error_severity();

`include "error_severity_macro.def"

`ERROR_SEVERITY("ERROR");

endmodule

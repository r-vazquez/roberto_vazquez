if [file exists work] {vdel -all}
vlib work
vlog +define+info -f files.f
onbreak {resume}
set NoQuitOnFinish 1
vsim -voptargs=+acc work.error_severity
run 130ms

onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /TB_param_data_mux/data1
add wave -noupdate /TB_param_data_mux/sel1
add wave -noupdate /TB_param_data_mux/mux_out1
add wave -noupdate /TB_param_data_mux/data2
add wave -noupdate /TB_param_data_mux/sel2
add wave -noupdate /TB_param_data_mux/mux_out2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {4725 ps}

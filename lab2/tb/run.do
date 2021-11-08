onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /TB_param_data_mux/data_ine
add wave -noupdate /TB_param_data_mux/sele
add wave -noupdate /TB_param_data_mux/mux_outpute
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6600 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 215
configure wave -valuecolwidth 53
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
WaveRestoreZoom {0 ps} {47600 ps}

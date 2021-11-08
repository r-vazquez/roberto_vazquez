onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /TB_mux2x1/d0
add wave -noupdate /TB_mux2x1/d1
add wave -noupdate /TB_mux2x1/sel
add wave -noupdate /TB_mux2x1/mux_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {26000 ps} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {0 ps} {62200 ps}

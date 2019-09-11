read_qor_suggestions all_enabled_suggestions.rqs

synth_design -top bd_wrapper
report_qor_suggestions -file post_synth_suggestions.rpt -force
opt_design 
report_qor_suggestions -file post_opt_suggestions.rpt -force
place_design
report_qor_suggestions -file post_place_suggestions.rpt -force
route_design
report_qor_suggestions -file post_route_suggestions.rpt -force
set_property ENABLED 1 [get_qor_suggestions]
write_qor_suggestions -force all_enabled_suggestions.rqs

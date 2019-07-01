file copy -force ../vc707_bist.sdk/bist_app/Debug/bist_app.elf .
file copy -force ../vc707_bist.sdk/hello_usb2/Debug/hello_usb2.elf .
file copy -force ../vc707_bist.sdk/lwip_echo_server/Debug/lwip_echo_server.elf .
file copy -force ../vc707_bist.sdk/iic_log/Debug/iic_log.elf .
open_project C:/vc707_bist/vc707_bist.xpr
open_run impl_1
remove_files -quiet {*.elf}
add_files -norecurse {C:/vc707_bist/vc707_bist.sdk/bist_app/Debug/bist_app.elf}
set_property SCOPED_TO_REF system [get_files -all -of_objects [get_fileset sources_1] {C:/vc707_bist/vc707_bist.sdk/bist_app/Debug/bist_app.elf}]
set_property SCOPED_TO_CELLS { microblaze_0 } [get_files -all -of_objects [get_fileset sources_1] {C:/vc707_bist/vc707_bist.sdk/bist_app/Debug/bist_app.elf}]
write_bitstream -force C:/vc707_bist/ready_for_download/bist_app.bit
remove_files {C:/vc707_bist/vc707_bist.sdk/bist_app/Debug/bist_app.elf}
add_files -norecurse {C:/vc707_bist/vc707_bist.sdk/hello_usb2/Debug/hello_usb2.elf}
set_property SCOPED_TO_REF system [get_files -all -of_objects [get_fileset sources_1] {C:/vc707_bist/vc707_bist.sdk/hello_usb2/Debug/hello_usb2.elf}]
set_property SCOPED_TO_CELLS { microblaze_0 } [get_files -all -of_objects [get_fileset sources_1] {C:/vc707_bist/vc707_bist.sdk/hello_usb2/Debug/hello_usb2.elf}]
write_bitstream -force C:/vc707_bist/ready_for_download/hello_usb2.bit
remove_files {C:/vc707_bist/vc707_bist.sdk/hello_usb2/Debug/hello_usb2.elf}
add_files -norecurse {C:/vc707_bist/vc707_bist.sdk/lwip_echo_server/Debug/lwip_echo_server.elf}
set_property SCOPED_TO_REF system [get_files -all -of_objects [get_fileset sources_1] {C:/vc707_bist/vc707_bist.sdk/lwip_echo_server/Debug/lwip_echo_server.elf}]
set_property SCOPED_TO_CELLS { microblaze_0 } [get_files -all -of_objects [get_fileset sources_1] {C:/vc707_bist/vc707_bist.sdk/lwip_echo_server/Debug/lwip_echo_server.elf}]
write_bitstream -force C:/vc707_bist/ready_for_download/lwip_echo_server.bit
remove_files {C:/vc707_bist/vc707_bist.sdk/lwip_echo_server/Debug/lwip_echo_server.elf}
add_files -norecurse {C:/vc707_bist/vc707_bist.sdk/iic_log/Debug/iic_log.elf}
set_property SCOPED_TO_REF system [get_files -all -of_objects [get_fileset sources_1] {C:/vc707_bist/vc707_bist.sdk/iic_log/Debug/iic_log.elf}]
set_property SCOPED_TO_CELLS { microblaze_0 } [get_files -all -of_objects [get_fileset sources_1] {C:/vc707_bist/vc707_bist.sdk/iic_log/Debug/iic_log.elf}]
write_bitstream -force C:/vc707_bist/ready_for_download/iic_log.bit
remove_files {C:/vc707_bist/vc707_bist.sdk/iic_log/Debug/iic_log.elf}
set_property needs_refresh false [get_runs impl_1]
close_project

proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7vx485tffg1761-2
  set_property board_part xilinx.com:vc707:part0:1.2 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Users/umram-bt/Documents/HomeComing/vc707_bist.cache/wt [current_project]
  set_property parent.project_path C:/Users/umram-bt/Documents/HomeComing/vc707_bist.xpr [current_project]
  set_property ip_repo_paths C:/Users/umram-bt/Documents/HomeComing/gtxe2_top_v1_00_a [current_project]
  set_property ip_cache_permissions disable [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet C:/Users/umram-bt/Documents/HomeComing/vc707_bist.runs/synth_2/system_wrapper.dcp
  add_files C:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/system.bmm
  set_property SCOPED_TO_REF system [get_files -all C:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/system.bmm]
  add_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_microblaze_0_0/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF system [get_files -all c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_microblaze_0_0/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS microblaze_0 [get_files -all c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_microblaze_0_0/data/mb_bootloop_le.elf]
  read_xdc -prop_thru_buffers -ref system_axi_emc_0_0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_emc_0_0/system_axi_emc_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_emc_0_0/system_axi_emc_0_0_board.xdc]
  read_xdc -ref system_axi_emc_0_0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_emc_0_0/system_axi_emc_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_emc_0_0/system_axi_emc_0_0.xdc]
  read_xdc -prop_thru_buffers -ref system_axi_gpio_0_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_board.xdc]
  read_xdc -ref system_axi_gpio_0_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xdc]
  read_xdc -prop_thru_buffers -ref system_axi_gpio_1_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_gpio_1_0/system_axi_gpio_1_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_gpio_1_0/system_axi_gpio_1_0_board.xdc]
  read_xdc -ref system_axi_gpio_1_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_gpio_1_0/system_axi_gpio_1_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_gpio_1_0/system_axi_gpio_1_0.xdc]
  read_xdc -prop_thru_buffers -ref system_axi_gpio_3_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_gpio_3_0/system_axi_gpio_3_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_gpio_3_0/system_axi_gpio_3_0_board.xdc]
  read_xdc -ref system_axi_gpio_3_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_gpio_3_0/system_axi_gpio_3_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_gpio_3_0/system_axi_gpio_3_0.xdc]
  read_xdc -prop_thru_buffers -ref system_axi_gpio_4_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_gpio_4_0/system_axi_gpio_4_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_gpio_4_0/system_axi_gpio_4_0_board.xdc]
  read_xdc -ref system_axi_gpio_4_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_gpio_4_0/system_axi_gpio_4_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_gpio_4_0/system_axi_gpio_4_0.xdc]
  read_xdc -prop_thru_buffers -ref system_axi_iic_0_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_iic_0_0/system_axi_iic_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_iic_0_0/system_axi_iic_0_0_board.xdc]
  read_xdc -ref system_axi_timer_0_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_timer_0_0/system_axi_timer_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_timer_0_0/system_axi_timer_0_0.xdc]
  read_xdc -prop_thru_buffers -ref system_axi_uart16550_0_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_uart16550_0_0/system_axi_uart16550_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_uart16550_0_0/system_axi_uart16550_0_0_board.xdc]
  read_xdc -ref system_axi_uart16550_0_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_uart16550_0_0/system_axi_uart16550_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_uart16550_0_0/system_axi_uart16550_0_0.xdc]
  read_xdc -ref system_axi_usb2_device_0_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_usb2_device_0_0/system_axi_usb2_device_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_usb2_device_0_0/system_axi_usb2_device_0_0.xdc]
  read_xdc -ref system_xadc_wiz_0_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0.xdc]
  read_xdc -ref system_microblaze_0_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_microblaze_0_0/system_microblaze_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_microblaze_0_0/system_microblaze_0_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_4bad_eth_buf_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_0/bd_4bad_eth_buf_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_0/bd_4bad_eth_buf_0_board.xdc]
  read_xdc -prop_thru_buffers -ref bd_4bad_eth_mac_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_4bad_eth_mac_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_4bad_eth_mac_0_board.xdc]
  read_xdc -ref bd_4bad_eth_mac_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_4bad_eth_mac_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_4bad_eth_mac_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_4bad_pcs_pma_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_2/bd_4bad_pcs_pma_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_2/bd_4bad_pcs_pma_0_board.xdc]
  read_xdc -ref bd_4bad_pcs_pma_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_2/synth/bd_4bad_pcs_pma_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_2/synth/bd_4bad_pcs_pma_0.xdc]
  read_xdc -ref system_mig_7series_0_0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/constraints/system_mig_7series_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/constraints/system_mig_7series_0_0.xdc]
  read_xdc -prop_thru_buffers -ref system_mig_7series_0_0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0_board.xdc]
  read_xdc -ref system_dlmb_v10_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_dlmb_v10_0/system_dlmb_v10_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_dlmb_v10_0/system_dlmb_v10_0.xdc]
  read_xdc -ref system_ilmb_v10_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_ilmb_v10_0/system_ilmb_v10_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_ilmb_v10_0/system_ilmb_v10_0.xdc]
  read_xdc -ref system_microblaze_0_axi_intc_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_microblaze_0_axi_intc_0/system_microblaze_0_axi_intc_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_microblaze_0_axi_intc_0/system_microblaze_0_axi_intc_0.xdc]
  read_xdc -ref system_mdm_1_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_mdm_1_0/system_mdm_1_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_mdm_1_0/system_mdm_1_0.xdc]
  read_xdc -prop_thru_buffers -ref system_rst_mig_7series_0_100M_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_rst_mig_7series_0_100M_0/system_rst_mig_7series_0_100M_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_rst_mig_7series_0_100M_0/system_rst_mig_7series_0_100M_0_board.xdc]
  read_xdc -ref system_rst_mig_7series_0_100M_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_rst_mig_7series_0_100M_0/system_rst_mig_7series_0_100M_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_rst_mig_7series_0_100M_0/system_rst_mig_7series_0_100M_0.xdc]
  read_xdc -ref system_axi_ethernet_0_dma_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_dma_0/system_axi_ethernet_0_dma_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_dma_0/system_axi_ethernet_0_dma_0.xdc]
  read_xdc -prop_thru_buffers -ref system_axi_ethernet_0_refclk_0 -cells inst c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_refclk_0/system_axi_ethernet_0_refclk_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_refclk_0/system_axi_ethernet_0_refclk_0_board.xdc]
  read_xdc -ref system_axi_ethernet_0_refclk_0 -cells inst c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_refclk_0/system_axi_ethernet_0_refclk_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_refclk_0/system_axi_ethernet_0_refclk_0.xdc]
  read_xdc -prop_thru_buffers -ref system_rst_mig_7series_0_200M_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_rst_mig_7series_0_200M_0/system_rst_mig_7series_0_200M_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_rst_mig_7series_0_200M_0/system_rst_mig_7series_0_200M_0_board.xdc]
  read_xdc -ref system_rst_mig_7series_0_200M_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_rst_mig_7series_0_200M_0/system_rst_mig_7series_0_200M_0.xdc
  set_property processing_order EARLY [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_rst_mig_7series_0_200M_0/system_rst_mig_7series_0_200M_0.xdc]
  read_xdc C:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/constrs_1/imports/vc707_bist/system.xdc
  read_xdc -ref system_axi_usb2_device_0_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_usb2_device_0_0/system_axi_usb2_device_0_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_usb2_device_0_0/system_axi_usb2_device_0_0_clocks.xdc]
  read_xdc -ref bd_4bad_eth_buf_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_0/synth/bd_4bad_eth_buf_0.xdc
  set_property processing_order LATE [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_0/synth/bd_4bad_eth_buf_0.xdc]
  read_xdc -ref bd_4bad_eth_mac_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_4bad_eth_mac_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_4bad_eth_mac_0_clocks.xdc]
  read_xdc -ref system_microblaze_0_axi_intc_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_microblaze_0_axi_intc_0/system_microblaze_0_axi_intc_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_microblaze_0_axi_intc_0/system_microblaze_0_axi_intc_0_clocks.xdc]
  read_xdc -ref system_axi_ethernet_0_dma_0 -cells U0 c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_dma_0/system_axi_ethernet_0_dma_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_dma_0/system_axi_ethernet_0_dma_0_clocks.xdc]
  read_xdc -ref system_auto_ds_0 -cells inst c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_auto_ds_0/system_auto_ds_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_auto_ds_0/system_auto_ds_0_clocks.xdc]
  read_xdc -ref system_auto_cc_0 -cells inst c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_auto_cc_0/system_auto_cc_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_auto_cc_0/system_auto_cc_0_clocks.xdc]
  read_xdc -ref system_auto_ds_1 -cells inst c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_auto_ds_1/system_auto_ds_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_auto_ds_1/system_auto_ds_1_clocks.xdc]
  read_xdc -ref system_auto_us_0 -cells inst c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_auto_us_0/system_auto_us_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_auto_us_0/system_auto_us_0_clocks.xdc]
  read_xdc -ref system_auto_us_1 -cells inst c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_auto_us_1/system_auto_us_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_auto_us_1/system_auto_us_1_clocks.xdc]
  read_xdc -ref system_auto_us_2 -cells inst c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_auto_us_2/system_auto_us_2_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_auto_us_2/system_auto_us_2_clocks.xdc]
  read_xdc -ref system_auto_us_3 -cells inst c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_auto_us_3/system_auto_us_3_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_auto_us_3/system_auto_us_3_clocks.xdc]
  read_xdc -ref system_auto_us_4 -cells inst c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_auto_us_4/system_auto_us_4_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/umram-bt/Documents/HomeComing/vc707_bist.srcs/sources_1/bd/system/ip/system_auto_us_4/system_auto_us_4_clocks.xdc]
  link_design -top system_wrapper -part xc7vx485tffg1761-2
  write_hwdef -file system_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force system_wrapper_opt.dcp
  catch { report_drc -file system_wrapper_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force system_wrapper_placed.dcp
  catch { report_io -file system_wrapper_io_placed.rpt }
  catch { report_utilization -file system_wrapper_utilization_placed.rpt -pb system_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file system_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force system_wrapper_routed.dcp
  catch { report_drc -file system_wrapper_drc_routed.rpt -pb system_wrapper_drc_routed.pb -rpx system_wrapper_drc_routed.rpx }
  catch { report_methodology -file system_wrapper_methodology_drc_routed.rpt -rpx system_wrapper_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file system_wrapper_timing_summary_routed.rpt -rpx system_wrapper_timing_summary_routed.rpx }
  catch { report_power -file system_wrapper_power_routed.rpt -pb system_wrapper_power_summary_routed.pb -rpx system_wrapper_power_routed.rpx }
  catch { report_route_status -file system_wrapper_route_status.rpt -pb system_wrapper_route_status.pb }
  catch { report_clock_utilization -file system_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force system_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force system_wrapper.mmi }
  catch { write_bmm -force system_wrapper_bd.bmm }
  write_bitstream -force -no_partial_bitfile system_wrapper.bit 
  catch { write_sysdef -hwdef system_wrapper.hwdef -bitfile system_wrapper.bit -meminfo system_wrapper.mmi -file system_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}


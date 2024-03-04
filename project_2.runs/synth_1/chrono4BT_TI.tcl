# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 3
set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
set_msg_config  -id {Common 17-180}  -string {{ERROR: [Common 17-180] Spawn failed: No error}}  -suppress 
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/wilahass35/Downloads/project_2/project_2.cache/wt [current_project]
set_property parent.project_path C:/Users/wilahass35/Downloads/project_2/project_2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo c:/Users/wilahass35/Downloads/project_2/project_2.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/wilahass35/Downloads/project_2/project_2.srcs/sources_1/new/TICK_1ms.vhd
  C:/Users/wilahass35/Downloads/project_2/project_2.srcs/sources_1/new/Cnt0toN_EN.vhd
  C:/Users/wilahass35/Downloads/project_2/project_2.srcs/sources_1/new/Chrono.vhd
  C:/Users/wilahass35/Downloads/project_2/project_2.srcs/sources_1/new/Cmpt0to3.vhd
  C:/Users/wilahass35/Downloads/project_2/project_2.srcs/sources_1/new/DFM.vhd
  C:/Users/wilahass35/Downloads/project_2/project_2.srcs/sources_1/new/Disp1Digit.vhd
  C:/Users/wilahass35/Downloads/project_2/project_2.srcs/sources_1/new/MUX4x4v1x4.vhd
  C:/Users/wilahass35/Downloads/project_2/project_2.srcs/sources_1/new/Disp1of4Digits.vhd
  C:/Users/wilahass35/Downloads/project_2/project_2.srcs/sources_1/new/Disp4D.vhd
  C:/Users/wilahass35/Downloads/project_2/project_2.srcs/sources_1/new/MUX2x16v4x4.vhd
  C:/Users/wilahass35/Downloads/project_2/project_2.srcs/sources_1/new/Pointeur.vhd
  C:/Users/wilahass35/Downloads/project_2/project_2.srcs/sources_1/new/gestionChrono_TI.vhd
  C:/Users/wilahass35/Downloads/project_2/project_2.srcs/sources_1/new/chrono4BT_TI.vhd
}
read_ip -quiet c:/Users/wilahass35/Downloads/project_2/project_2.srcs/sources_1/ip/dist_mem_gen_0_1/dist_mem_gen_0.xci
set_property used_in_implementation false [get_files -all c:/Users/wilahass35/Downloads/project_2/project_2.srcs/sources_1/ip/dist_mem_gen_0_1/dist_mem_gen_0_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/wilahass35/Downloads/project_2/project_2.srcs/constrs_1/new/contraintes_chrono4BT_TI.xdc
set_property used_in_implementation false [get_files C:/Users/wilahass35/Downloads/project_2/project_2.srcs/constrs_1/new/contraintes_chrono4BT_TI.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top chrono4BT_TI -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef chrono4BT_TI.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file chrono4BT_TI_utilization_synth.rpt -pb chrono4BT_TI_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]

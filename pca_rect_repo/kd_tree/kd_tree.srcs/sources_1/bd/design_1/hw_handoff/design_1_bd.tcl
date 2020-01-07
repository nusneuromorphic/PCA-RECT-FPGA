
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-1
   set_property BOARD_PART trenz.biz:te0720_1cf:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set address_out [ create_bd_port -dir O -from 11 -to 0 address_out ]
  set center_addr [ create_bd_port -dir I -from 13 -to 0 center_addr ]
  set clk [ create_bd_port -dir I -type clk clk ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {100000000} \
 ] $clk
  set ena [ create_bd_port -dir I ena ]
  set get_addr [ create_bd_port -dir O get_addr ]
  set is_full [ create_bd_port -dir I is_full ]
  set kd_ready_o [ create_bd_port -dir O kd_ready_o ]
  set valid_bin [ create_bd_port -dir O valid_bin ]
  set valid_desc [ create_bd_port -dir I valid_desc ]
  set valid_input [ create_bd_port -dir I valid_input ]
  set wr_ack [ create_bd_port -dir I wr_ack ]

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_0 ]
  set_property -dict [ list \
CONFIG.Byte_Size {9} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Fill_Remaining_Memory_Locations {true} \
CONFIG.Memory_Type {Single_Port_ROM} \
CONFIG.Port_A_Write_Rate {0} \
CONFIG.Read_Width_A {12} \
CONFIG.Read_Width_B {12} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
CONFIG.Remaining_Memory_Locations {123} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Write_Width_A {12} \
CONFIG.Write_Width_B {12} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: kd_tree_0, and set properties
  set kd_tree_0 [ create_bd_cell -type ip -vlnv user.org:user:kd_tree:1.0 kd_tree_0 ]
  set_property -dict [ list \
CONFIG.level {11} \
 ] $kd_tree_0

  # Create port connections
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins blk_mem_gen_0/douta] [get_bd_pins kd_tree_0/desc]
  connect_bd_net -net center_addr_1 [get_bd_ports center_addr] [get_bd_pins kd_tree_0/center_addr]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins kd_tree_0/clk]
  connect_bd_net -net ena_1 [get_bd_ports ena] [get_bd_pins blk_mem_gen_0/ena] [get_bd_pins kd_tree_0/ena]
  connect_bd_net -net is_full_1 [get_bd_ports is_full] [get_bd_pins kd_tree_0/is_full]
  connect_bd_net -net kd_tree_0_address_out [get_bd_ports address_out] [get_bd_pins kd_tree_0/address_out]
  connect_bd_net -net kd_tree_0_address_to_get [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins kd_tree_0/address_to_get]
  connect_bd_net -net kd_tree_0_get_addr [get_bd_ports get_addr] [get_bd_pins kd_tree_0/get_addr]
  connect_bd_net -net kd_tree_0_kd_ready_o [get_bd_ports kd_ready_o] [get_bd_pins kd_tree_0/kd_ready_o]
  connect_bd_net -net kd_tree_0_valid_bin [get_bd_ports valid_bin] [get_bd_pins kd_tree_0/valid_bin]
  connect_bd_net -net valid_desc_1 [get_bd_ports valid_desc] [get_bd_pins kd_tree_0/valid_desc]
  connect_bd_net -net valid_input_1 [get_bd_ports valid_input] [get_bd_pins kd_tree_0/valid_input]
  connect_bd_net -net wr_ack_1 [get_bd_ports wr_ack] [get_bd_pins kd_tree_0/wr_ack]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port is_full -pg 1 -y 230 -defaultsOSRD
preplace port get_addr -pg 1 -y 200 -defaultsOSRD
preplace port valid_desc -pg 1 -y 270 -defaultsOSRD
preplace port wr_ack -pg 1 -y 310 -defaultsOSRD
preplace port valid_bin -pg 1 -y 240 -defaultsOSRD
preplace port ena -pg 1 -y 120 -defaultsOSRD
preplace port kd_ready_o -pg 1 -y 280 -defaultsOSRD
preplace port clk -pg 1 -y 80 -defaultsOSRD
preplace port valid_input -pg 1 -y 210 -defaultsOSRD
preplace portBus address_out -pg 1 -y 260 -defaultsOSRD
preplace portBus center_addr -pg 1 -y 250 -defaultsOSRD
preplace inst kd_tree_0 -pg 1 -lvl 1 -y 240 -defaultsOSRD
preplace inst blk_mem_gen_0 -pg 1 -lvl 2 -y 90 -defaultsOSRD
preplace netloc kd_tree_0_valid_bin 1 1 2 NJ 240 NJ
preplace netloc kd_tree_0_kd_ready_o 1 1 2 NJ 280 NJ
preplace netloc wr_ack_1 1 0 1 NJ
preplace netloc is_full_1 1 0 1 NJ
preplace netloc valid_input_1 1 0 1 NJ
preplace netloc center_addr_1 1 0 1 NJ
preplace netloc kd_tree_0_address_to_get 1 1 1 360
preplace netloc clk_1 1 0 2 30 80 NJ
preplace netloc valid_desc_1 1 0 1 NJ
preplace netloc blk_mem_gen_0_douta 1 0 2 40 100 NJ
preplace netloc kd_tree_0_address_out 1 1 2 NJ 260 NJ
preplace netloc kd_tree_0_get_addr 1 1 2 NJ 200 NJ
preplace netloc ena_1 1 0 2 20 120 NJ
levelinfo -pg 1 0 200 480 610 -top -10 -bot 360
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""



# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "input_file_b" -parent ${Page_0}
  ipgui::add_param $IPINST -name "input_file_w" -parent ${Page_0}
  ipgui::add_param $IPINST -name "num_class" -parent ${Page_0}
  ipgui::add_param $IPINST -name "block_size" -parent ${Page_0}


}

proc update_PARAM_VALUE.block_size { PARAM_VALUE.block_size } {
	# Procedure called to update block_size when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.block_size { PARAM_VALUE.block_size } {
	# Procedure called to validate block_size
	return true
}

proc update_PARAM_VALUE.input_file_b { PARAM_VALUE.input_file_b } {
	# Procedure called to update input_file_b when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.input_file_b { PARAM_VALUE.input_file_b } {
	# Procedure called to validate input_file_b
	return true
}

proc update_PARAM_VALUE.input_file_w { PARAM_VALUE.input_file_w } {
	# Procedure called to update input_file_w when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.input_file_w { PARAM_VALUE.input_file_w } {
	# Procedure called to validate input_file_w
	return true
}

proc update_PARAM_VALUE.num_class { PARAM_VALUE.num_class } {
	# Procedure called to update num_class when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.num_class { PARAM_VALUE.num_class } {
	# Procedure called to validate num_class
	return true
}


proc update_MODELPARAM_VALUE.input_file_w { MODELPARAM_VALUE.input_file_w PARAM_VALUE.input_file_w } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.input_file_w}] ${MODELPARAM_VALUE.input_file_w}
}

proc update_MODELPARAM_VALUE.input_file_b { MODELPARAM_VALUE.input_file_b PARAM_VALUE.input_file_b } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.input_file_b}] ${MODELPARAM_VALUE.input_file_b}
}

proc update_MODELPARAM_VALUE.num_class { MODELPARAM_VALUE.num_class PARAM_VALUE.num_class } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.num_class}] ${MODELPARAM_VALUE.num_class}
}

proc update_MODELPARAM_VALUE.block_size { MODELPARAM_VALUE.block_size PARAM_VALUE.block_size } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.block_size}] ${MODELPARAM_VALUE.block_size}
}


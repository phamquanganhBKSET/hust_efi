# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CLK_FREQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CYCLE_COUNTER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CYLINDERS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HALF_NUM_TEETH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_LOST_TEETH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_TEETH" -parent ${Page_0}


}

proc update_PARAM_VALUE.CLK_FREQ { PARAM_VALUE.CLK_FREQ } {
	# Procedure called to update CLK_FREQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLK_FREQ { PARAM_VALUE.CLK_FREQ } {
	# Procedure called to validate CLK_FREQ
	return true
}

proc update_PARAM_VALUE.CYCLE_COUNTER_WIDTH { PARAM_VALUE.CYCLE_COUNTER_WIDTH } {
	# Procedure called to update CYCLE_COUNTER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CYCLE_COUNTER_WIDTH { PARAM_VALUE.CYCLE_COUNTER_WIDTH } {
	# Procedure called to validate CYCLE_COUNTER_WIDTH
	return true
}

proc update_PARAM_VALUE.CYLINDERS { PARAM_VALUE.CYLINDERS } {
	# Procedure called to update CYLINDERS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CYLINDERS { PARAM_VALUE.CYLINDERS } {
	# Procedure called to validate CYLINDERS
	return true
}

proc update_PARAM_VALUE.HALF_NUM_TEETH { PARAM_VALUE.HALF_NUM_TEETH } {
	# Procedure called to update HALF_NUM_TEETH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HALF_NUM_TEETH { PARAM_VALUE.HALF_NUM_TEETH } {
	# Procedure called to validate HALF_NUM_TEETH
	return true
}

proc update_PARAM_VALUE.NUM_LOST_TEETH { PARAM_VALUE.NUM_LOST_TEETH } {
	# Procedure called to update NUM_LOST_TEETH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_LOST_TEETH { PARAM_VALUE.NUM_LOST_TEETH } {
	# Procedure called to validate NUM_LOST_TEETH
	return true
}

proc update_PARAM_VALUE.NUM_TEETH { PARAM_VALUE.NUM_TEETH } {
	# Procedure called to update NUM_TEETH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_TEETH { PARAM_VALUE.NUM_TEETH } {
	# Procedure called to validate NUM_TEETH
	return true
}


proc update_MODELPARAM_VALUE.CYLINDERS { MODELPARAM_VALUE.CYLINDERS PARAM_VALUE.CYLINDERS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CYLINDERS}] ${MODELPARAM_VALUE.CYLINDERS}
}

proc update_MODELPARAM_VALUE.NUM_TEETH { MODELPARAM_VALUE.NUM_TEETH PARAM_VALUE.NUM_TEETH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_TEETH}] ${MODELPARAM_VALUE.NUM_TEETH}
}

proc update_MODELPARAM_VALUE.HALF_NUM_TEETH { MODELPARAM_VALUE.HALF_NUM_TEETH PARAM_VALUE.HALF_NUM_TEETH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HALF_NUM_TEETH}] ${MODELPARAM_VALUE.HALF_NUM_TEETH}
}

proc update_MODELPARAM_VALUE.NUM_LOST_TEETH { MODELPARAM_VALUE.NUM_LOST_TEETH PARAM_VALUE.NUM_LOST_TEETH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_LOST_TEETH}] ${MODELPARAM_VALUE.NUM_LOST_TEETH}
}

proc update_MODELPARAM_VALUE.CLK_FREQ { MODELPARAM_VALUE.CLK_FREQ PARAM_VALUE.CLK_FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLK_FREQ}] ${MODELPARAM_VALUE.CLK_FREQ}
}

proc update_MODELPARAM_VALUE.CYCLE_COUNTER_WIDTH { MODELPARAM_VALUE.CYCLE_COUNTER_WIDTH PARAM_VALUE.CYCLE_COUNTER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CYCLE_COUNTER_WIDTH}] ${MODELPARAM_VALUE.CYCLE_COUNTER_WIDTH}
}




proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "efi_axi" "NUM_INSTANCES" "DEVICE_ID"  "C_OUT_AXI_BASEADDR" "C_OUT_AXI_HIGHADDR"
}

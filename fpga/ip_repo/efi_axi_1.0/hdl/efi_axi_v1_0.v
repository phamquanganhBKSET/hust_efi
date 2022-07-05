
`timescale 1 ns / 1 ps

	module efi_axi_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Master Bus Interface IN_AXI
		parameter  C_IN_AXI_START_DATA_VALUE	= 32'hAA000000,
		parameter  C_IN_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_IN_AXI_ADDR_WIDTH	= 32,
		parameter integer C_IN_AXI_DATA_WIDTH	= 32,
		parameter integer C_IN_AXI_TRANSACTIONS_NUM	= 4,

		// Parameters of Axi Slave Bus Interface OUT_AXI
		parameter integer C_OUT_AXI_DATA_WIDTH	= 32,
		parameter integer C_OUT_AXI_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Master Bus Interface IN_AXI
		input wire  in_axi_init_axi_txn,
		output wire  in_axi_error,
		output wire  in_axi_txn_done,
		input wire  in_axi_aclk,
		input wire  in_axi_aresetn,
		output wire [C_IN_AXI_ADDR_WIDTH-1 : 0] in_axi_awaddr,
		output wire [2 : 0] in_axi_awprot,
		output wire  in_axi_awvalid,
		input wire  in_axi_awready,
		output wire [C_IN_AXI_DATA_WIDTH-1 : 0] in_axi_wdata,
		output wire [C_IN_AXI_DATA_WIDTH/8-1 : 0] in_axi_wstrb,
		output wire  in_axi_wvalid,
		input wire  in_axi_wready,
		input wire [1 : 0] in_axi_bresp,
		input wire  in_axi_bvalid,
		output wire  in_axi_bready,
		output wire [C_IN_AXI_ADDR_WIDTH-1 : 0] in_axi_araddr,
		output wire [2 : 0] in_axi_arprot,
		output wire  in_axi_arvalid,
		input wire  in_axi_arready,
		input wire [C_IN_AXI_DATA_WIDTH-1 : 0] in_axi_rdata,
		input wire [1 : 0] in_axi_rresp,
		input wire  in_axi_rvalid,
		output wire  in_axi_rready,

		// Ports of Axi Slave Bus Interface OUT_AXI
		input wire  out_axi_aclk,
		input wire  out_axi_aresetn,
		input wire [C_OUT_AXI_ADDR_WIDTH-1 : 0] out_axi_awaddr,
		input wire [2 : 0] out_axi_awprot,
		input wire  out_axi_awvalid,
		output wire  out_axi_awready,
		input wire [C_OUT_AXI_DATA_WIDTH-1 : 0] out_axi_wdata,
		input wire [(C_OUT_AXI_DATA_WIDTH/8)-1 : 0] out_axi_wstrb,
		input wire  out_axi_wvalid,
		output wire  out_axi_wready,
		output wire [1 : 0] out_axi_bresp,
		output wire  out_axi_bvalid,
		input wire  out_axi_bready,
		input wire [C_OUT_AXI_ADDR_WIDTH-1 : 0] out_axi_araddr,
		input wire [2 : 0] out_axi_arprot,
		input wire  out_axi_arvalid,
		output wire  out_axi_arready,
		output wire [C_OUT_AXI_DATA_WIDTH-1 : 0] out_axi_rdata,
		output wire [1 : 0] out_axi_rresp,
		output wire  out_axi_rvalid,
		input wire  out_axi_rready
	);
// Instantiation of Axi Bus Interface IN_AXI
	efi_axi_v1_0_IN_AXI # ( 
		.C_M_START_DATA_VALUE(C_IN_AXI_START_DATA_VALUE),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_IN_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_ADDR_WIDTH(C_IN_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_IN_AXI_DATA_WIDTH),
		.C_M_TRANSACTIONS_NUM(C_IN_AXI_TRANSACTIONS_NUM)
	) efi_axi_v1_0_IN_AXI_inst (
		.INIT_AXI_TXN(in_axi_init_axi_txn),
		.ERROR(in_axi_error),
		.TXN_DONE(in_axi_txn_done),
		.M_AXI_ACLK(in_axi_aclk),
		.M_AXI_ARESETN(in_axi_aresetn),
		.M_AXI_AWADDR(in_axi_awaddr),
		.M_AXI_AWPROT(in_axi_awprot),
		.M_AXI_AWVALID(in_axi_awvalid),
		.M_AXI_AWREADY(in_axi_awready),
		.M_AXI_WDATA(in_axi_wdata),
		.M_AXI_WSTRB(in_axi_wstrb),
		.M_AXI_WVALID(in_axi_wvalid),
		.M_AXI_WREADY(in_axi_wready),
		.M_AXI_BRESP(in_axi_bresp),
		.M_AXI_BVALID(in_axi_bvalid),
		.M_AXI_BREADY(in_axi_bready),
		.M_AXI_ARADDR(in_axi_araddr),
		.M_AXI_ARPROT(in_axi_arprot),
		.M_AXI_ARVALID(in_axi_arvalid),
		.M_AXI_ARREADY(in_axi_arready),
		.M_AXI_RDATA(in_axi_rdata),
		.M_AXI_RRESP(in_axi_rresp),
		.M_AXI_RVALID(in_axi_rvalid),
		.M_AXI_RREADY(in_axi_rready)
	);

// Instantiation of Axi Bus Interface OUT_AXI
	efi_axi_v1_0_OUT_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_OUT_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_OUT_AXI_ADDR_WIDTH)
	) efi_axi_v1_0_OUT_AXI_inst (
		.S_AXI_ACLK(out_axi_aclk),
		.S_AXI_ARESETN(out_axi_aresetn),
		.S_AXI_AWADDR(out_axi_awaddr),
		.S_AXI_AWPROT(out_axi_awprot),
		.S_AXI_AWVALID(out_axi_awvalid),
		.S_AXI_AWREADY(out_axi_awready),
		.S_AXI_WDATA(out_axi_wdata),
		.S_AXI_WSTRB(out_axi_wstrb),
		.S_AXI_WVALID(out_axi_wvalid),
		.S_AXI_WREADY(out_axi_wready),
		.S_AXI_BRESP(out_axi_bresp),
		.S_AXI_BVALID(out_axi_bvalid),
		.S_AXI_BREADY(out_axi_bready),
		.S_AXI_ARADDR(out_axi_araddr),
		.S_AXI_ARPROT(out_axi_arprot),
		.S_AXI_ARVALID(out_axi_arvalid),
		.S_AXI_ARREADY(out_axi_arready),
		.S_AXI_RDATA(out_axi_rdata),
		.S_AXI_RRESP(out_axi_rresp),
		.S_AXI_RVALID(out_axi_rvalid),
		.S_AXI_RREADY(out_axi_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule

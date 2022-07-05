/***************************** Include Files *********************************/
#include <iostream>
#include <random>
#include "FreeRTOS.h"
#include "task.h"
#include "../include/GlobalDefines.hpp"
#include "../include/EFI.hpp"
#include "../lib/sdCard.h"
#include "efi_virtual_input.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"

/************************** Variable Definitions *****************************/
XGpio Gpio0; /* The Instance of the GPIO Driver for ckp_tb */
XGpio Gpio1; /* The Instance of the GPIO Driver for done[3:0] */
XGpio Gpio2; /* The Instance of the GPIO Driver for crank_counter[5:0] */
XGpio Gpio3; /* The Instance of the GPIO Driver for bdtc_ready[3:0] */
XGpio Gpio4; /* The Instance of the GPIO Driver for crank_cycle_counter[17:0] */
XGpio Gpio5; /* The Instance of the GPIO Driver for cal_rpm */
XGpio Gpio6; /* The Instance of the GPIO Driver for cal_btdc */
XGpio Gpio7; /* The Instance of the GPIO Driver for cal_injection[3:0] */
XGpio Gpio8; /* The Instance of the GPIO Driver for cal_ignition[3:0] */
XGpio Gpio9; /* The Instance of the GPIO Driver for update_table[3:0] */

void vTaskInput(void*);
void vTaskProcess(void* parameter);
void vTaskCKP(void*);

bool ckp_tb = 1;

using namespace std;

union {
	float f;
	u32 u;
} number;

int main()
{
	cout << "in";
	int status = SD_Init();
	if (status != XST_SUCCESS) {
		cout << "\n+) SD card init failed!";
		return 0;
	}
	cout << "\n+) SD card init successfully!" << endl;

	cout << "\n+) Initializing EFI...";
	EFI* efi = new EFI();

	int Status0;
	int Status1;
	int Status2;
	int Status3;
	int Status4;
	int Status5;
	int Status6;
	int Status7;
	int Status8;
	int Status9;

	cout << "\n+) Initializing GPIO0...\n";
	Status0 = XGpio_Initialize(&Gpio0, XPAR_AXI_GPIO_0_DEVICE_ID);
	if (Status0 != XST_SUCCESS) {
		cout << "Gpio0 Initialization Failed\n";
		return XST_FAILURE;
	}
	XGpio_SetDataDirection(&Gpio0, 1, 0);

	cout << "\n+) Initializing GPIO1...\n";
	Status1 = XGpio_Initialize(&Gpio1, XPAR_AXI_GPIO_1_DEVICE_ID);
	if (Status1 != XST_SUCCESS) {
		cout << "Gpio1 Initialization Failed\n";
		return XST_FAILURE;
	}
	XGpio_SetDataDirection(&Gpio1, 1, 0);
	XGpio_DiscreteWrite(&Gpio1, 1, 0xFFFFFFFF);

	cout << "\n+) Initializing GPIO2...\n";
	Status2 = XGpio_Initialize(&Gpio2, XPAR_AXI_GPIO_2_DEVICE_ID);
	if (Status2 != XST_SUCCESS) {
		cout << "Gpio2 Initialization Failed\n";
		return XST_FAILURE;
	}
	XGpio_SetDataDirection(&Gpio2, 1, 0xFFFFFFFF);

	cout << "\n+) Initializing GPIO3...\n";
	Status3 = XGpio_Initialize(&Gpio3, XPAR_AXI_GPIO_3_DEVICE_ID);
	if (Status3 != XST_SUCCESS) {
		cout << "Gpio3 Initialization Failed\n";
		return XST_FAILURE;
	}
	XGpio_SetDataDirection(&Gpio3, 1, 0);
	XGpio_DiscreteWrite(&Gpio3, 1, 0xFFFFFFFF);

	cout << "\n+) Initializing GPIO4...\n";
	Status4 = XGpio_Initialize(&Gpio4, XPAR_AXI_GPIO_4_DEVICE_ID);
	if (Status4 != XST_SUCCESS) {
		cout << "Gpio4 Initialization Failed\n";
		return XST_FAILURE;
	}
	XGpio_SetDataDirection(&Gpio4, 1, 0xFFFFFFFF);

	cout << "\n+) Initializing GPIO5...\n";
	Status5 = XGpio_Initialize(&Gpio5, XPAR_AXI_GPIO_5_DEVICE_ID);
	if (Status5 != XST_SUCCESS) {
		cout << "Gpio5 Initialization Failed\n";
		return XST_FAILURE;
	}
	XGpio_SetDataDirection(&Gpio5, 1, 0xFFFFFFFF);

	cout << "\n+) Initializing GPIO6...\n";
	Status6 = XGpio_Initialize(&Gpio6, XPAR_AXI_GPIO_6_DEVICE_ID);
	if (Status6 != XST_SUCCESS) {
		cout << "Gpio6 Initialization Failed\n";
		return XST_FAILURE;
	}
	XGpio_SetDataDirection(&Gpio6, 1, 0xFFFFFFFF);

	cout << "\n+) Initializing GPIO7...\n";
	Status7 = XGpio_Initialize(&Gpio7, XPAR_AXI_GPIO_7_DEVICE_ID);
	if (Status7 != XST_SUCCESS) {
		cout << "Gpio7 Initialization Failed\n";
		return XST_FAILURE;
	}
	XGpio_SetDataDirection(&Gpio7, 1, 0xFFFFFFFF);

	cout << "\n+) Initializing GPIO8...\n";
	Status8 = XGpio_Initialize(&Gpio8, XPAR_AXI_GPIO_8_DEVICE_ID);
	if (Status8 != XST_SUCCESS) {
		cout << "Gpio8 Initialization Failed\n";
		return XST_FAILURE;
	}
	XGpio_SetDataDirection(&Gpio8, 1, 0xFFFFFFFF);

	cout << "\n+) Initializing GPIO9...\n";
	Status9 = XGpio_Initialize(&Gpio9, XPAR_AXI_GPIO_9_DEVICE_ID);
	if (Status9 != XST_SUCCESS) {
		cout << "Gpio9 Initialization Failed\n";
		return XST_FAILURE;
	}
	XGpio_SetDataDirection(&Gpio9, 1, 0xFFFFFFFF);

	cout << "\nDone initialize GPIO\n";

	xTaskCreate( vTaskInput, "Task Input", 2048, NULL, 1, NULL );
	xTaskCreate( vTaskProcess, "Task Process", 2048, (void*)efi, 1, NULL );

	vTaskStartScheduler();

	return 0;
}

void vTaskInput(void*) {
	xil_printf("\nCreate TaskInput successfully!\n");
	volatile unsigned int *virtual_input = (volatile unsigned int *) 0x43c00000;
	const TickType_t xDelay = 40 / portTICK_PERIOD_MS;
	for (int i = 0; i < 1000; i++) {
		XGpio_DiscreteWrite(&Gpio0, 1, rand() > (RAND_MAX / 2));

		number.f = MAP_VFROM + static_cast<float>(rand()) * static_cast<float>(MAP_VTO - MAP_VFROM) / RAND_MAX;
//		xil_printf("MAP = %f\n\r", number.f);
		virtual_input[0] = number.u;

		number.f = MAT_VFROM + static_cast<float>(rand()) * static_cast<float>(MAT_VTO - MAT_VFROM) / RAND_MAX;
//		xil_printf("MAT = %f\n\r", number.f);
		virtual_input[1] = number.u;

		number.f = CLT_VFROM + static_cast<float>(rand()) * static_cast<float>(CLT_VTO - CLT_VFROM) / RAND_MAX;
//		xil_printf("CLT = %f\n\r", number.f);
		virtual_input[2] = number.u;

		number.f = EGO_VFROM + static_cast<float>(rand()) * static_cast<float>(EGO_VTO - EGO_VFROM) / RAND_MAX;
//		xil_printf("EGO = %f\n\r", number.f);
		virtual_input[3] = number.u;

		ckp_tb = 1 - ckp_tb;
		vTaskDelay( xDelay );
	}

	xil_printf("\nStop!!!!!!!!!!!!!!!!!!\n");
}

void vTaskProcess(void* parameter) {
	xil_printf("\nCreate TaskProcess successfully!\n");
	EFI* efi = (EFI*)parameter;
	float btdc[4] = {0, 0, 0, 0};
	bool done[4] = {0, 0, 0, 0};
	bool btdc_ready[4] = {0, 0, 0, 0};
	for(;;) {
		xil_printf("******************************\n\r");
		xil_printf("* User Peripheral Read Test\n\r");
		xil_printf("******************************\n");
		xil_printf("\n");
		efi->checkSensor();

		u32 crank_counter = XGpio_DiscreteRead(&Gpio2, 1);
		u32 crank_cycle_counter = XGpio_DiscreteRead(&Gpio4, 1);
		bool cal_rpm = XGpio_DiscreteRead(&Gpio5, 1);
		bool cal_btdc = XGpio_DiscreteRead(&Gpio6, 1);
		u32 cal_injection = XGpio_DiscreteRead(&Gpio7, 1);
		u32 cal_ignition = XGpio_DiscreteRead(&Gpio8, 1);
		u32 update_table = XGpio_DiscreteRead(&Gpio9, 1);

		printf("\ncrank_counter = %u", crank_counter);
		printf("\ncrank_cycle_counter = %u", crank_cycle_counter);
		printf("\ncal_rpm = %u", cal_rpm);
		printf("\ncal_btdc = %u", cal_btdc);
		printf("\ncal_injection = %x", cal_injection);
		printf("\ncal_ignition = %x", cal_ignition);
		printf("\nupdate_table = %x", update_table);

		if (cal_rpm) {
			float rpm = efi->calculateRPM(crank_cycle_counter);
			cout << "\nCalculate RPM: RPM = " << rpm << endl;
			efi->setRPM(rpm);
		}

		if (cal_btdc) {
			btdc[0] = efi->calculateBTDC(crank_counter);
			printf("\nCalculate BTDC[0]: %f\n", btdc[0]);
			printf("\nCalculate BTDC[1]: %f\n", btdc[0] + 180);
			printf("\nCalculate BTDC[2]: %f\n", btdc[0] + 180);
			printf("\nCalculate BTDC[3]: %f\n", btdc[0]);
			btdc[1] = btdc[0] + 180;
			btdc[2] = btdc[0] + 180;
			btdc[3] = btdc[0];
		}

		// Calculate injection time
		if ((cal_injection) & 0x01) {
			efi->FIC[0].setInjectionTime(efi->calculateInjectionTime(efi->CLTSensor.getData(), efi->EGOSensor.getData(),
																 efi->MATSensor.getData(), efi->MAPSensor.getData(), efi->getRPM()));
			cout << "\nCalculate injection time for cylinder 0: inj_time = " << efi->FIC[0].getInjectionTime();
			cout << "\nInjecting..." << endl;
			efi->FIC[0].inject();
			cout << "\nDone inject" << endl;
			done[0] = 1;
		} else {
			done[0] = 0;
		}

		if ((cal_injection) & 0x02) {
			efi->FIC[1].setInjectionTime(efi->calculateInjectionTime(efi->CLTSensor.getData(), efi->EGOSensor.getData(),
													 efi->MATSensor.getData(), efi->MAPSensor.getData(), efi->getRPM()));
			cout << "\nCalculate injection time for cylinder 1: inj_time = " << efi->FIC[1].getInjectionTime();
			cout << "\nInjecting..." << endl;
			efi->FIC[1].inject();
			cout << "\nDone inject" << endl;
			done[1] = 1;
		} else {
			done[1] = 0;
		}

		if ((cal_injection) & 0x04) {
			efi->FIC[2].setInjectionTime(efi->calculateInjectionTime(efi->CLTSensor.getData(), efi->EGOSensor.getData(),
													 efi->MATSensor.getData(), efi->MAPSensor.getData(), efi->getRPM()));
			cout << "\nCalculate injection time for cylinder 2: inj_time = " << efi->FIC[2].getInjectionTime();
			cout << "\nInjecting..." << endl;
			efi->FIC[2].inject();
			cout << "\nDone inject" << endl;
			done[2] = 1;
		} else {
			done[2] = 0;
		}

		if ((cal_injection) & 0x08) {
			efi->FIC[3].setInjectionTime(efi->calculateInjectionTime(efi->CLTSensor.getData(), efi->EGOSensor.getData(),
													 efi->MATSensor.getData(), efi->MAPSensor.getData(), efi->getRPM()));
			cout << "\nCalculate injection time for cylinder 3: inj_time = " << efi->FIC[3].getInjectionTime();
			cout << "\nInjecting..." << endl;
			efi->FIC[3].inject();
			cout << "\nDone inject" << endl;
			done[3] = 1;
		} else {
			done[3] = 0;
		}

		// Update table
//		if ((update_table) & 0x01) {
//			efi->updateTable(0);
//		}
//
//		if ((update_table) & 0x02) {
//			efi->updateTable(1);
//		}
//
//		if ((update_table) & 0x04) {
//			efi->updateTable(2);
//		}
//
//		if ((update_table) & 0x08) {
//			efi->updateTable(3);
//		}


		// Calculate ignition time
		if ((cal_ignition & 0x01)) {
			efi->IC[0].setIgnitionTime(efi->calculateInjectionTime(efi->CLTSensor.getData(), efi->EGOSensor.getData(),
																   efi->MATSensor.getData(), efi->MAPSensor.getData(), efi->getRPM()));
			cout << "\nCalculate ignition time for cylinder 0: ig_time = " << efi->IC[0].getIgnitionTime();
		}

		if ((cal_ignition & 0x02)) {
			efi->IC[1].setIgnitionTime(efi->calculateInjectionTime(efi->CLTSensor.getData(), efi->EGOSensor.getData(),
																   efi->MATSensor.getData(), efi->MAPSensor.getData(), efi->getRPM()));
			cout << "\nCalculate ignition time for cylinder 1: ig_time = " << efi->IC[1].getIgnitionTime();
		}

		if ((cal_ignition & 0x04)) {
			efi->IC[2].setIgnitionTime(efi->calculateInjectionTime(efi->CLTSensor.getData(), efi->EGOSensor.getData(),
																   efi->MATSensor.getData(), efi->MAPSensor.getData(), efi->getRPM()));
			cout << "\nCalculate ignition time for cylinder 2: ig_time = " << efi->IC[2].getIgnitionTime();
		}

		if ((cal_ignition & 0x08)) {
			efi->IC[3].setIgnitionTime(efi->calculateInjectionTime(efi->CLTSensor.getData(), efi->EGOSensor.getData(),
																   efi->MATSensor.getData(), efi->MAPSensor.getData(), efi->getRPM()));
			cout << "\nCalculate ignition time for cylinder 3: ig_time = " << efi->IC[3].getIgnitionTime();
		}

		// BTDC ready
		for (int i = 0; i < CYLINDERS; i++) {
			if (btdc[i] - 360.0 / NUM_TEETH <= efi->IC[i].getIgnitionTime()) {
				btdc_ready[i] = 1;
				efi->IC[i].ignition();
			} else {
				btdc_ready[i] = 0;
			}
		}

		u32 done_ = 0;
		for (int i = 0; i < CYLINDERS; i++) {
			done_ |= done[i] << i;
		}
		XGpio_DiscreteWrite(&Gpio1, 1, done_);

		u32 btdc_ready_ = 0;
		for (int i = 0; i < CYLINDERS; i++) {
			btdc_ready_ |= btdc_ready[i] << i;
		}
		XGpio_DiscreteWrite(&Gpio3, 1, btdc_ready_);

	}
}

################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

CC_SRCS += \
../src/main.cc 

CPP_SRCS += \
../src/CKP.cpp \
../src/CLT.cpp \
../src/Communication.cpp \
../src/EFI.cpp \
../src/EGO.cpp \
../src/Engine.cpp \
../src/FuelInjectionControl.cpp \
../src/IgnitionControl.cpp \
../src/MAP.cpp \
../src/MAT.cpp 

CC_DEPS += \
./src/main.d 

OBJS += \
./src/CKP.o \
./src/CLT.o \
./src/Communication.o \
./src/EFI.o \
./src/EGO.o \
./src/Engine.o \
./src/FuelInjectionControl.o \
./src/IgnitionControl.o \
./src/MAP.o \
./src/MAT.o \
./src/main.o 

CPP_DEPS += \
./src/CKP.d \
./src/CLT.d \
./src/Communication.d \
./src/EFI.d \
./src/EGO.d \
./src/Engine.d \
./src/FuelInjectionControl.d \
./src/IgnitionControl.d \
./src/MAP.d \
./src/MAT.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 g++ compiler'
	arm-none-eabi-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../hust_efi_3_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 g++ compiler'
	arm-none-eabi-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../hust_efi_3_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



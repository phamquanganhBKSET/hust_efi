################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/sdCard.c 

CPP_SRCS += \
../lib/Array.cpp \
../lib/File.cpp \
../lib/Math.cpp 

OBJS += \
./lib/Array.o \
./lib/File.o \
./lib/Math.o \
./lib/sdCard.o 

C_DEPS += \
./lib/sdCard.d 

CPP_DEPS += \
./lib/Array.d \
./lib/File.d \
./lib/Math.d 


# Each subdirectory must supply rules for building sources it contributes
lib/%.o: ../lib/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 g++ compiler'
	arm-none-eabi-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../hust_efi_final_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/%.o: ../lib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 g++ compiler'
	arm-none-eabi-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../hust_efi_final_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



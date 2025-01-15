################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/ch32v003fun/ch32v003fun.c 

C_DEPS += \
./User/ch32v003fun/ch32v003fun.d 

OBJS += \
./User/ch32v003fun/ch32v003fun.o 



# Each subdirectory must supply rules for building sources it contributes
User/ch32v003fun/%.o: ../User/ch32v003fun/%.c
	@	riscv-none-embed-gcc -march=rv32ecxw -mabi=ilp32e -msmall-data-limit=0 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"c:/Users/Tommy AU/mounriver-studio-projects/inspireRV3/Core" -I"c:/Users/Tommy AU/mounriver-studio-projects/inspireRV3/User" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

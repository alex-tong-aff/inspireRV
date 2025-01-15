################################################################################
# MRS Version: 2.1.0
# Automatically-generated file. Do not edit!
################################################################################
-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include User/ch32v003fun/subdir.mk
-include User/subdir.mk
-include Startup/subdir.mk
-include Core/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
inspireRV3.hex \

SECONDARY_LIST += \
inspireRV3.lst \

SECONDARY_SIZE += \
inspireRV3.siz \


# All Target
all: 
	$(MAKE) --no-print-directory main-build 

main-build: inspireRV3.elf secondary-outputs

# Tool invocations
inspireRV3.elf: $(OBJS) $(USER_OBJS)
	@	riscv-none-embed-gcc -march=rv32ecxw -mabi=ilp32e -msmall-data-limit=0 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -T "c:/Users/Tommy AU/mounriver-studio-projects/inspireRV3/Ld/Link.ld" -nostartfiles -Xlinker --gc-sections -Wl,-Map,"inspireRV3.map" --specs=nano.specs --specs=nosys.specs -o "inspireRV3.elf" $(OBJS) $(USER_OBJS) $(LIBS) -lprintf
inspireRV3.hex: inspireRV3.elf
	@	riscv-none-embed-objcopy -O ihex "inspireRV3.elf" "inspireRV3.hex"
inspireRV3.lst: inspireRV3.elf
	@	riscv-none-embed-objdump --all-headers --demangle --disassemble -M xw "inspireRV3.elf" > "inspireRV3.lst"
inspireRV3.siz: inspireRV3.elf
	riscv-none-embed-size --format=berkeley "inspireRV3.elf"

# Other Targets
clean:
	-$(RM) $(OBJS)$(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(S_DEPS)$(S_UPPER_DEPS)$(ASM_DEPS)$(ASM_UPPER_DEPS)$(C_DEPS) inspireRV3.elf

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
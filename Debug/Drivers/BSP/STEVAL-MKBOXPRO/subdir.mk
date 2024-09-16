################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/STEVAL-MKBOXPRO/steval_mkboxpro_bus.c 

OBJS += \
./Drivers/BSP/STEVAL-MKBOXPRO/steval_mkboxpro_bus.o 

C_DEPS += \
./Drivers/BSP/STEVAL-MKBOXPRO/steval_mkboxpro_bus.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STEVAL-MKBOXPRO/%.o Drivers/BSP/STEVAL-MKBOXPRO/%.su Drivers/BSP/STEVAL-MKBOXPRO/%.cyclo: ../Drivers/BSP/STEVAL-MKBOXPRO/%.c Drivers/BSP/STEVAL-MKBOXPRO/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U585xx -c -I../X-CUBE-MEMS1/Target -I../Drivers/BSP/STEVAL-MKBOXPRO -I../Core/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -I../Drivers/BSP/Components/Common -I../Drivers/BSP/Components/lsm6dsv16x -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-STEVAL-2d-MKBOXPRO

clean-Drivers-2f-BSP-2f-STEVAL-2d-MKBOXPRO:
	-$(RM) ./Drivers/BSP/STEVAL-MKBOXPRO/steval_mkboxpro_bus.cyclo ./Drivers/BSP/STEVAL-MKBOXPRO/steval_mkboxpro_bus.d ./Drivers/BSP/STEVAL-MKBOXPRO/steval_mkboxpro_bus.o ./Drivers/BSP/STEVAL-MKBOXPRO/steval_mkboxpro_bus.su

.PHONY: clean-Drivers-2f-BSP-2f-STEVAL-2d-MKBOXPRO


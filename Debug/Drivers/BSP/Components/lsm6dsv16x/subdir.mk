################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/Components/lsm6dsv16x/lsm6dsv16x.c \
../Drivers/BSP/Components/lsm6dsv16x/lsm6dsv16x_reg.c 

OBJS += \
./Drivers/BSP/Components/lsm6dsv16x/lsm6dsv16x.o \
./Drivers/BSP/Components/lsm6dsv16x/lsm6dsv16x_reg.o 

C_DEPS += \
./Drivers/BSP/Components/lsm6dsv16x/lsm6dsv16x.d \
./Drivers/BSP/Components/lsm6dsv16x/lsm6dsv16x_reg.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/lsm6dsv16x/%.o Drivers/BSP/Components/lsm6dsv16x/%.su Drivers/BSP/Components/lsm6dsv16x/%.cyclo: ../Drivers/BSP/Components/lsm6dsv16x/%.c Drivers/BSP/Components/lsm6dsv16x/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U585xx -c -I../X-CUBE-MEMS1/Target -I../Drivers/BSP/STEVAL-MKBOXPRO -I../Core/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -I../Drivers/BSP/Components/Common -I../Drivers/BSP/Components/lsm6dsv16x -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-Components-2f-lsm6dsv16x

clean-Drivers-2f-BSP-2f-Components-2f-lsm6dsv16x:
	-$(RM) ./Drivers/BSP/Components/lsm6dsv16x/lsm6dsv16x.cyclo ./Drivers/BSP/Components/lsm6dsv16x/lsm6dsv16x.d ./Drivers/BSP/Components/lsm6dsv16x/lsm6dsv16x.o ./Drivers/BSP/Components/lsm6dsv16x/lsm6dsv16x.su ./Drivers/BSP/Components/lsm6dsv16x/lsm6dsv16x_reg.cyclo ./Drivers/BSP/Components/lsm6dsv16x/lsm6dsv16x_reg.d ./Drivers/BSP/Components/lsm6dsv16x/lsm6dsv16x_reg.o ./Drivers/BSP/Components/lsm6dsv16x/lsm6dsv16x_reg.su

.PHONY: clean-Drivers-2f-BSP-2f-Components-2f-lsm6dsv16x


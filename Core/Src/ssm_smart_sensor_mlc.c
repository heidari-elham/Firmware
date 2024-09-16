/*
 * ssm_smart_sensor_mlc.c
 *
 *  Created on: Aug 23, 2024
 *      Author: ellie
 */

/* Includes ----------------------------------------------------------------- */
#include <stdint.h>
#include <stdio.h>
#include "mlc.h"
#include "custom_motion_sensors_ex.h"
#include "firmware.h"
#include "string.h"
/* Definitions -------------------------------------------------------------- */
#ifdef __GNUC__
extern int __io_putchar(int ch);
#else
extern int fputc(int ch, FILE *f);
#endif


#define SSM_MLC_FUNC_CFG_ENABLE 0x80
#define SSM_MLC_FUNC_CFG_DISABLE 0x00

int32_t ssm_smart_sensor_mlc_init(void)
{
	int32_t ret;
	ret = CUSTOM_MOTION_SENSOR_Init(CUSTOM_LSM6DSV16X_0, MOTION_ACCELERO);
	if (ret != BSP_ERROR_NONE)
	{
		printf("CUSTOM_MOTION_SENSOR_Init failed.\n");

	    return ret;
	}
	return BSP_ERROR_NONE;
}

int32_t ssm_smart_sensor_mlc_configure_ucf(void)
{
	int32_t ret = 0;

	/* Load UCF configuration */
	for (uint16_t i = 0; i < (sizeof(mlc_configuration) / sizeof(ucf_line_t)); i++) {
		ret |= CUSTOM_MOTION_SENSOR_Write_Register(
			CUSTOM_LSM6DSV16X_0,
			mlc_configuration[i].address,
			mlc_configuration[i].data
		);
	}

	if (ret != BSP_ERROR_NONE)
		return ret;

	return BSP_ERROR_NONE;
}

int32_t ssm_smart_sensor_mlc_handle_event(uint8_t *output)
{
	int32_t ret;

	ret = CUSTOM_MOTION_SENSOR_Write_Register(
		CUSTOM_LSM6DSV16X_0,
		LSM6DSV16X_FUNC_CFG_ACCESS,
		SSM_MLC_FUNC_CFG_ENABLE
	);
	if (ret != BSP_ERROR_NONE)
		return ret;

	ret = CUSTOM_MOTION_SENSOR_Read_Register(
		CUSTOM_LSM6DSV16X_0,
		LSM6DSV16X_FUNC_CFG_ACCESS,
		output
	);
	if (ret != BSP_ERROR_NONE)
		return ret;

	ret = CUSTOM_MOTION_SENSOR_Write_Register(
		CUSTOM_LSM6DSV16X_0,
		LSM6DSV16X_FUNC_CFG_ACCESS,
		SSM_MLC_FUNC_CFG_DISABLE
	);
	if (ret != BSP_ERROR_NONE)
		return ret;

	return BSP_ERROR_NONE;
}

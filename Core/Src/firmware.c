/*
 * firmware.c
 *
 *  Created on: Aug 22, 2024
 *      Author: ellie
 */

/* Includes ------------------------------------------------------------------*/

#include <stdint.h>
#include <stdio.h>
#include "main.h"
#include "Firmware.h"
#include "ssm_smart_sensor_mlc.h"
#include "steval_mkboxpro_errno.h"
#include "string.h"
/* Global variables --------------------------------------------------------- */
static volatile uint8_t smart_sensor_event = 0;


extern UART_HandleTypeDef huart4;


void UART_Debug_Print(const char *msg)
{
    HAL_UART_Transmit(&huart4, (uint8_t *)msg, strlen(msg), HAL_MAX_DELAY);
}



void MX_ssm_Init(void)
{
	int32_t ret;

	printf("===== Smart Sensor Monitor =====\n");

	ret = ssm_smart_sensor_mlc_init();
	if (ret != BSP_ERROR_NONE)
	{
		Error_Handler();
	}

	UART_Debug_Print("===== mlc initialization Done =====\n");

	ret = ssm_smart_sensor_mlc_configure_ucf();
	if (ret != BSP_ERROR_NONE)
	{   UART_Debug_Print("===== Error in ucf configuration =====\n");
		Error_Handler();
	}

	UART_Debug_Print("===== ucf configuration Done =====\n");
	}


void MX_ssm_Process(void)
{

	int32_t ret;

	if (smart_sensor_event == 1) {
		smart_sensor_event = 0;

	uint8_t prediction;


	ret = ssm_smart_sensor_mlc_handle_event(&prediction);
	if (ret != BSP_ERROR_NONE)
		Error_Handler();

	char buffer[50];
	snprintf(buffer, sizeof(buffer), "prediction: %d\n", prediction);
    UART_Debug_Print(buffer);

	}

}



/**
 * @brief  Implementation of printf() function
 * @param None
 * @retval None
 */
#ifdef __GNUC__
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif
PUTCHAR_PROTOTYPE
{
  HAL_UART_Transmit(&huart4, (uint8_t *)&ch, 1, HAL_MAX_DELAY);
  return ch;
}



/* Header guard ------------------------------------------------------------- */

#ifndef APP_SSM_H
#define APP_SSM_H

#ifdef __cplusplus
extern "C"
{
#endif

/* Definitions -------------------------------------------------------------- */

// Define the smart sensor type as MLC only
#define SSM_SMART_SENSOR_MLC 0

// Set the configuration to use only MLC
#define SSM_CONFIG_SMART_SENSOR SSM_SMART_SENSOR_MLC



/* Function prototypes ------------------------------------------------------ */

// Initialize the Smart Sensor Monitor
void UART_Debug_Print(const char *msg);
void MX_ssm_Init(void);
void MX_ssm_Process(void);
// Process data from the Smart Sensor Monitor


#ifdef __cplusplus
}
#endif

#endif /* APP_SSM_H */

/* -------------------------------------------------------------------------- */

#ifndef _FUNCONFIG_H
#define _FUNCONFIG_H

#define CH32V003 1
#define FUNCONF_USE_DEBUGPRINTF 0
#define FUNCONF_USE_UARTPRINTF 1
#define FUNCONF_UART_PRINTF_BAUD 115200
#define horizontalButtons 8
#define verticalButtons 8
#define NUM_LEDS (horizontalButtons * verticalButtons)

#define FUNCONF_SYSTICK_USE_HCLK 1
#define INTERNAL_INSPIRE_MATRIX 1

#endif

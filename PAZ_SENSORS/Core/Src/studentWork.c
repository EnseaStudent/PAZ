/*
 * studentWork.c
 *
 *  Created on: Jun 21, 2023
 *      Author: antotauv
 */

#include <stm32l4xx_hal.h>
#include "ensea.h"
extern UART_HandleTypeDef huart2;







void setup(void){
    // insert the setup here, it will be run once.
}

void loop(void){
    // This code will run indefinitly.






/*
		  HAL_ADC_Start(&hadc1);
		          if (HAL_ADC_PollForConversion(&hadc1, SAMPLING_PERIOD) == HAL_OK)
		          {
		              adc_value = HAL_ADC_GetValue(&hadc1) - 122 ;
		              adc_value *= (1000/SAMPLING_PERIOD);
		              voltage = (adc_value*VOLTAGE_REFERENCE)/ADC_MAX_VALUE;
		              // Calcul de la fréquence en fonction de la tension
		              frequency = voltage * 2/3 ;  // veleur à changer
		              printf("Fréquence cardiaque : %.2f BPM\n", frequency);
		              //printf("voltage :  : %u \f", voltage);
		          }
		          HAL_ADC_Stop(&hadc1);
		          HAL_Delay(10*SAMPLING_PERIOD);



	  }
	  */
}

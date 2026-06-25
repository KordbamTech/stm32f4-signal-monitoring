/* Task 1: Real-Time Signal Monitoring & Data Logging
   STM32F4 Discovery Kit | Fs = 8 kHz | Two-channel ADC + TIM6
   Author: Oluwakorede Solomon Bamidele | ELEC73150 | May 2026 */

#include "main.h"
#include <math.h>

ADC_HandleTypeDef hadc1, hadc2;
TIM_HandleTypeDef htim6;

uint16_t ADC_DATA1[8000], ADC_DATA2[8000];
uint32_t i = 0;
float Volt1[8000], Volt2[8000];
float ch1_vpp, ch2_vpp, ch1_mean, ch2_mean;
float ch1_variance, ch2_variance, ch1_stddev, ch2_stddev;
float ch1_rms, ch2_rms;
uint8_t type1, type2;
float Vpp_log1[15], Mean_log1[15], RMS_log1[15];
float Vpp_log2[15], Mean_log2[15], RMS_log2[15];
uint8_t log_idx = 0;

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim) {
    HAL_ADC_Start(&hadc1); HAL_ADC_PollForConversion(&hadc1, 1);
    HAL_ADC_Start(&hadc2); HAL_ADC_PollForConversion(&hadc2, 1);

    if (i < 8000) {
        ADC_DATA1[i] = HAL_ADC_GetValue(&hadc1);
        ADC_DATA2[i] = HAL_ADC_GetValue(&hadc2);
        Volt1[i] = ADC_DATA1[i] * (3.0f / 4096.0f);
        Volt2[i] = ADC_DATA2[i] * (3.0f / 4096.0f);
    }

    HAL_ADC_Stop(&hadc1); HAL_ADC_Stop(&hadc2);
    i++;

    if (i == 4000) HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_15); // Heartbeat

    if (i >= 8000) {
        i = 0;
        Vpp(); Mean(); Variance_StdDev(); RMS(); Sig_type();
        if (log_idx < 15) {
            Vpp_log1[log_idx] = ch1_vpp; Mean_log1[log_idx] = ch1_mean; RMS_log1[log_idx] = ch1_rms;
            Vpp_log2[log_idx] = ch2_vpp; Mean_log2[log_idx] = ch2_mean; RMS_log2[log_idx] = ch2_rms;
            log_idx++;
        }
    }

    // LED status
    HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12,
        (ch1_vpp > 2.5f && ch2_vpp > 2.5f) ? GPIO_PIN_SET : GPIO_PIN_RESET);
    HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13,
        (ch1_vpp < 2.5f || ch2_vpp < 2.5f) ? GPIO_PIN_SET : GPIO_PIN_RESET);
}

void Vpp(void) {
    float max1 = Volt1[0], min1 = Volt1[0], max2 = Volt2[0], min2 = Volt2[0];
    for (uint16_t k = 1; k < 8000; k++) {
        if (Volt1[k] > max1) max1 = Volt1[k]; if (Volt1[k] < min1) min1 = Volt1[k];
        if (Volt2[k] > max2) max2 = Volt2[k]; if (Volt2[k] < min2) min2 = Volt2[k];
    }
    ch1_vpp = max1 - min1; ch2_vpp = max2 - min2;
}

void Mean(void) {
    float s1 = 0.0f, s2 = 0.0f;
    for (uint16_t k = 0; k < 8000; k++) { s1 += Volt1[k]; s2 += Volt2[k]; }
    ch1_mean = s1 / 8000.0f; ch2_mean = s2 / 8000.0f;
}

void Variance_StdDev(void) {
    float s1 = 0.0f, s2 = 0.0f;
    for (uint16_t k = 0; k < 8000; k++) { s1 += Volt1[k]; s2 += Volt2[k]; }
    float m1 = s1 / 8000.0f, m2 = s2 / 8000.0f, v1 = 0.0f, v2 = 0.0f;
    for (uint16_t k = 0; k < 8000; k++) {
        float d1 = Volt1[k] - m1; v1 += d1 * d1;
        float d2 = Volt2[k] - m2; v2 += d2 * d2;
    }
    ch1_variance = v1 / 8000.0f; ch1_stddev = sqrtf(ch1_variance);
    ch2_variance = v2 / 8000.0f; ch2_stddev = sqrtf(ch2_variance);
}

void RMS(void) {
    float s1 = 0.0f, s2 = 0.0f;
    for (uint16_t k = 0; k < 8000; k++) { s1 += Volt1[k] * Volt1[k]; s2 += Volt2[k] * Volt2[k]; }
    ch1_rms = sqrtf(s1 / 8000.0f); ch2_rms = sqrtf(s2 / 8000.0f);
}

void Sig_type(void) {
    float prev1 = Volt1[0];
    for (int j = 1; j < 50; j++) {
        float v1 = Volt1[j]; float diff1 = fabsf(v1 - prev1);
        if (ch1_mean < 0.9f) { type1 = 10; break; }
        if (diff1 > 2.9f && ch1_vpp > 2.5f) { type1 = 11; break; }
        type1 = 22; prev1 = v1;
    }
    float prev2 = Volt2[0];
    for (int j = 1; j < 50; j++) {
        float v2 = Volt2[j]; float diff2 = fabsf(v2 - prev2);
        if (ch2_mean < 0.9f) { type2 = 10; break; }
        if (diff2 > 2.9f && ch2_vpp > 2.5f) { type2 = 11; break; }
        type2 = 22; prev2 = v2;
    }
}

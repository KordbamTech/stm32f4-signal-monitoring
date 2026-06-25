# Real-Time Signal Monitoring & IIR Filter Design on STM32F4

> MSc Advanced Embedded Systems | ELEC73150 | University of Staffordshire | May 2026

Two real-time embedded systems on the **STM32F4 Discovery Kit (ARM Cortex-M4 @ 168 MHz)** — dual-channel ADC signal acquisition with statistical classification, and computationally efficient IIR filter design for signal separation. Built in the context of automotive cybersecurity for safety-critical embedded platforms.

---

## Overview

| Task | Description | Outcome |
|---|---|---|
| **Task 1** | Dual-channel ADC monitoring, waveform classification, statistical logging | All 9 signal scenarios validated |
| **Task 2** | FIR-to-IIR filter design for 2 kHz / 16 kHz signal separation | ~90% reduction in arithmetic complexity vs FIR |

---

## Task 1: Signal Monitoring & Data Logging

### System Architecture

```
TIM6 (8 kHz ISR)
       |
   .---+---.
ADC1      ADC2           <- PA0, PA7 (12-bit, 0-3V)
  |          |
Volt1[8000] Volt2[8000]  <- static arrays, no heap (MISRA-C)
       |
  .----+---------------------+
  |  Every 1 second:         |
  |  Vpp, Mean, Variance     |
  |  Std Dev, RMS, Type      |
  '----+---------------------+
       |
  LED Feedback        Log arrays (15 seconds)
  Green = both valid  Vpp_log, Mean_log, RMS_log
  Red   = missing
  Blue  = heartbeat (500ms)
```

### Signal Classification

Lightweight classifier on first 50 samples — no division or transcendental operations:

```c
if (ch_mean < 0.9f)              -> type = 10  // No signal
if (diff > 2.9f && vpp > 2.5f)  -> type = 11  // Square wave
else                              -> type = 22  // Sinusoidal
```

### Hardware Configuration

- **ADC1/ADC2**: PA0, PA7 — 12-bit dual independent channels
- **TIM6**: 8 kHz periodic trigger (4x Nyquist above 1 kHz signals)
- **GPIO Port D**: PD12 Green / PD13 Red / PD15 Blue LEDs
- **Clock**: 168 MHz via HSE oscillator
- **Memory**: Static allocation throughout — deterministic, no heap fragmentation

### Validated Scenarios (All 9)

| # | Ch1 | Ch2 | type1 | type2 | LED |
|---|---|---|---|---|---|
| 1 | Sinusoidal | Sinusoidal | 22 | 22 | Green |
| 2 | Square | Square | 11 | 11 | Green |
| 3 | Sinusoidal | Square | 22 | 11 | Green |
| 4 | Square | Sinusoidal | 11 | 22 | Green |
| 5 | Sinusoidal | No Signal | 22 | 10 | Red |
| 6 | No Signal | Sinusoidal | 10 | 22 | Red |
| 7 | Square | No Signal | 11 | 10 | Red |
| 8 | No Signal | Square | 10 | 11 | Red |
| 9 | No Signal | No Signal | 10 | 10 | Red |

Validated via Keil uVision watch window, hardware LED observation, and Excel waveform export.

---

## Task 2: IIR Filter Design for Signal Separation

### Problem

Separate a **2 kHz navigation signal** and a **16 kHz telemetry signal** from a combined mixed channel. Reflects a realistic embedded scenario in drone sensor platforms and IoT systems where multiple streams share one transmission channel.

**Constraints**: signal fidelity + computational efficiency + battery-powered deployment.

### FIR vs IIR Trade-off

| Filter | Type | Order | MACs/sample | Decision |
|---|---|---|---|---|
| LPF (80 dB) | FIR | 23 | 24 | Too heavy |
| LPF (40 dB) | **IIR Butterworth** | **4** | **8** | Selected |
| HPF (30 dB) | FIR | 12 | 13 | Too heavy |
| HPF (10 dB) | **IIR Butterworth** | **2** | **4** | Selected |

**~90% reduction in arithmetic complexity** vs FIR baselines.

### Final Specifications

**IIR Low-Pass (extracts 2 kHz):**
- Butterworth, Direct-Form II, Order 4 (2 biquad sections)
- Passband: 4/48 x Fs | Stopband: 15/48 x Fs | Attenuation: 40 dB

**IIR High-Pass (extracts 16 kHz):**
- Butterworth, Direct-Form II, Order 2 (1 biquad section)
- Stopband: 5/48 x Fs | Passband: 13/48 x Fs | Attenuation: 10 dB

Fs = 96 kHz (Nyquist margin above 16 kHz)

---

## Automotive Cybersecurity Context

The implementation sits within a literature review on security challenges in automotive embedded systems:

- **CAN bus**: broadcast without authentication; OBD-II pivot attacks; firmware injection
- **V2X threats**: DDoS, Sybil attacks, GPS spoofing, man-in-the-middle
- **ADAS adversarial ML**: LiDAR phantom injection, adversarial patch attacks on object detection
- **Mitigations**: AUTOSAR SecOC (MACs on CAN), HSM/TPM roots of trust, AI-based IDS (GAN/GRU/LSTM/temporal CNN), secure OTA, formal verification

Key tension: ISO 26262 safety + UNECE WP.29 / ISO/SAE 21434 security constraints directly conflict with cryptographic overhead. Compositional defence-in-depth is the only viable architecture.

---

## Tech Stack

```
Hardware    STM32F4 Discovery (STM32F407VGTx, Cortex-M4, 168 MHz, 192KB SRAM)
IDE         Keil uVision 5
Config      STM32CubeMX
DSP design  MATLAB Filter Designer
Language    C (MISRA-C guidelines)
Standards   ISO 26262, MISRA-C, AUTOSAR SecOC, UNECE WP.29, ISO/SAE 21434
```

---

## Files

| Path | Description |
|---|---|
| `src/task1_main.c` | Full C source: ADC ISR, classification, statistics, logging |
| `src/iir_filters.c` | IIR LPF (order 4) and HPF (order 2) implementation |
| `matlab/filter_design.m` | MATLAB filter specification and coefficient export |
| `data/STM_Task1_results.csv` | Exported ADC samples and computed voltages |

---

## Academic Context

**Module:** ELEC73150 – Advanced Embedded Systems
**Institution:** University of Staffordshire
**Module Leader:** Dr Anas Amjad
**Author:** Oluwakorede Solomon Bamidele (ID: 25023666)

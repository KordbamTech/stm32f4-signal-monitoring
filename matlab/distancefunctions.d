<html>
<body>
<pre>
<h1>µVision Build Log</h1>
<h2>Tool Versions:</h2>
IDE-Version: µVision V5.34.0.0
Copyright (C) 2021 ARM Ltd and ARM Germany GmbH. All rights reserved.
License Information: Staffordshire University, Staffordshire University, LIC=----
 
Tool Versions:
Toolchain:       MDK-Lite  Version: 5.34.0.0
Toolchain Path:  c:\Keil_v5\ARM\ARMCLANG\Bin
C Compiler:      ArmClang.exe V6.16
Assembler:       Armasm.exe V6.16
Linker/Locator:  ArmLink.exe V6.16
Library Manager: ArmAr.exe V6.16
Hex Converter:   FromElf.exe V6.16
CPU DLL:         SARMCM3.DLL V5.34.0.0
Dialog DLL:      DCM.DLL V1.17.3.0
Target DLL:      UL2CM3.DLL V1.163.9.0
Dialog DLL:      TCM.DLL V1.48.0.0
 
<h2>Project:</h2>
C:\Users\b023666p\OneDrive - University of Staffordshire\Embedded\FILTER\DesignFilter.uvprojx
Project File Date:  04/20/2026

<h2>Output:</h2>
*** Using Compiler 'V6.16', folder: 'c:\Keil_v5\ARM\ARMCLANG\Bin'
Build target 'Target 1'
Main.c(1): warning: In file included from...
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(1220): warning: implicit conversion changes signedness: 'q31_t' (aka 'int') to 'uint32_t' (aka 'unsigned int') [-Wsign-conversion]
      signBits = ((uint32_t) (__CLZ( in) - 1));
                              ~~~~~  ^~
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(1224): warning: implicit conversion changes signedness: 'q31_t' (aka 'int') to 'uint32_t' (aka 'unsigned int') [-Wsign-conversion]
      signBits = ((uint32_t) (__CLZ(-in) - 1));
                              ~~~~~ ^~~
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(1271): warning: implicit conversion changes signedness: 'q15_t' (aka 'short') to 'uint32_t' (aka 'unsigned int') [-Wsign-conversion]
      signBits = ((uint32_t)(__CLZ( in) - 17));
                             ~~~~~  ^~
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(1275): warning: implicit conversion changes signedness: 'int' to 'uint32_t' (aka 'unsigned int') [-Wsign-conversion]
      signBits = ((uint32_t)(__CLZ(-in) - 17));
                             ~~~~~ ^~~
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(1279): warning: implicit conversion loses integer precision: 'int' to 'q15_t' (aka 'short') [-Wimplicit-int-conversion]
    in = (in << signBits);
       ~  ~~~^~~~~~~~~~~
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(1295): warning: implicit conversion changes signedness: 'q31_t' (aka 'int') to 'unsigned int' [-Wsign-conversion]
      out = (q15_t) (((q31_t) out * tempVal) >> 14);
                      ^~~~~~~~~~~ ~
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(1337): warning: implicit conversion changes signedness: 'int32_t' (aka 'int') to 'uint32_t' (aka 'unsigned int') [-Wsign-conversion]
    n1 = __CLZ(hi) - 32;
         ~~~~~ ^~
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(1343): warning: implicit conversion changes signedness: 'int32_t' (aka 'int') to 'uint32_t' (aka 'unsigned int') [-Wsign-conversion]
        n1 = __CLZ(lo);
             ~~~~~ ^~
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(1379): warning: implicit conversion changes signedness: 'unsigned int' to 'int32_t' (aka 'int') [-Wsign-conversion]
        *normalized = (((uint32_t) lo) >> n1) | (hi << (32 - n1));
                    ~ ~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(1379): warning: implicit conversion changes signedness: 'int32_t' (aka 'int') to 'unsigned int' [-Wsign-conversion]
        *normalized = (((uint32_t) lo) >> n1) | (hi << (32 - n1));
                                              ~  ~~~^~~~~~~~~~~~
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(1394): warning: operand of ? changes signedness: 'q63_t' (aka 'long long') to 'uint64_t' (aka 'unsigned long long') [-Wsign-conversion]
    absNum = num > 0 ? num : -num;
           ~           ^~~
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(1394): warning: operand of ? changes signedness: 'q63_t' (aka 'long long') to 'uint64_t' (aka 'unsigned long long') [-Wsign-conversion]
    absNum = num > 0 ? num : -num;
           ~                 ^~~~
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(3203): warning: padding struct 'arm_cfft_instance_f64' with 2 bytes to align 'pTwiddle' [-Wpadded]
    const float64_t *pTwiddle;         /**< points to the Twiddle factor table. */
                     ^
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(3200): warning: padding size of 'arm_cfft_instance_f64' with 2 bytes to alignment boundary [-Wpadded]
  typedef struct
          ^
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(3172): warning: padding struct 'arm_cfft_instance_f32' with 2 bytes to align 'pTwiddle' [-Wpadded]
    const float32_t *pTwiddle;         /**< points to the Twiddle factor table. */
                     ^
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(3169): warning: padding size of 'arm_cfft_instance_f32' with 2 bytes to alignment boundary [-Wpadded]
  typedef struct
          ^
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(6510): warning: implicit conversion from 'int32_t' (aka 'int') to 'float' may lose precision [-Wimplicit-int-float-conversion]
      x0 = S->x1 +  i      * xSpacing;
                    ^      ~
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(6511): warning: implicit conversion from 'int' to 'float' may lose precision [-Wimplicit-int-float-conversion]
      x1 = S->x1 + (i + 1) * xSpacing;
                    ~~^~~  ~
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(8583): warning: implicit conversion from 'int32_t' (aka 'int') to 'float' may lose precision [-Wimplicit-int-float-conversion]
    xdiff = X - xIndex;
              ~ ^~~~~~
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(8586): warning: implicit conversion from 'int32_t' (aka 'int') to 'float' may lose precision [-Wimplicit-int-float-conversion]
    ydiff = Y - yIndex;
              ~ ^~~~~~
Main.c(3): warning: In file included from...
./FIR_lpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_low[17]={0.00204269215, 0.00898840744, 0.0206207223, 0.0395643823, 0.0637154579, 0.0905472413, 0.115091987, 0.132473424, 0.138730109, 0.132473424, 0.115091987, 0.0905472413, 0.0637154579, 0.0395643823, 0.0206207223, 0.00898840744, 0.00204269215};
                    ~                                                                                                                                                                                                                              ^~~~~~~~~~~~~
./FIR_lpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_low[17]={0.00204269215, 0.00898840744, 0.0206207223, 0.0395643823, 0.0637154579, 0.0905472413, 0.115091987, 0.132473424, 0.138730109, 0.132473424, 0.115091987, 0.0905472413, 0.0637154579, 0.0395643823, 0.0206207223, 0.00898840744, 0.00204269215};
                    ~                                                                                                                                                                                                               ^~~~~~~~~~~~~
./FIR_lpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_low[17]={0.00204269215, 0.00898840744, 0.0206207223, 0.0395643823, 0.0637154579, 0.0905472413, 0.115091987, 0.132473424, 0.138730109, 0.132473424, 0.115091987, 0.0905472413, 0.0637154579, 0.0395643823, 0.0206207223, 0.00898840744, 0.00204269215};
                    ~                                                                                                                                                                                                 ^~~~~~~~~~~~
./FIR_lpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_low[17]={0.00204269215, 0.00898840744, 0.0206207223, 0.0395643823, 0.0637154579, 0.0905472413, 0.115091987, 0.132473424, 0.138730109, 0.132473424, 0.115091987, 0.0905472413, 0.0637154579, 0.0395643823, 0.0206207223, 0.00898840744, 0.00204269215};
                    ~                                                                                                                                                                                   ^~~~~~~~~~~~
./FIR_lpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_low[17]={0.00204269215, 0.00898840744, 0.0206207223, 0.0395643823, 0.0637154579, 0.0905472413, 0.115091987, 0.132473424, 0.138730109, 0.132473424, 0.115091987, 0.0905472413, 0.0637154579, 0.0395643823, 0.0206207223, 0.00898840744, 0.00204269215};
                    ~                                                                                                                                                                     ^~~~~~~~~~~~
./FIR_lpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_low[17]={0.00204269215, 0.00898840744, 0.0206207223, 0.0395643823, 0.0637154579, 0.0905472413, 0.115091987, 0.132473424, 0.138730109, 0.132473424, 0.115091987, 0.0905472413, 0.0637154579, 0.0395643823, 0.0206207223, 0.00898840744, 0.00204269215};
                    ~                                                                                                                                                       ^~~~~~~~~~~~
./FIR_lpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_low[17]={0.00204269215, 0.00898840744, 0.0206207223, 0.0395643823, 0.0637154579, 0.0905472413, 0.115091987, 0.132473424, 0.138730109, 0.132473424, 0.115091987, 0.0905472413, 0.0637154579, 0.0395643823, 0.0206207223, 0.00898840744, 0.00204269215};
                    ~                                                                                                                                          ^~~~~~~~~~~
./FIR_lpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_low[17]={0.00204269215, 0.00898840744, 0.0206207223, 0.0395643823, 0.0637154579, 0.0905472413, 0.115091987, 0.132473424, 0.138730109, 0.132473424, 0.115091987, 0.0905472413, 0.0637154579, 0.0395643823, 0.0206207223, 0.00898840744, 0.00204269215};
                    ~                                                                                                                             ^~~~~~~~~~~
./FIR_lpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_low[17]={0.00204269215, 0.00898840744, 0.0206207223, 0.0395643823, 0.0637154579, 0.0905472413, 0.115091987, 0.132473424, 0.138730109, 0.132473424, 0.115091987, 0.0905472413, 0.0637154579, 0.0395643823, 0.0206207223, 0.00898840744, 0.00204269215};
                    ~                                                                                                                ^~~~~~~~~~~
./FIR_lpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_low[17]={0.00204269215, 0.00898840744, 0.0206207223, 0.0395643823, 0.0637154579, 0.0905472413, 0.115091987, 0.132473424, 0.138730109, 0.132473424, 0.115091987, 0.0905472413, 0.0637154579, 0.0395643823, 0.0206207223, 0.00898840744, 0.00204269215};
                    ~                                                                                                   ^~~~~~~~~~~
./FIR_lpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_low[17]={0.00204269215, 0.00898840744, 0.0206207223, 0.0395643823, 0.0637154579, 0.0905472413, 0.115091987, 0.132473424, 0.138730109, 0.132473424, 0.115091987, 0.0905472413, 0.0637154579, 0.0395643823, 0.0206207223, 0.00898840744, 0.00204269215};
                    ~                                                                                      ^~~~~~~~~~~
./FIR_lpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_low[17]={0.00204269215, 0.00898840744, 0.0206207223, 0.0395643823, 0.0637154579, 0.0905472413, 0.115091987, 0.132473424, 0.138730109, 0.132473424, 0.115091987, 0.0905472413, 0.0637154579, 0.0395643823, 0.0206207223, 0.00898840744, 0.00204269215};
                    ~                                                                        ^~~~~~~~~~~~
./FIR_lpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_low[17]={0.00204269215, 0.00898840744, 0.0206207223, 0.0395643823, 0.0637154579, 0.0905472413, 0.115091987, 0.132473424, 0.138730109, 0.132473424, 0.115091987, 0.0905472413, 0.0637154579, 0.0395643823, 0.0206207223, 0.00898840744, 0.00204269215};
                    ~                                                          ^~~~~~~~~~~~
./FIR_lpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_low[17]={0.00204269215, 0.00898840744, 0.0206207223, 0.0395643823, 0.0637154579, 0.0905472413, 0.115091987, 0.132473424, 0.138730109, 0.132473424, 0.115091987, 0.0905472413, 0.0637154579, 0.0395643823, 0.0206207223, 0.00898840744, 0.00204269215};
                    ~                                            ^~~~~~~~~~~~
./FIR_lpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_low[17]={0.00204269215, 0.00898840744, 0.0206207223, 0.0395643823, 0.0637154579, 0.0905472413, 0.115091987, 0.132473424, 0.138730109, 0.132473424, 0.115091987, 0.0905472413, 0.0637154579, 0.0395643823, 0.0206207223, 0.00898840744, 0.00204269215};
                    ~                              ^~~~~~~~~~~~
./FIR_lpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_low[17]={0.00204269215, 0.00898840744, 0.0206207223, 0.0395643823, 0.0637154579, 0.0905472413, 0.115091987, 0.132473424, 0.138730109, 0.132473424, 0.115091987, 0.0905472413, 0.0637154579, 0.0395643823, 0.0206207223, 0.00898840744, 0.00204269215};
                    ~               ^~~~~~~~~~~~~
./FIR_lpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_low[17]={0.00204269215, 0.00898840744, 0.0206207223, 0.0395643823, 0.0637154579, 0.0905472413, 0.115091987, 0.132473424, 0.138730109, 0.132473424, 0.115091987, 0.0905472413, 0.0637154579, 0.0395643823, 0.0206207223, 0.00898840744, 0.00204269215};
                    ~^~~~~~~~~~~~~
./FIR_lpf_coefficients.h(3): warning: no previous extern declaration for non-static variable 'h_low' [-Wmissing-variable-declarations]
float32_t h_low[17]={0.00204269215, 0.00898840744, 0.0206207223, 0.0395643823, 0.0637154579, 0.0905472413, 0.115091987, 0.132473424, 0.138730109, 0.132473424, 0.115091987, 0.0905472413, 0.0637154579, 0.0395643823, 0.0206207223, 0.00898840744, 0.00204269215};
          ^
./FIR_lpf_coefficients.h(3): note: declare 'static' if the variable is not intended to be used outside of this translation unit
float32_t h_low[17]={0.00204269215, 0.00898840744, 0.0206207223, 0.0395643823, 0.0637154579, 0.0905472413, 0.115091987, 0.132473424, 0.138730109, 0.132473424, 0.115091987, 0.0905472413, 0.0637154579, 0.0395643823, 0.0206207223, 0.00898840744, 0.00204269215};
^
Main.c(5): warning: In file included from...
./FIR_hpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_high[13]={0.0367027223, -0.00499896705, -0.0380462222, -0.0878198296, -0.141668007, -0.183230251, 0.801150441, -0.183230251, -0.141668007, -0.0878198296, -0.0380462222, -0.00499896705, 0.0367027223};
                     ~                                                                                                                                                                               ^~~~~~~~~~~~
./FIR_hpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_high[13]={0.0367027223, -0.00499896705, -0.0380462222, -0.0878198296, -0.141668007, -0.183230251, 0.801150441, -0.183230251, -0.141668007, -0.0878198296, -0.0380462222, -0.00499896705, 0.0367027223};
                     ~                                                                                                                                                               ^~~~~~~~~~~~~~
./FIR_hpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_high[13]={0.0367027223, -0.00499896705, -0.0380462222, -0.0878198296, -0.141668007, -0.183230251, 0.801150441, -0.183230251, -0.141668007, -0.0878198296, -0.0380462222, -0.00499896705, 0.0367027223};
                     ~                                                                                                                                                ^~~~~~~~~~~~~
./FIR_hpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_high[13]={0.0367027223, -0.00499896705, -0.0380462222, -0.0878198296, -0.141668007, -0.183230251, 0.801150441, -0.183230251, -0.141668007, -0.0878198296, -0.0380462222, -0.00499896705, 0.0367027223};
                     ~                                                                                                                                 ^~~~~~~~~~~~~
./FIR_hpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_high[13]={0.0367027223, -0.00499896705, -0.0380462222, -0.0878198296, -0.141668007, -0.183230251, 0.801150441, -0.183230251, -0.141668007, -0.0878198296, -0.0380462222, -0.00499896705, 0.0367027223};
                     ~                                                                                                                   ^~~~~~~~~~~~
./FIR_hpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_high[13]={0.0367027223, -0.00499896705, -0.0380462222, -0.0878198296, -0.141668007, -0.183230251, 0.801150441, -0.183230251, -0.141668007, -0.0878198296, -0.0380462222, -0.00499896705, 0.0367027223};
                     ~                                                                                                     ^~~~~~~~~~~~
./FIR_hpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_high[13]={0.0367027223, -0.00499896705, -0.0380462222, -0.0878198296, -0.141668007, -0.183230251, 0.801150441, -0.183230251, -0.141668007, -0.0878198296, -0.0380462222, -0.00499896705, 0.0367027223};
                     ~                                                                                        ^~~~~~~~~~~
./FIR_hpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_high[13]={0.0367027223, -0.00499896705, -0.0380462222, -0.0878198296, -0.141668007, -0.183230251, 0.801150441, -0.183230251, -0.141668007, -0.0878198296, -0.0380462222, -0.00499896705, 0.0367027223};
                     ~                                                                          ^~~~~~~~~~~~
./FIR_hpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_high[13]={0.0367027223, -0.00499896705, -0.0380462222, -0.0878198296, -0.141668007, -0.183230251, 0.801150441, -0.183230251, -0.141668007, -0.0878198296, -0.0380462222, -0.00499896705, 0.0367027223};
                     ~                                                            ^~~~~~~~~~~~
./FIR_hpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_high[13]={0.0367027223, -0.00499896705, -0.0380462222, -0.0878198296, -0.141668007, -0.183230251, 0.801150441, -0.183230251, -0.141668007, -0.0878198296, -0.0380462222, -0.00499896705, 0.0367027223};
                     ~                                             ^~~~~~~~~~~~~
./FIR_hpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_high[13]={0.0367027223, -0.00499896705, -0.0380462222, -0.0878198296, -0.141668007, -0.183230251, 0.801150441, -0.183230251, -0.141668007, -0.0878198296, -0.0380462222, -0.00499896705, 0.0367027223};
                     ~                              ^~~~~~~~~~~~~
./FIR_hpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_high[13]={0.0367027223, -0.00499896705, -0.0380462222, -0.0878198296, -0.141668007, -0.183230251, 0.801150441, -0.183230251, -0.141668007, -0.0878198296, -0.0380462222, -0.00499896705, 0.0367027223};
                     ~              ^~~~~~~~~~~~~~
./FIR_hpf_coefficients.h(3): warning: implicit conversion loses floating-point precision: 'double' to 'float32_t' (aka 'float') [-Wimplicit-float-conversion]
float32_t h_high[13]={0.0367027223, -0.00499896705, -0.0380462222, -0.0878198296, -0.141668007, -0.183230251, 0.801150441, -0.183230251, -0.141668007, -0.0878198296, -0.0380462222, -0.00499896705, 0.0367027223};
                     ~^~~~~~~~~~~~
./FIR_hpf_coefficients.h(3): warning: no previous extern declaration for non-static variable 'h_high' [-Wmissing-variable-declarations]
float32_t h_high[13]={0.0367027223, -0.00499896705, -0.0380462222, -0.0878198296, -0.141668007, -0.183230251, 0.801150441, -0.183230251, -0.141668007, -0.0878198296, -0.0380462222, -0.00499896705, 0.0367027223};
          ^
./FIR_hpf_coefficients.h(3): note: declare 'static' if the variable is not intended to be used outside of this translation unit
float32_t h_high[13]={0.0367027223, -0.00499896705, -0.0380462222, -0.0878198296, -0.141668007, -0.183230251, 0.801150441, -0.183230251, -0.141668007, -0.0878198296, -0.0380462222, -0.00499896705, 0.0367027223};
^
Main.c(71): warning: no newline at end of file [-Wnewline-eof]
}
 ^
Main.c(38): warning: unused variable 'k' [-Wunused-variable]
    uint16_t n,k; 
               ^
Main.c(1): warning: In file included from...
c:/Keil_v5/ARM/PACK/ARM/CMSIS/5.7.0/CMSIS/DSP/Include\arm_math.h(1782): warning: padding struct 'arm_fir_instance_f32' with 2 bytes to align 'pState' [-Wpadded]
          float32_t *pState;    /**< points to the state variable array. The array is of length numTaps+blockSize-1. */
                     ^
Main.c(11): warning: no previous extern declaration for non-static variable 'x1' [-Wmissing-variable-declarations]
float32_t x1[N], x2[N], x[N]; 
          ^
Main.c(11): note: declare 'static' if the variable is not intended to be used outside of this translation unit
float32_t x1[N], x2[N], x[N]; 
^
Main.c(11): warning: no previous extern declaration for non-static variable 'x2' [-Wmissing-variable-declarations]
float32_t x1[N], x2[N], x[N]; 
                 ^
Main.c(11): note: declare 'static' if the variable is not intended to be used outside of this translation unit
float32_t x1[N], x2[N], x[N]; 
^
Main.c(11): warning: no previous extern declaration for non-static variable 'x' [-Wmissing-variable-declarations]
float32_t x1[N], x2[N], x[N]; 
                        ^
Main.c(11): note: declare 'static' if the variable is not intended to be used outside of this translation unit
float32_t x1[N], x2[N], x[N]; 
^
Main.c(13): warning: no previous extern declaration for non-static variable 'y_low' [-Wmissing-variable-declarations]
float32_t y_low[N]; 
          ^
Main.c(13): note: declare 'static' if the variable is not intended to be used outside of this translation unit
float32_t y_low[N]; 
^
Main.c(15): warning: no previous extern declaration for non-static variable 'firStateF32_low' [-Wmissing-variable-declarations]
float32_t firStateF32_low[N + K_low - 1];
          ^
Main.c(15): note: declare 'static' if the variable is not intended to be used outside of this translation unit
float32_t firStateF32_low[N + K_low - 1];
^
Main.c(18): warning: no previous extern declaration for non-static variable 'y_high' [-Wmissing-variable-declarations]
float32_t y_high[N]; 
          ^
Main.c(18): note: declare 'static' if the variable is not intended to be used outside of this translation unit
float32_t y_high[N]; 
^
Main.c(20): warning: no previous extern declaration for non-static variable 'firStateF32_high' [-Wmissing-variable-declarations]
float32_t firStateF32_high[N + K_high - 1];
          ^
Main.c(20): note: declare 'static' if the variable is not intended to be used outside of this translation unit
float32_t firStateF32_high[N + K_high - 1];
^
Main.c(26): warning: no previous extern declaration for non-static variable 'dummy' [-Wmissing-variable-declarations]
float32_t dummy; 
          ^
Main.c(26): note: declare 'static' if the variable is not intended to be used outside of this translation unit
float32_t dummy; 
^
Main.c(30): warning: no previous extern declaration for non-static variable 'S' [-Wmissing-variable-declarations]
arm_fir_instance_f32 S;
                     ^
Main.c(30): note: declare 'static' if the variable is not intended to be used outside of this translation unit
arm_fir_instance_f32 S;
^
64 warnings generated.
compiling Main.c...
linking...
Program Size: Code=1076 RO-data=2476 RW-data=120 ZI-data=16088  
".\Objects\DesignFilter.axf" - 0 Error(s), 64 Warning(s).

<h2>Software Packages used:</h2>

Package Vendor: ARM
                http://www.keil.com/pack/ARM.CMSIS.5.7.0.pack
                ARM.CMSIS.5.7.0
                CMSIS (Cortex Microcontroller Software Interface Standard)
   * Component: CORE Version: 5.4.0
   * Component: DSP Variant: Source Version: 1.8.0

Package Vendor: Keil
                https://www.keil.com/pack/Keil.STM32F4xx_DFP.2.17.1.pack
                Keil.STM32F4xx_DFP.2.17.1
                STMicroelectronics STM32F4 Series Device Support, Drivers and Examples
   * Component: Startup Version: 2.6.3

<h2>Collection of Component include folders:</h2>
  .\RTE\_Target_1
  c:\Keil_v5\ARM\PACK\ARM\CMSIS\5.7.0\CMSIS\Core\Include
  c:\Keil_v5\ARM\PACK\ARM\CMSIS\5.7.0\CMSIS\DSP\Include
  c:\Keil_v5\ARM\PACK\ARM\CMSIS\5.7.0\CMSIS\DSP\PrivateInclude
  c:\Keil_v5\ARM\PACK\Keil\STM32F4xx_DFP\2.17.1\Drivers\CMSIS\Device\ST\STM32F4xx\Include

<h2>Collection of Component Files used:</h2>

   * Component: ARM::CMSIS:CORE:5.4.0

   * Component: ARM::CMSIS:DSP:Source:1.8.0
      Include file:  CMSIS\DSP\Include\arm_math.h
      Source file:   CMSIS\DSP\Source\DistanceFunctions\DistanceFunctions.c
      Source file:   CMSIS\DSP\Source\TransformFunctions\TransformFunctions.c
      Source file:   CMSIS\DSP\Source\FastMathFunctions\FastMathFunctions.c
      Source file:   CMSIS\DSP\Source\FilteringFunctions\FilteringFunctions.c
      Source file:   CMSIS\DSP\Source\BasicMathFunctions\BasicMathFunctions.c
      Source file:   CMSIS\DSP\Source\ComplexMathFunctions\ComplexMathFunctions.c
      Source file:   CMSIS\DSP\Source\SupportFunctions\SupportFunctions.c
      Source file:   CMSIS\DSP\Source\BayesFunctions\BayesFunctions.c
      Source file:   CMSIS\DSP\Source\ControllerFunctions\ControllerFunctions.c
      Source file:   CMSIS\DSP\Source\MatrixFunctions\MatrixFunctions.c
      Source file:   CMSIS\DSP\Source\SVMFunctions\SVMFunctions.c
      Source file:   CMSIS\DSP\Source\StatisticsFunctions\StatisticsFunctions.c
      Source file:   CMSIS\DSP\Source\CommonTables\CommonTables.c

   * Component: Keil::Device:Startup:2.6.3
      Source file:   Drivers\CMSIS\Device\ST\STM32F4xx\Source\Templates\system_stm32f4xx.c
      Source file:   MDK\Device\Source\ARM\STM32F40xxx_41xxx_OPT.s
      Source file:   Drivers\CMSIS\Device\ST\STM32F4xx\Source\Templates\arm\startup_stm32f407xx.s
      Include file:  Drivers\CMSIS\Device\ST\STM32F4xx\Include\stm32f4xx.h
      Source file:   MDK\Device\Source\ARM\STM32F4xx_OTP.s
Build Time Elapsed:  00:00:02
</pre>
</body>
</html>

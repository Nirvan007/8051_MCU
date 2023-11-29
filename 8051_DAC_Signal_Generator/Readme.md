Display a staircase wave signal on a Cathode Ray Oscilloscope (CRO) using an Atmega AT89S52 (8051) MCU and DAC0808 <a name="TOP"></a>
===================

## Table of Contents
* [Tool Description](#Tool-Description)
* [Aim](#Aim)
* [Theory](#Theory)
* [DAC0808 Features](#DAC0808-Features)
* [Schematic](#Schematic)
* [Conclusion](#Conclusion)

## Tool Description
* Keil uVision 5 IDE is a comprehensive integrated development environment tailored for 8051 microcontroller-based projects. Developed by ARM, it offers a user-friendly platform for writing, compiling, and debugging embedded C programs. With support for various 8051 derivatives, it provides a rich set of features including code editing, project management, and simulation capabilities. The IDE seamlessly integrates the Keil C51 compiler and debugger, streamlining the development process for 8051-based applications. Its intuitive interface and powerful tools make it a preferred choice for embedded systems developers, facilitating efficient coding, testing, and debugging in a single environment.

## Aim
* Write a program to display a staircase wave signal on a Cathode Ray Oscilloscope (CRO) using an 8051 microcontroller and DAC0808 digital-to-analog converter.

## Theory
* DAC 0808 is an 8-bit digital-to-analog converter.
* It can convert an 8-bit digital data input into an analog voltage output.
* Reference voltage for conversion is provided using +VREF and –VREF.
* The output can be amplified (optional) using an op-amp.
* DACs are used in various applications such as Waveform generation, PWM, Motor control Applications, DSP, etc.
* Here we connect the output to a display device like a CRO.

## DAC0808 Features
* Relative exactness at ±0.19% highest error
* The range of voltage power supply will be ±4.5V to ±18VN
* Noninverting digital inputs are compatible with CMOS & TTL
* The settling time is very fast 150 ns
* The digital data input is 8-bit parallel

## Schematic
![image](https://github.com/Nirvan007/8051_MCU/assets/127144315/09c6b217-e0bc-45dc-a784-0bccd21d35f1)

## Conclusion
I learned the interfacing of a DAC with an 8051 microcontroller. I also learned that the DAC needs a specific process of initialization and the conversion of digital to analog signal will further be given to V to I convertor.  

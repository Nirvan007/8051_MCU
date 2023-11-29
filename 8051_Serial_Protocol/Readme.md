Display text on LCD using Serial Protocol on an 8051 microcontroller <a name="TOP"></a>
===================

## Table of Contents
* [Tool Description](#Tool-Description)
* [Aim](#Aim)
* [Theory](#Theory)
* [Schematic](#Schematic)
* [Conclusion](#Conclusion)

## Tool Description
* Keil uVision 5 IDE is a comprehensive integrated development environment tailored for 8051 microcontroller-based projects. Developed by ARM, it offers a user-friendly platform for writing, compiling, and debugging embedded C programs. With support for various 8051 derivatives, it provides a rich set of features including code editing, project management, and simulation capabilities. The IDE seamlessly integrates the Keil C51 compiler and debugger, streamlining the development process for 8051-based applications. Its intuitive interface and powerful tools make it a preferred choice for embedded systems developers, facilitating efficient coding, testing, and debugging in a single environment.

## Aim
* Write a program to display a "HELLO" text on an LCD using an 8051 microcontroller over Serial protocol.

## Theory
* Serial communication is mostly used for transmitting and receiving the signal. The 8051 microcontroller is consisting of a Universal Asynchronous Receiver Transmitter (UART) used for serial communication. The signals are transmitted and received by the Rx and Tx pins of the microcontroller. The UART takes individual bytes of data and sends the individual bits in a sequential manner. The registers are used for collecting and storing the data inside a memory. UART is based on a half-duplex protocol. Half-duplex means transferring and receiving the data, but not at the same time.

## Schematic
![image](https://github.com/Nirvan007/8051_MCU_Projects/assets/127144315/144eae72-8c7d-4807-975a-da2e1140f887)

## Conclusion
I learned the interfacing of an LCD with an 8051 microcontroller and sending a string over Serial protocol.

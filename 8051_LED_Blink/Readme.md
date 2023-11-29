Interfacing LED with Atmega AT89S52 (8051) MCU <a name="TOP"></a>
===================

## Table of Contents
* [Tool Description](#Tool-Description)
* [Aim](#Aim)
* [Schematic](#Schematic)
* [Analyses](#Analyses)
  * [DC](#DC)
  * [Transient](#Transient)

## Tool Description
* Keil uVision 5 C51 IDE is a comprehensive integrated development environment tailored for 8051 microcontroller-based projects. Developed by ARM, it offers a user-friendly platform for writing, compiling, and debugging embedded C programs. With support for various 8051 derivatives, it provides a rich set of features including code editing, project management, and simulation capabilities. The IDE seamlessly integrates the Keil C51 compiler and debugger, streamlining the development process for 8051-based applications. Its intuitive interface and powerful tools make it a preferred choice for embedded systems developers, facilitating efficient coding, testing, and debugging in a single environment.

## Aim
* Write a program to toggle an LED on port 1, pin P1.0 with a delay using an 8051 microcontroller and Keil μvision 5 software. 

## Schematic
![image](https://github.com/Nirvan007/8051_MCU/assets/127144315/8f3bf9b1-2bc7-4958-ab8b-bca9308daa47)

## Analyses
![image](https://github.com/Nirvan007/Analog_Electronics/assets/127144315/c8945ee2-221d-40ef-84bc-25117df56fa3)

### DC
![image](https://github.com/Nirvan007/Analog_Electronics/assets/127144315/bc5561ab-cc39-422a-9c4e-c8e55b93b106)

### Transient
![image](https://github.com/Nirvan007/Analog_Electronics/assets/127144315/08148d57-24fa-41d0-b471-66ece271dd83)

## Output VTC Graph
![image](https://github.com/Nirvan007/Analog_Electronics/assets/127144315/48ac65c5-dd8a-4f2b-a36f-905e3e3bd5e3)
![image](https://github.com/Nirvan007/Analog_Electronics/assets/127144315/5baa6c75-1fc2-4ce7-910f-ca6346a1b42a)

## Conclusion
* As calculated in theory, the practical simulation results were the same, that is after a transient analysis of 1ms delay, the capacitor charges linearly until it reaches the 1V mark.

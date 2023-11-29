Interfacing 16x2 LCD with Atmega AT89S52 (8051) microcontroller  <a name="TOP"></a>
===================

## Table of Contents
* [Tool Description](#Tool-Description)
* [Aim](#Aim)
* [Theory](#Theory)
* [LCD Interfacing](#LCD-Interfacing)
* [Schematic](#Schematic)
* [Program Flowchart](#Program-Flowchart)
* [Conclusion](#Conclusion)

## Tool Description
* Keil uVision 5 IDE is a comprehensive integrated development environment tailored for 8051 microcontroller-based projects. Developed by ARM, it offers a user-friendly platform for writing, compiling, and debugging embedded C programs. With support for various 8051 derivatives, it provides a rich set of features including code editing, project management, and simulation capabilities. The IDE seamlessly integrates the Keil C51 compiler and debugger, streamlining the development process for 8051-based applications. Its intuitive interface and powerful tools make it a preferred choice for embedded systems developers, facilitating efficient coding, testing, and debugging in a single environment.

## Aim
* To interface the 16*2 char LCD and display characters on LCD.

## Theory
* A display that consists of two polarizing transparent panels and a liquid crystal surface sandwiched in between. An electric current passed through the liquid causes the crystals to align so that light cannot pass through them. The LCD has the ability to display numbers, characters, and graphics.
* A sample photo of the LCD module is shown in the figure:
* ![image](https://github.com/Nirvan007/8051_MCU/assets/127144315/0ff08fc3-34e2-4670-b99d-acc1059b1a6d)

## LCD Interfacing
* LCD PIN DESCRIPTION: The LCD we used in the module has 16 pins. The function of each pin is 
* ![image](https://github.com/Nirvan007/8051_MCU/assets/127144315/cc62a320-595e-4578-8e3c-a3c416ac53ed)

* RS (Register select): The RS pin is used for the selection of these registers. If RS = 0, the Instruction command code register is selected, allowing the user to send a command. If RS= 1 the data register is selected, allowing the user to send data to be displayed on the LCD
 * There are two very important registers inside the LCD
 1] Command code register
 2] Data register

* R/W (Read/ Write): R/W input allows the user to write information to the LCD or write information from it. 
 * R/W = 1 ; When reading
 * R/W = 0 ; When Writing
 
* E (Enable): The enable pin is used by the LCD to latch information presented to its data pins. When data is supplied to data pins, a high-to-low pulse must be applied to this pin in order for the LCD to latch in the data present at the data pins. This pulse must be a minimum of 450 ns wide. 

* DO — D7 (Data pins): The 8-bit data pins, DO — D7, are used to send information to the LCD or read the contents of the LCD's internal registers. 

* LCD A & K (Backlight control) This is the cathode and anode pins of LCD. The K pin is grounded, and a pin is connected to the potentiometer to control the backlight of the LCD. 

## Schematic
![image](https://github.com/Nirvan007/8051_MCU/assets/127144315/3587a936-8188-40bf-acd3-df8055240f99)

## Program Flowchart
![image](https://github.com/Nirvan007/8051_MCU/assets/127144315/c50c4a7c-0024-41ea-aced-aef7a226c25b)

## Conclusion
I was able to print the letters, symbols, and numbers on the LCD and learned the interfacing of the 16x2 LCD with 8051 microcontroller using Keil μvision 5 software. 

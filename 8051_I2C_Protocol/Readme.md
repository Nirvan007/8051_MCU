I2C and EEPROM interfacing using an Atmega AT89S52 (8051) MCU and EEPROM <a name="TOP"></a>
===================

## Table of Contents
* [Tool Description](#Tool-Description)
* [Aim](#Aim)
* [Theory](#Theory)
* [Procedure](#Procedure)
* [Schematic](#Schematic)
* [Conclusion](#Conclusion)

## Tool Description
* Keil uVision 5 IDE is a comprehensive integrated development environment tailored for 8051 microcontroller-based projects. Developed by ARM, it offers a user-friendly platform for writing, compiling, and debugging embedded C programs. With support for various 8051 derivatives, it provides a rich set of features including code editing, project management, and simulation capabilities. The IDE seamlessly integrates the Keil C51 compiler and debugger, streamlining the development process for 8051-based applications. Its intuitive interface and powerful tools make it a preferred choice for embedded systems developers, facilitating efficient coding, testing, and debugging in a single environment.

## Aim
* 8051 and EEPROM interfacing using I2C interface.

## Theory
### I²C: 
I²C is a serial computer bus, which was invented by NXP semiconductors previously it was named Philips semiconductors. The I²C bus is used to attach low-speed peripheral integrated circuits to microcontrollers and processors. I²C bus uses two bidirectional open-drain lines such as SDA (serial data line) and SCL (serial clock line) and these are pulled up with resistors. I²C bus permits a master device to start communication with a slave device. Data is interchanged between these two devices. Typical voltages used are +3.3V or +5V although systems with extra voltages are allowed. Nowadays new microcontrollers have inbuilt I²C Registers. But in 8051 there are no such registers. So it is required to achieve I²C in 8051.
Many devices support I²C. For example, EEPROM, ADC, LCD, etc. 

### EEPROM: 
Electrically Erasable Programmable ROM (EEPROM) is a user-modifiable ROM that can be removed and reprogrammed frequently through the application of higher-than-normal electrical voltage. An EEPROM is a kind of non-volatile memory used in electronic devices like computers to store small quantities of data that should be saved when power is detached.

## Procedure
### Write Mode
 1.	Send the START command from the Master.
 2.	Send Device (EEPROM) Address with write mode.
 3.	Send the Register address in Device (EEPROM), Where we have to access.
 4.	Send the Data to the Device (EEPROM).
 5.	If you want to send more than one byte, keep sending that byte.
 6.	Finally, Send the STOP command.

### Read Mode
 1.	Send the START command from the Master.
 2.	Send Device (EEPROM) Address with write mode.
 3.	Send the Register address in Device (EEPROM), Where we have to access.
 4.	Send again the START command or the Repeated START command.
 5.	Send Device address with Read mode.
 6.	Read the data from the Device (EEPROM).
 7.	Finally, Send a STOP command.

### START Command
1. Initially, SDA and SCL are High.
2.	SDA first goes to Zero.
3.	Then SCL goes to Zero.
* ![image](https://github.com/Nirvan007/8051_MCU_Projects/assets/127144315/36d9a904-1ed6-4663-904e-6fe981830e7d)


### STOP Command
1. When SCL is High, We have to toggle the SDA from Low to High.
* ![image](https://github.com/Nirvan007/8051_MCU_Projects/assets/127144315/09291f99-05e1-455e-8c0a-5af092522102)

## Schematic
1. SCK – P3.6;
2. SDA – P3.7
* ![image](https://github.com/Nirvan007/8051_MCU_Projects/assets/127144315/f3d0dd98-1c35-464c-ad20-1e77d80d6820)

## Conclusion
I learned the interfacing of a DAC with an 8051 microcontroller. I also learned that the DAC needs a specific process of initialization and the conversion of digital to analog signal will further be given to V to I convertor.  

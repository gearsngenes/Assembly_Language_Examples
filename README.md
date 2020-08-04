# Assembly Language Examples
This repository gives example codes that are used for Assembly language programming. These files are all **"Assembler Source"** files or **".s"** files.
## Hardware
This style of assembly is meant for the ARM chip found on Raspberry pi. I do not know if this code will work with other systems, so be sure to check what OS you are using before using these programs.
## Running the Code
Assuming you are running a Raspberry Pi terminal, on Raspbian, you need to execute a few command lines, first.

First, make sure you are in the correct directory. Make sure your assembly program is in it.
Second, run the following line
**as -g -mfpu=vfpv2 -o filename.o filename.s**
This takes your file "filename".s and produces a .o file from it. This is also where your computer will let you know if and where there are errors in your code.

Third, run the following line:
**gcc -o filename filename.o**
This makes it almost commandline-executable.

Fourth, and finally, run the following line:
**./filename ; echo $?**
The terminal will output for most, if not all, of these program files the value stored in register r0.

/* This program shows you how to load values into registers*/

.data			/* .data is effectively where we store constants or values in designated spaces */

.balign 4		/*.balign means that the next 4 bytes (32 bits) are reserved for the next value*/

myvar1:			/* you name a variable myvar1*/
    .word 3		/*.word stores the value of 3 at the address of myvar1 in the designated space*/


.balign 4		/* designate 4 bytes to the next variable
myvar2:
    .word 6		/* .word stores the value of 6 at the address of myvar2 in the designated space*/


.text			/* .text is where code like our first.s and sum.s would go*/

.balign 4 		/* ensure code is 4 byte aligned*/
.global main 		/*public calls directed to main*/
main:
    ldr r1, addr_var1	/* load the address of variable 1 into register r1*/
    ldr r1, [r1]	/* This uses the address stored in r1 like an array index to load the value 3 into register r1*/
    ldr r2, addr_var2	/* load the address of variable 2 into register r2*/
    ldr r2, [r2]	/* This uses the address stored in r2 like an array index to load the value 4 into register r2*/
    add r0, r1, r2	/* add the values of r1 and r2 into register r0*/
    bx lr		/* exit the program and display the value stored in r0*/

/* these are the new addresses of our variables created in the .data section */
addr_var1: .word myvar1
addr_var2: .word myvar2
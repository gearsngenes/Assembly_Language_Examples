/*Making an Array in Assembly*/
.data
a: .skip 400    /*space for 100 32-bit (4-byte) integers*/
.text
.global main
main:
    ldr r1, =a                  /*get the base address of array a*/
    mov r2, #0                  /*start counter at 0*/
loop:
    cmp r2, #100                /*did we finish 100 elements? yes then stop, el$
    beq end_loop                /*end of the loop*/
    add r3, r1, r2, LSL #2      /*r3 <- address of next integer entry. last add$
    str r2, [r3]                /*store value of r2 in the address at r3*/
    add r2, r2, #1              /*increment r2 by 1*/
    b loop                      /*back to the top of the loop*/
end_loop:
    ldr r1, =a
    ldr r2, [r1, #+20]		/*accessing the (n/4)th index in the array*/
    add r0, r2, #0
end:
    bx lr
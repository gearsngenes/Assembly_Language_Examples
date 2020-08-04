/* This program shows how you can store data into variables and returns the sum of those stored values*/
.data
/* aligning with 4 byte space */
.align 4
myvar1:
    /* setting it to 0 */
    .word 0
.align 4
myvar2:
    .word 0
/* -- Code section */
.text
.balign 4
.global main
main:
    ldr r1, addr_v1
    mov r3, #3
    str r3, [r1] /*store value of r3 in the address stored by r1*/
    mov r3, #4
    ldr r2, addr_v2
    str r3, [r2]
    /* same instructions as above */
    ldr r1, addr_v1
    ldr r1, [r1]
    ldr r2, addr_v2
    ldr r2, [r2]
    add r0, r1, r2
    bx lr
addr_v1: .word myvar1
addr_v2: .word myvar2
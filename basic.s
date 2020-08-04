/*--First Assembly code*/
.global main /*.global means public calls of this program work and go to main*/
.func main /*declaring main as a function*/
main:
    mov r0, #7 /*store the value of 7 in register r0*/
    bx lr /*exit this program, causes the computer to show the value stored in r0*/

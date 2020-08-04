/*This code returns the sum of two numbers*/
.global main /*makes public calls to this program are directed to main*/
.func main /*main is set up as a function*/

main:
    mov r0, #3		/* r0 <- 3 */
    mov r2, #4 		/* r2 <- 4 */
    add r0, r0, r2	/* r0 <- r0 + r2 */
    bx lr		/* exit program and display value stored in r0 */

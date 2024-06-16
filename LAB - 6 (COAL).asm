// Write a set of instructions to alter the contents of flag register in 8085

PUSH PSW    // Save flags on stack
POP H            // Retrieve flags in L
MOV A,L      // Flags in accumulator
CMA             //Complement accumulator
MOV L,A     // Accumulator in 'L'
PUSH H      // Save on stack
POP PSW  // Back to flag register
HLT           //Terminate program execution

// Calculate the sum of series of numbers, The length of the series is in memory location 4200H  and the series begins from memory location 4201H
//  a) Consider the sum to be 8 bit number So, ignore carries, Store the sum at memory location 4300H
MVI A,04H
STA 4200H
MVI A,10H
STA 4201H
MVI A,45H
STA 4202H
MVI A,33H
STA 4203H
MVI A,22H
STA 4204H

LDA 4200H
MOV C,A
SUB A
LXI H,4201H
BACK: ADD M 
INX H
DCR C
JNZ BACK
STA 4300H
HLT

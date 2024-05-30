 // ------------------------ Lab - 4 ------------------------------------------- 
Program 1- Subtract the 16-bit number in memory locations 4002H and 4003H from the 16-bit number inmemory locations 4000H and 4001H -The most significant eight bits of the two numbers are in memory locations 4001H and 4003H- Store the result in memory locations 4004H and 4005H with the most significant byte in memory location 4005H-
// 4000H = 15H, 4001H = 1CH, 4002H = B7H, and 4003H = 5AH
MVI A,15H
STA 4000H
MVI A,1CH
STA 4001H
MVI A,B7H
STA 4002H
MVI A,5AH
STA 4003H

LHLD 4000H  //STORE IN H L  PAIR
XCHG  // EXCHANGE TO D E PAIR
LHLD 4002H // STORE IN H L PAIR
// FOR L,E
MOV A,E
SUB L
MOV L,A
// FOR H,D
MOV A,D
SBB H  //BORROW
MOV H,A
// STORE IN 4004 & 4005
SHLD 4004
HLT

// Program 2- Find the l's complement of the number stored at memory location 4400H and store the complemented number at memory location 4300H

MVI A,55H
STA 4400H
LDA 4400H
CMA
STA 4300H
HLT

// Program 3- Find the 2's complement of the number stored at memory location 4200H and store the complemented number at memory location 4300H

MVI A,55H
STA 4200H
LDA 4200H
CMA
ADI 01H
STA 4300H
HLT
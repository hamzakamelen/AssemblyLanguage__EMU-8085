// 17 Statement Multiply two 8-bit numbers stored in memory locations 2200H and 2201H by repetitive addition  and store the result in memory locations 2300H and 2301H
MVI A,03H
STA 2200H
MVI A,B2H
STA 2201H

LDA 2200H
MOV E,A
MVI D, 00 // Get the first number in DE register pair
LDA 2201H
MOV C,A //Initialize counter
LXI H,0000 H // Result = 0
BACK: DAD D // Result = result + first number
DCR C // Decrement count
JNZ BACK  // If count 0 repeat
SHLD 2300H // Store result
HLT // Terminate program executio

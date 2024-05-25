// Lab -2 -  Subtract the content of memory location 4001H from memory location 4000H and place result in memory location 4002H
MVI A,03
STA 4000H
LXI H,4000
MOV A,M
INX H
ADD M
INX H
MOV M,A
LXI H,4000H
MOV A,M
INX H
SUB M
INX H
MOV M,A
HLT

//Read the program given below and state the contents of all registers after the execution of each instruction in sequence
// ---------- Sub - Routine Program -----------------

LXI SP,27FFH
LXI H,2000H
LXI B,1020H
CALL SUB
HLT

SUB: PUSH B
PUSH H
LXI B,4080H
LXI H,4090H
SHLD 2200H
DAD B
POP H
POP B
RET
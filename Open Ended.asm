// At memory Locastion 4038H today's date is saved, Also at mem location 2003H your Roll no is saved, You need to add and Subtract both Numbers and store result in 5003H and 5010H respectively

// Saved Date 
MVI A,27H
STA 4038H
// Saved Roll No
MVI A,9H
STA 2003H

LDA 2003H
MOV C,A

LDA 4038H
ADD C
STA 5003H

LDA 4038H
SUB C
STA 5010H
HLT
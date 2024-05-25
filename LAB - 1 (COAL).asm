// LAB -1- Initialize two values and store them in memory location, Retrive data in accumulator from specific memory location
	   MVI B,4A
	   MOV A,B
	   STA 022A
	   MVI A,00
	   LDA 022A
// --OR--
	   MVI B,FF
	   MOV A,B
	   STA 300F
	   MVI A,00
	   LDA 300F

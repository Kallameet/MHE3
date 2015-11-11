EQU ReadAddress, 3000
EQU WriteAddress, 3100
EQU LoopMax, 10

MACRO ShiftLeft4
	SHL R2
	SHL R2
	SHL R2
	SHL R2
ENDM

MACRO ShiftLeft8
	SHL R3
	SHL R3
	SHL R3
	SHL R3
	SHL R3
	SHL R3
	SHL R3
	SHL R3
ENDM

MACRO ShiftLeft12
	SHL R4
	SHL R4
	SHL R4
	SHL R4
	SHL R4
	SHL R4
	SHL R4
	SHL R4
	SHL R4
	SHL R4
	SHL R4
	SHL R4
ENDM

MACRO ShiftLeft6
	SHL R5
	SHL R5
	SHL R5
	SHL R5
	SHL R5
	SHL R5
ENDM

start:
	LOADI R0, LoopMax	; Loop index
	LOADI R1, 0		; 3 downto 0
	LOADI R2, 0		; 7 downto 4
	LOADI R3, 0		; 11 downto 8
	LOADI R4, 0		; 15 downto 12

	LOADI R7, ReadAddress
	LOAD R5, R7
		
	ShiftLeft6
		
loopStart:
	; add 3 if column greater euqals 5
	LOADI R7, 5
	COMP R1, R7
	
	LOADI R7, noAdd1
	JUMPC R7

	LOADI R7, 3
	Add R1, R7
noAdd1:
	
	LOADI R7, 5
	COMP R2, R7
	
	LOADI R7, noAdd2
	JUMPC R7

	LOADI R7, 3
	Add R2, R7
noAdd2:

	LOADI R7, 5
	COMP R3, R7
	
	LOADI R7, noAdd3
	JUMPC R7

	LOADI R7, 3
	Add R3, R7
noAdd3:

	LOADI R7, 5
	COMP R4, R7
	
	LOADI R7, noAdd4
	JUMPC R7

	LOADI R7, 3
	Add R4, R7
noAdd4:	
	; shift
	SHL R5
	
	SHLC R1
	LOADI R7, 0FFF0h
	ADD R7, R1
	
	SHLC R2
	LOADI R7, 0FFF0h
	ADD R7, R2
	
	SHLC R3
	LOADI R7, 0FFF0h
	ADD R7, R3
	
	SHLC R4
	LOADI R7, 0FFF0h
	ADD R7, R4
	
	; delete upper bits
	LOADI R7, 000Fh
	AND R1, R7
	AND R2, R7
	AND R3, R7
	AND R4, R7
	
	; check index
	DEC R0	
	LOADI R7, end
	JUMPZ R7
	LOADI R7, loopStart
	JUMP R7
	
end:
	ShiftLeft4
	ShiftLeft8
	ShiftLeft12
	
	ADD R1, R2
	ADD R1, R3
	ADD R1, R4
	
	LOADI R7, WriteAddress
	STORE R1, R7

	LOADI R7, start
	JUMP R7

EQU ReadAddress, 3000d
EQU WriteAddress, 3100d
EQU LoopMax, 10d

MACRO CheckLoopIndex	
	DEC R0	
	LOADI R7, end
	JUMPZ R7
	LOADI R7, loopStart
	JUMP R7
ENDM

MACRO ShiftR2Left4
	SHL R2
	SHL R2
	SHL R2
	SHL R2
ENDM

MACRO ShiftR3Left8
	SHL R3
	SHL R3
	SHL R3
	SHL R3
	SHL R3
	SHL R3
	SHL R3
	SHL R3
ENDM

MACRO ShiftR4Left12
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

MACRO ShiftR5Left6
	SHL R5
	SHL R5
	SHL R5
	SHL R5
	SHL R5
	SHL R5
ENDM

MACRO SetCarryFlag
	LOADI R7, 0d
	LOADI R6, 1d
	COMP R7, R6 ; set carry
ENDM

MACRO CheckIfR6IsGreaterEquals5
	LOADI R7, 5d
	COMP R6, R7
	
	LOADI R7, noAdd
	JUMPC R7

	LOADI R7, 3d
	Add R6, R7
	
noAdd:	
ENDM

start:
	LOADI R0, LoopMax	; Loop index
	LOADI R1, 0d		; 3 downto 0
	LOADI R3, 0d		; 7 downto 4
	LOADI R3, 0d		; 11 downto 8
	LOADI R4, 0d		; 15 downto 12

	LOADI R7, ReadAddress
	LOAD R5, R7
		
	ShiftR5Left6
		
loopStart:
	
	MOVE R6, R1
	CheckIfR6IsGreaterEquals5
	MOVE R1, R6
	
	MOVE R6, R2
	CheckIfR6IsGreaterEquals5
	MOVE R2, R6
	
	MOVE R6, R3
	CheckIfR6IsGreaterEquals5
	MOVE R3, R6
	
	MOVE R6, R4
	CheckIfR6IsGreaterEquals5
	MOVE R4, R6
	
	
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
	
	CheckLoopIndex
	
end:
	ShiftR2Left4
	ShiftR3Left8
	ShiftR4Left12
	
	ADD R1, R2
	ADD R1, R3
	ADD R1, R4
	
	LOADI R7, WriteAddress
	STORE R1, R7
	

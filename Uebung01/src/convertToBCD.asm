EQU ReadAddress, 3000d
EQU WriteAddress, 3100d
EQU LoopMax, 10d

MACRO CheckLoopIndex
	DEC R0
	JUMPZ end
	JUMP loopStart
ENDM

MACRO ShiftR1Left4
	SHL R1
	SHL R1
	SHL R1
	SHL R1
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

MACRO ShiftR3Left12
	SHL R3
	SHL R3
	SHL R3
	SHL R3
	SHL R3
	SHL R3
	SHL R3
	SHL R3
	SHL R3
	SHL R3
	SHL R3
	SHL R3
ENDM

MACRO ShiftR6Left6
	SHL R6
	SHL R6
	SHL R6
	SHL R6
	SHL R6
	SHL R6
ENDM

start:
	LOADI R0, LoopMax	; Loop index
	LOADI R1, 0d		; 3 downto 0
	LOADI R3, 0d		; 7 downto 4
	LOADI R3, 0d		; 11 downto 8
	LOADI R4, 0d		; 15 downto 12

	LOADI R7, ReadAddress
	LOAD R6, R7
		
	ShiftR6Left6
		
loopStart:
		
	SHL R6
	SHLC R1
	SHLC R3
	SHLC R3
	SHLC R4
	
	CheckLoopIndex
	
end:
	ShiftR1Left4
	ShiftR3Left8
	ShiftR3Left12
	
	ADD R0, R1
	ADD R0, R2
	ADD R0, R3
	
	LOADI R7, WriteAddress
	STORE R0, R7
	

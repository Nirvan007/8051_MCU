ORG       0000H                                                    ;START OF MAIN PROGRAM FROM MAIN
AJMP    MAIN

MAIN:   MOV     P0,          #0FFH                                   ;CONFIGURE PORT-0 AS INPUT PORT
MOV     P1,          #0FFH                                   ;BLANK THE SSD'S common anode
NEXT:    MOV     A,            P0                                                           ;READ THE KEY BOARD
CJNE A, #77H, CHECKKEY1          
ACALL    KEYDEBOUNCE
MOV     P1,          #0FEH                                                   ;ENABLE SSD-0

 MOV     P2,          #0C0H                                   ;DISPLAY-0
 ACALL   NEXT                                     ;CHECK FOR NEXT KEY PRESS
 
 CHECKKEY1:        CJNE A, #7BH, CHECKKEY2            ;READAGAIN
 ACALL    KEYDEBOUNCE
 MOV     P1,          #0FDH                                   ;ENABLE SSD-1
 MOV     P2,          #0F9H                                   ;DISPLAY-1
 ACALL   NEXT                                     ;CHECK FOR NEXT KEY PRESS

 CHECKKEY2:        CJNE A, #7DH, CHECKKEY3            ;READAGAIN
 ACALL    KEYDEBOUNCE
 MOV     P1,          #0FBH                                   ;ENABLE SSD-2
 MOV     P2,          #0A4H                                   ;DISPLAY-2
 ACALL   NEXT                                     ;CHECK FOR NEXT KEY PRESS

 CHECKKEY3:        CJNE A,#7EH, NEXT          ;READAGAIN
 ACALL    KEYDEBOUNCE
 MOV     P1,          #0F7H                                  ;ENABLE SSD-3
 MOV     P2,          #0B0H                                   ;DISPLAY-3
 ACALL   NEXT                                     ;CHECK FOR NEXT KEY PRESS

 
;DeBOUNCE subroutine for 100 msec

KEYDEBOUNCE:         MOV      TMOD,    #10H                                   ;TIMER-1, MODE-1  
MOV      R0,             #14H                                 ; COUNT FOR 20D
REPEAT: MOV          TL1,            #3CH                                 ; LOWER BYTE OF COUNT    
MOV      TH1,           0B0H                                 ; HIGHER BYTE OF COUNT
MOV      TCON,     #40H                                    ;START TIMER-1
WAIT:  JNB            TCON.7, WAIT                                    ;WAIT FOR OVERFLOW
MOV      TCON,     #00H                                    ; STOP THE TIMER-1
DJNZ      R0,            REPEAT                              ; 20 D TIMES COUNTING
RET

END
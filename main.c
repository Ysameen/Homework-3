
Section .data

WELCOME_MSG       db "Welcome to your friendly area calculator.",13,10
WELCOME_MSG_LEN  equ $-WELCOME_MSG

CALL_STRING          db "The main program will now call the area function.",15,10
CALL_STRING_LEN     equ $-CALL_area.asm

Section .text
global_start
_start:
 


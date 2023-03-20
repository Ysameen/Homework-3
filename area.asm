section .data


AREA_STRING            db "This area function is fondly brought to you by Yasmeen Plascencia.",16,10
AREA_STRING_LEN        equ $-AREA_STRING

INPUT_RADIUS           db "Please enter the radius of a circle in whole number of meters: ",17,10
INPUT_RADIUS_LEN       equ $-INPUT_RADIUS

ECHO_INPUT_MSG         db "The number [RADIUS] was received.",18,10
ECHO_INPUT_MSG_LEN     equ $-NUM_STRING

CIRCLE_STRING          db "The area of a circle with this radius is [.result] and [.meters] square meters.",19,10
CIRCLE_STRING_LEN      equ $-CIRCLE_STRING
MAIN_STRING            db "The integer part of the area will be returned to the main program. Please enjoy your circles.",19,10
MAIN_STRING_LEN        equ $-MAIN_STRING

.text
l.s $f12 PI 
l.s $f14, radius 
mul.s $f12, $f12,$f14 #PI * radius
mul.s $f12, $f12 $f14 #PI * radius * radius = .result, .float ?
li $v0 2 
syscall = meters: .float ?

PI: .float 3.1415926
RADIUS: .float ?

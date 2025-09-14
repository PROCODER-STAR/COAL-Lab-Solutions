INCLUDE Irvine32.inc
.data
val SBYTE -10
msg1 BYTE "Value '-10' loaded on al: ", 0
msg2 BYTE "Value '-10' loaded on ax by movsx: ", 0
msg3 BYTE "Value '-10' loaded on ax by movzx: ", 0

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString

    mov al, val
    call WriteHex
    call CRLF

    mov edx, OFFSET msg2
    call WriteString

    movsx ax, val
    call WriteHex
    call CRLF

    mov edx, OFFSET msg3
    call WriteString

    movzx ax, val
    call WriteHex
    exit
main ENDP
END main

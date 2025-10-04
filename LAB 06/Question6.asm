Include Irvine32.inc
.data
    msg1 BYTE "Hola! This is my first message. ", 0
    msg2 BYTE "Adios!", 0

.code
main PROC

    mov edx, OFFSET msg1
    call WriteString
    call CRLF

    jmp SkipSecondMessage

    mov edx, OFFSET msg2
    call WriteString
    call CRLF

SkipSecondMessage:
    exit

main ENDP
END main

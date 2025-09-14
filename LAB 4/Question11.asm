INCLUDE Irvine32.inc
.data
val1 BYTE 10h
val2 WORD 8000h
val3 DWORD 0FFFFh
val4 WORD 7FFFh

msg1 BYTE "After Incrementing val2: ", 0
msg2 BYTE "After subtracting val3 from EAX: ", 0
msg3 BYTE "After subtracting val4 from val2: ", 0
msg4 BYTE "Value of BL after moving val1: ", 0

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString
    inc val2
    movzx eax, val2
    call WriteDec
    call CRLF

    mov edx, OFFSET msg2
    call WriteString
    sub eax, val3
    call WriteInt
    call CRLF

    mov edx, OFFSET msg3
    call WriteString
    mov ax, val2
    sub ax, val4
    mov val2, ax
    movzx eax, val2
    call WriteDec
    call CRLF

    mov edx, OFFSET msg4
    call WriteString
    mov bl, val1
    movzx eax, bl
    call WriteDec
    call CRLF

    exit
    main ENDP
END main

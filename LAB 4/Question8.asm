INCLUDE Irvine32.inc
.data

msg1 BYTE "After Swapping AX and BX are: ", 0

.code
main PROC
    mov ax, 10
    mov bx, 20

    mov edx, OFFSET msg1
    call WriteString
    call CRLF

    xchg ax, bx

    movzx eax, ax
    call WriteInt
    call CRLF

    movzx eax, bx
    call WriteInt

    exit
    main ENDP
END main

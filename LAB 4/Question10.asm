INCLUDE Irvine32.inc
.data
A WORD 0FF10h
B WORD 0E10Bh
msg1 BYTE "After Swaping A and B are: ", 0

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString
    call CRLF

    mov eax, 0
    mov ebx, 0
    
    mov ax, A
    mov bx, B
    
    xchg ax, bx
    
    call WriteHex
    call CRLF

    movzx eax, bx
    call WriteHex
    exit
    main ENDP
END main

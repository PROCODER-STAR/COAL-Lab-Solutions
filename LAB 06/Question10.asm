INCLUDE Irvine32.inc

.data
    msg1 BYTE "First Ten Even numbers ", 0
    
.code
main PROC
    mov edx, OFFSET msg1
    call WriteString

    mov ecx, 10
    mov eax, 2

l1:
    call WriteDec
    push eax

    mov al, ' '
    call WriteChar

    pop eax
    add eax, 2

    loop l1
    call CRLF

    exit
main ENDP
END main

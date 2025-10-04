Include Irvine32.inc
.data
    msg2 BYTE "* ", 0
    msg1 BYTE "Enter numbers of row to print * Triangle Pattern: ", 0
.code
main PROC
    mov eax, 0
    mov edx, OFFSET msg1
    call WriteString
    call ReadDec
    mov ecx, eax
    mov ebx, 0
l1:
    push ecx
    inc ebx
    mov ecx, ebx
l2:
    mov edx, OFFSET msg2
    call WriteString
    loop l2

    pop ecx
    call CRLF
    loop l1

    exit
main ENDP
END main

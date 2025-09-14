INCLUDE Irvine32.inc
.data
val DWORD 10
msg1 BYTE "Value: ", 0
msg2 BYTE "Value After Incrementing it 3 times: ", 0
msg3 BYTE "Value After Decrementing it 2 times: ", 0

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString

    mov eax, val
    call WriteInt
    call CRLF

    mov edx, OFFSET msg2
    call WriteString

    inc eax
    inc eax
    inc eax
    call WriteInt
    call CRLF

    mov edx, OFFSET msg3
    call WriteString

    dec eax
    dec eax
    call WriteInt
    exit
main ENDP
END main

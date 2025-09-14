INCLUDE Irvine32.inc
.data
daytemp DWORD 30
nighttemp DWORD 18
msg1 BYTE "Difference Between Day and Night temperatures: ", 0
msg2 BYTE "Increment Night Temperature by 2: ", 0

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString

    mov eax, daytemp
    sub eax, nighttemp
    call WriteInt
    call CRLF

    mov edx, OFFSET msg2
    call WriteString

    mov eax, nighttemp
    inc eax
    inc eax
    call WriteInt
    call CRLF

    exit
main ENDP
END main
INCLUDE Irvine32.inc
.data
PI EQU 3
msg BYTE "PI * 4 = ", 0
.code
main PROC
    mov edx, OFFSET msg
    call WriteString

    mov eax, PI
    imul eax, 4
    call WriteInt
    call CRLF
main ENDP
END main

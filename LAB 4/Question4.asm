INCLUDE Irvine32.inc
.data
item DWORD 50
msg1 BYTE "Total no. of items shop have: ", 0
msg2 BYTE "Total no. of items left after Customer buys 7 items: ", 0
msg3 BYTE "Total no. of items after restocking 15 items: ", 0

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString

    mov eax, item
    call WriteInt
    call CRLF

    mov edx, OFFSET msg2
    call WriteString

    sub eax, 7
    call WriteInt
    call CRLF

    mov edx, OFFSET msg3
    call WriteString

    add eax, 15
    call WriteInt
    call CRLF
    exit
main ENDP
END main
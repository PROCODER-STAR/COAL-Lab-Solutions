INCLUDE Irvine32.inc
.data
marks1 DWORD 45
marks2 DWORD 35
result DWORD ?

msg1 BYTE "Sum of Marks of Subject 1 and 2: ", 0
msg2 BYTE "Difference of Marks of Subject 1 and 2: ", 0

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString

    mov eax, marks1
    add eax, marks2
    mov result, eax
    call WriteInt
    call CRLF

    mov edx, OFFSET msg2
    call WriteString

    mov eax, marks1
    sub eax, marks2
    mov result, eax
    call WriteInt
    call CRLF

    exit
main ENDP
END main

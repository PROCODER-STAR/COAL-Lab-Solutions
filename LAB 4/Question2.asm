INCLUDE Irvine32.inc
.data
balance DWORD 5000
deposit DWORD 1200
withdraw DWORD 2000

msg1 BYTE "Balance : ", 0
msg2 BYTE "Balance After 1200 deposit: ", 0
msg3 BYTE "Balance After 2000 withdraw: ", 0

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString

    mov eax, balance
    call WriteInt
    call CRLF

    mov edx, OFFSET msg2
    call WriteString

    add eax, deposit
    call WriteInt
    call CRLF

    mov edx, OFFSET msg3
    call WriteString

    sub eax, withdraw
    call WriteInt
    call CRLF

    exit
main ENDP
END main

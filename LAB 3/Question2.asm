INCLUDE Irvine32.inc

.data

bArray BYTE 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
msg BYTE "Array elements: ", 0

.code
main PROC

    mov edx, OFFSET msg
    call WriteString
    call Crlf

    mov ecx, LENGTHOF bArray     
    mov esi, OFFSET bArray        

L1: 
    mov al, [esi]                 
    movzx eax, al                 
    call WriteDec                 
    call Crlf

    inc esi                      
    loop L1

    exit
main ENDP
END main
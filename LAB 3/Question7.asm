INCLUDE Irvine32.inc

.data
strData BYTE " COMPUTER ORGANIZATION & ASSEMBLY LANGUAGE LAB", 0

.data?
msg BYTE 100 DUP(?)

.code
main PROC
    ; Copy strData into msg
    mov esi, OFFSET strData   
    mov edi, OFFSET msg       

copyLoop:
    mov al, [esi]             
    mov [edi], al             
    inc esi
    inc edi
    cmp al, 0                 
    jne copyLoop

    
    mov edx, OFFSET msg
    call WriteString
    call Crlf

    exit
main ENDP
END main

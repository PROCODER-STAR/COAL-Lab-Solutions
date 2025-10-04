Include Irvine32.inc
.data
    arr WORD 10,20,30,40,50,60,70,80,90,100

.code    
main PROC
    mov esi, OFFSET arr
    mov ecx, LENGTHOF arr

l1:
    mov ax, [esi]
    movzx eax, ax

    call WriteDec
    call CRLF

    add esi, Type arr
    loop l1

    exit
main ENDP
END main

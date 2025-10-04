Include Irvine32.inc

.code    
main PROC
    mov eax, 0
    mov ecx, 10

l1:
    mov eax, ecx
    call WriteDec
    call CRLF
    loop l1
  
    exit
main ENDP
END main

INCLUDE Irvine32.inc

.data
uArray WORD 20 DUP(5)

.code
main PROC
    mov ecx, 20            
    mov esi, OFFSET uArray 

printLoop:
    movzx eax, WORD PTR [esi]  
    call WriteDec              
    call Crlf                  
    add esi, 2                 
    loop printLoop

    exit
main ENDP
END main

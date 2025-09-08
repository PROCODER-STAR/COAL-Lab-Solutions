INCLUDE Irvine32.inc

.data
myVar WORD 11, 22, 33

.code
main PROC
    movzx eax, myVar       
    call WriteDec
    call Crlf

    movzx eax, myVar+2     
    call WriteDec
    call Crlf

    movzx eax, myVar+4     
    call WriteDec
    call Crlf

    exit
main ENDP
END main

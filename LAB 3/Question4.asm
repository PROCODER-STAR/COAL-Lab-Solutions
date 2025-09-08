Include Irvine32.inc

.data
dArray dword 30 dup(?)

.code
main PROC
    lea esi,dArray
    mov ecx,lengthof dArray
    loop_start:
    mov eax ,[esi]
    call WriteInt
    call Crlf
    add esi,4 
    loop loop_start 
    exit
main ENDP
END main
INCLUDE Irvine32.inc
.code
main PROC
    ; ---------- MOV ----------
    mov eax, 5          
    mov ebx, 3          

    ; ---------- ADD ----------
    add eax, ebx        

    ; ---------- SUB ----------
    sub eax, 2          

    ; ---------- NEG ----------
    neg ebx             

    ; ---------- MOVSX ----------
    mov ax, -5          
    movsx ecx, ax       

    ; ---------- MOVZX ----------
    mov bx, 0A69Bh      
    movzx edx, bl       

    ; ---------- INC ----------
    inc eax             

    ; ---------- DEC ----------
    dec ebx             

    ; ---------- XCHG ----------
    xchg eax, ebx       

    call DumpRegs

    exit
main ENDP
END main

Include Irvine32.inc

.data
msg BYTE "* ", 0

.code
    
main PROC
    mov eax, 0
    mov ebx, 0
    mov ecx, 5

l1:
    mov eax, ecx
    inc ebx
    mov ecx, ebx

l2:
    mov edx, OFFSET msg
    call WriteString
    loop l2

    call CRLF
    mov ecx, eax
    loop l1

    mov eax, 0
    mov ebx, 6
    mov ecx, 5
l3:
    mov eax, ecx
    dec ebx
    mov ecx, ebx

l4:
    mov edx, OFFSET msg
    call WriteString
    loop l4
    
    call CRLF
    mov ecx, ebx
    loop l3
    
   
   
   exit
main ENDP
END main

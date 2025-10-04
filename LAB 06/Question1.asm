Include Irvine32.inc

.data
Source BYTE "Hello Assembly!", 0
Target BYTE 16 DUP(?)
msg1   BYTE "Original String: ", 0
msg2   BYTE "Copied String: ", 0

.code
main PROC
    
   mov ecx, 15
   mov esi, OFFSET Source
   mov edi, OFFSET Target

l1:
   jecxz done

   mov al, [esi]
   mov [edi], al
   inc esi
   inc edi
   dec ecx
   jmp l1

done:
   mov BYTE PTR [edi], 0

   mov edx, OFFSET msg1
   call WriteString
   mov edx, OFFSET Source
   Call WriteString
   Call CRLF

   mov edx, OFFSET msg2
   call WriteString
   mov edx, OFFSET Target
   call WriteString
   Call CRLF

   jmp Terminate

Terminate:
   exit
main ENDP
END main

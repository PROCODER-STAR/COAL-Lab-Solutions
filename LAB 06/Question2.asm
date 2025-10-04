Include Irvine32.inc

.data
Source BYTE "Hello World!", 0
Target BYTE SIZEOF Source DUP(?)
msg1   BYTE "Original String: ", 0
msg2   BYTE "Copied String: ", 0

.code
main PROC
    
   mov esi, OFFSET Source
   mov edi, OFFSET Target

l1:
   
   mov al, [esi]
   mov [edi], al

   cmp al, 0
   je done

   inc esi
   inc edi
   loop l1

done:
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

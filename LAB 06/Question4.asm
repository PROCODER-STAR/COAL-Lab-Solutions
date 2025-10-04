Include Irvine32.inc  

.data 

msg1 BYTE "******* First Ten Multiples Of 5 *******", 0  

msg2 BYTE " 5 * ", 0  

msg3 BYTE " = ", 0 

.code  

main PROC  

          mov edx, OFFSET msg1  

         call WriteString  

          call Crlf 

   mov ecx, 10 
   mov eax, 0 
   mov ebx, 0 

l1:  

      push eax  

       inc ebx  

       mov eax, ebx  

       mov edx, OFFSET msg2  

       call WriteString  

       call WriteDec 

  mov edx, OFFSET msg3 
  call WriteString 

  pop eax 
  add eax, 5 
  call WriteDec 
  call CRLF 
  loop l1 
  exit  

main ENDP  

END main 

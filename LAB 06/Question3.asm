Include Irvine32.inc
.data
    WelcomeMsg BYTE "Welcome TO The Store :)", 0
    AdvertMsg  BYTE "Buy 2 Get 1 Free on all items!", 0
    Item1Msg   BYTE "Item 1: Rs. 10.00", 0

.code
    
main PROC
        
        ; Display welcome message
        mov edx, OFFSET WelcomeMsg
        call WriteString
        call Crlf
        
        jmp Item1     ;Jump to Item1 label

        ; Display advertisement message (Skipped due to jmp instruction)
        mov edx, OFFSET AdvertMsg
        call WriteString
        call Crlf
        
Item1:
        ; Display item 1 message
        mov edx, OFFSET Item1Msg
        call WriteString
        call Crlf
      
        exit
main ENDP
END main

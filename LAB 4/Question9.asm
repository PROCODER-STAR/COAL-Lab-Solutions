INCLUDE Irvine32.inc

SecondsInDays = 24*60*60

.data

msg1 BYTE "Number of Seconds In A Day: ", 0

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString
    
    mov eax, SecondsInDays
    call WriteDec
    call CRLF

    exit
    main ENDP
END main

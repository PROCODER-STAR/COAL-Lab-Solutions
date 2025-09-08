INCLUDE Irvine32.inc

.data

String BYTE 200 DUP("NUCES")

.code
main PROC

    mov edx, OFFSET String
    call WriteString

    exit
main ENDP
END main


.model large
.stack 100h

.data
    main_menu       db 'LIBRARY MANAGEMENT SYSTEM',13,10
                    db 'a. Create Book Record',13,10
                    db 'b. Read Book Record',13,10
                    db 'c. Update Book Record',13,10
                    db 'd. Remove Book Record',13,10
                    db 0


    opening_menu    db 13,10,10,10
                    db '                       CIT-U LIBRARY MANAGEMENT SYSTEM',13,10,10,10
                    db '                      __...--~~~~~-._   _.-~~~~~--...__',13,10
                    db '                    //               `V"               \\',13,10
                    db '                   //                 |                 \\',13,10
                    db '                  //__...--~~~~~~-._  |  _.-~~~~~~--...__\\ ',13,10
                    db '                 //__.....----~~~~._\ | /_.~~~~----.....__\\',13,10
                    db '                ====================\\|//====================',13,10
                    db '                                    `---`',13,10,10
                    db '  1. REGISTER',13,10
                    db '  2. LOG-IN',13,10
                    db '  Choose Number: ',13,10
    
.code
INCLUDE IO.mac
main proc

    mov ax, 3
    int 10h

    mov ax, @data
    mov ds, ax

    call OPENINGSCREEN
    

    mov ax, 4C00h
    int 21h
main endp


OPENINGSCREEN:
    xor al, al
    MOV AH, 06h
    MOV CH, 3
    MOV CL, 23
    MOV DH, 3
    MOV DL, 53  
    MOV BH, 4Fh
    INT 10h
    PutStr opening_menu
    ret
end main

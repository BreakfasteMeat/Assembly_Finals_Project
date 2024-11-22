.model small
.stack 100h

.data
    msg db 'Hello, World!', '$'

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Print the message
    lea dx, msg
    mov ah, 09h
    int 21h

    ; Exit to DOS
    mov ax, 4C00h
    int 21h
main endp
end main

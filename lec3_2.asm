.model small
.stack 100h
.data
num1 db 8        ; first number
num2 db 3        ; second number
diff db ?        ; result

.code
main proc
    mov ax, @data    ; initialize data segment
    mov ds, ax       

    mov al, num1     ; loads the first number into AL register
    sub al, num2     ; subtract second number from AL
    mov diff, al     ; store result into memory variable “diff”

    add diff, 30h    ; convert number into ASCII
    mov dl, diff     ; move result into DL for printing
    mov ah, 2        ; DOS print character function
    int 21h          ; print the result

    mov ah, 4Ch      ; terminate program
    int 21h
main endp
end main
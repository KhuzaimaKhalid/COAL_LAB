.model small
.stack 100h
.data
star db 1 ; use a BYTE to count stars (starts at 1)
.code
main proc
mov ax, @data
mov ds, ax
mov cx, 5 ; outer loop: number of lines to print
outerLoop: ;outerLoop to print rows
mov bx, cx ; save outer-loop counter in BX
mov cl, star ; load current star count into CL (low byte of CX)
innerLoop: ;innerLoop to print stars per row
mov dl, '*' ; DL = character to print ('*')
mov ah, 2
int 21h
loop innerLoop ; decrement CX (uses CL) and jump to inner if not zero
inc star ; increment star counter in memory for the next line
; prints newline
mov dl, 13
mov ah, 2
int 21h
mov dl, 10
mov ah, 2
int 21h
mov cx, bx ; restore outer-loop counter into CX
loop outerLoop ; decrement CX and repeat outer loop if not zero
mov ah, 4Ch
int 21h
main endp
end main
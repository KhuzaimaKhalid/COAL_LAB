.model small
.stack 100h
.data
star db 5  
.code
main proc
mov ax, @data
mov ds, ax
mov cx, 5 

outerLoop:
mov bx, cx 
mov cl, star 

innerLoop: 
mov dl, '*'
mov ah, 2
int 21h
loop innerLoop 


dec star 

mov dl, 13
mov ah, 2
int 21h
mov dl, 10
int 21h

mov cx, bx 
loop outerLoop

mov ah, 4Ch
int 21h
main endp
end main
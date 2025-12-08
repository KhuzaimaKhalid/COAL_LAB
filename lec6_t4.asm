.model small
.stack 100h
.data
n dw 5
spaces db 0   
stars db 9    
.code
main proc
mov ax, @data
mov ds, ax
mov cx, n 

outerLoop:
mov bx, cx 

mov cl, spaces
cmp cl, 0
jle printStars
spaceLoop:
mov dl, ' '
mov ah, 2
int 21h
loop spaceLoop

printStars:
mov cl, stars
starLoop:
mov dl, '*'
mov ah, 2
int 21h
loop starLoop

inc spaces   
sub stars, 2 

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
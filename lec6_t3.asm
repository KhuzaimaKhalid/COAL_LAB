.model small
.stack 100h
.data
n db 5
spaces db 4  
stars db 1   
.code
main proc
mov ax, @data
mov ds, ax
mov cl, n 

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

dec spaces
add stars, 2

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
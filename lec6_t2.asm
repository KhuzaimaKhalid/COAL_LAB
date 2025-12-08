.model small
.stack 100h
.data
spaces db 0   
stars db 5    
.code
main proc
mov ax, @data
mov ds, ax
mov cx, 5      

outerLoop:
mov bx, cx     

mov cl, spaces 
cmp cl, 0     
jle skipSpaces 

spaceLoop:
mov dl, ' '   
mov ah, 2
int 21h
loop spaceLoop

skipSpaces:

 
mov cl, stars  
starLoop:
mov dl, '*'    
mov ah, 2
int 21h
loop starLoop


inc spaces     
dec stars      

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
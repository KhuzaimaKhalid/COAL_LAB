.model small
.stack 100h
.data 
arr db 1,2,3,4,5,6,7,8
str db 'reversed order : $'
n1 db 13,10,'$' 
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov bx,offset arr
    mov cx,8
    
    inputloop:
    mov ah,1h
    int 21h
    
    mov [bx],al
    inc bx
    
    loop inputloop
    
    mov dx, offset n1
    mov ah,9h 
    int 21h
    
    
    mov dx, offset str
    mov ah,9h
    int 21h
    
    mov bx,offset arr
    mov cx,8
    
    outputloop:
    mov al,[bx+7]

    mov dl,al
    mov ah,2
    int 21h
    
    dec bx
    
    loop outputloop
    
    
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main
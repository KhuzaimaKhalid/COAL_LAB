number macro arr
    mov bx,offset arr
    mov cx,5
    
    printloop:
    mov al, [bx]
    add al,30h
    mov dl,al
    mov ah,2
    int 21h
    
    inc bx
    
    loop printloop
    
endm    




.model small
.stack 100h
.data
arr db 1,2,3,4,5
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov cx,26
    mov dl,'a'
    
    aloop:
    mov ah,2h
    int 21h
    
    inc dl
    
    loop aloop
     
     number arr
    
    
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main
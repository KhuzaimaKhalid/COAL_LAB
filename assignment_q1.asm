n1 macro 
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    
endm
    




.model small
.stack 100h
.data
arr db 1,2,3,4,5 
.code

main proc 
    mov ax,@data
    mov ds,ax
    
    mov bx,offset arr
    mov cx,5
    
    printloop:
    mov al,[bx]  
    add al,30h
    mov dl,al
    mov ah,2
    int 21h
    
    inc bx
    n1
    loop printloop
    
    
    
    
    main endp
end main
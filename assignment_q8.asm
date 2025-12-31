.model small
.stack 100h
.data
arr db 50 dup(?)

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov bx,offset arr
    
    inputloop:
    
    mov ah,1h
    int 21h
    
    cmp al,13
    je doneInput
    
    mov [bx],al
    inc bx
    
    loop inputloop
    
    doneInput:
    mov byte ptr [bx],'$'
    
    
    mov dx,offset arr
    mov ah,9h
    int 21h
    
    
    
    
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main
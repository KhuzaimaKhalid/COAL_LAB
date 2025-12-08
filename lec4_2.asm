
.model small
.stack 100h
.data
.code 

main proc 
    
    
    
    mov cx,9
    
    startLoop:
    mov dl, '&'
    mov ah, 2h
    int 21h      
    
    
    mov dl, 32 ; space is also treated as character
    mov ah, 2h
    int 21h     
    
    mov dl, 0ah
    mov ah,2h
    int 21h 
    
    mov dl, 0dh
    mov ah,2h
    int 21h
    
    
    loop startLoop
    
   
    mov ah, 4ch
    int 21h
    
    
    
    
    main endp
end main
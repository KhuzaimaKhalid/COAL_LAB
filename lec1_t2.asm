.model small
.stack 100h
.data
.code 

main proc
    
    
    mov  dl, 'K'
    mov ah, 2h
    int 21h 
    
    mov  dl, 'h'
    mov ah, 2h
    int 21h   
    
    mov  dl, 'u'
    mov ah, 2h
    int 21h
    
    mov  dl, 'z'
    mov ah, 2h
    int 21h
    
    mov  dl, 'a'
    mov ah, 2h
    int 21h
    
    mov  dl, 'i'
    mov ah, 2h
    int 21h
    
    mov  dl, 'm'
    mov ah, 2h
    int 21h
    
    mov  dl, 'a'
    mov ah, 2h
    int 21h
    
    mov  ah, 4ch
    int 21h
    
    
    
    
    
    main endp
end main
star macro
     mov dl,'*'
     mov ah,2
     int 21h
     
endm


.model small
.stack 100h
.data
.code

main proc
    
    mov cx,10
    
    printloop:
    star
    loop printloop
    
     
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main
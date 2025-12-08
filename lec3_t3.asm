.model small
.stack 100h
.code
main proc

    mov al, 4      
    mov bl, 2       
    DIV bl         

    add al, 30h    
    mov dl, al
    mov ah, 2       
    int 21h

    mov ah, 4Ch     
    int 21h

main endp
end main
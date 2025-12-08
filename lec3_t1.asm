.model small
.stack 100h
.code
main proc

    mov al, 5       
    sub al, 3       

    add al, 30h     
    mov dl, al      

    mov ah, 2      
    int 21h        

    mov ah, 4Ch     
    int 21h

main endp
end main
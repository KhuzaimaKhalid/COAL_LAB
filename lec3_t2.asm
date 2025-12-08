.model small
.stack 100h
.data
num1 db 5        
num2 db 3        
diff db ?        

.code
main proc
    mov ax, @data    
    mov ds, ax       

    mov al, num1     
    add al, num2     
    mov diff, al     

    add diff, 30h    
    mov dl, diff    
    mov ah, 2        
    int 21h          

    mov ah, 4Ch      
    int 21h
main endp
end main
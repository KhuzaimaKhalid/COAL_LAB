.model small
.stack 100h
.data 
arr db 'A','B','C','D','E','F'
 
str db 'Array elements : $'
.code



main proc
        mov ax, @data
        mov ds,ax
        
        
        mov dx, offset str
        mov ah, 9h
        int 21h
        
        mov bx, offset arr
        mov cx,6
        
        printArr:
        mov al, [bx+5]
      
        mov dl, al
        mov ah,2h
        int 21h
        
        
     dec bx   
           
        
        
        loop printArr
    
        mov ah, 4ch
        int 21h
    
    
    main endp
end main
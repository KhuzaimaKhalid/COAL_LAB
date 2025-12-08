.model small
.stack 100h
.data 
arr db 1,2,3,4,5,6,7,8,9,9
;arr db 5 dup<?> 
str db 'Array elements : $'
.code



main proc
        mov ax, @data
        mov ds,ax
        
        
        mov dx, offset str
        mov ah, 9h
        int 21h
        
        mov bx, offset arr
        mov cx,10
        
        printArr:
        mov al, [bx]
        add al, 30h
        mov dl, al
        mov ah,2h
        int 21h 
        
        
     inc bx      
       
           
        
        
        loop printArr
    
        mov ah, 4ch
        int 21h
    
    
    main endp
end main
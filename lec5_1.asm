.model small
.stack 100h
.data 
arr db 1,2,3,4,5
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
        mov cx,5
        
        printArr:
        mov al, [bx+4]
        add al, 30h
        mov dl, al
        mov ah,2h
        int 21h 

;mov ah, 1h
;int 21h   
;        
      ;  mov dl,32
;        mov ah, 2h
;        int 21h
        
        
     dec bx      
       
    ;   mov [bx] , al
           
        
        
        loop printArr
    
        mov ah, 4ch
        int 21h
    
    
    main endp
end main
.model small
.stack 100h
.data  
arr db 1,2,3,4,5,5,6,7,8,9
str db 'Array elements: $'  
n1 db 13,10,'$'
str1 db 'order : $'
str2 db 'reverse order : $'
.code


main proc
      mov ax, @data
      mov ds,ax
      
     ; mov dx, offset str
;      mov ah,9h
;      int 21h
;      
;      mov bx, offset arr
;      mov cx, 5
;      
;      printloop:
;      mov al,[bx]
;      add al,30h  
;      mov dl,al
;      mov ah,2h
;      int 21h
;      
;      
;      inc bx
;      
;      loop printloop
       
    ;    
;       
;       
;       mov dx, offset str 
;       mov ah,9h
;       int 21h
;       
;       mov bx, offset arr
;       mov cx,5
;       
;       printloop:
;       mov ah,1h
;       int 21h
;       
;       mov dl,32
;       mov ah,2h
;       int 21h
;       
;       mov [bx],al
;       
;       loop printloop
        
        
     ;mov dx, offset str
;     mov ah,9h
;     int 21h
;     
;     mov bx, offset arr
;     mov cx,10
;     
;     printloop:
;     mov al,[bx]
;     add al,30h
;     mov dl,al
;     mov ah,2
;     int 21h
;     
;     inc bx
;     
;     loop printloop
                      
                      
      mov dx, offset str
      mov ah,9h
      int 21h
      
      mov bx, offset arr
      mov cx,5
       
       inputloop:
       mov ah,1h
       int 21h
       
       mov [bx],al 
       inc bx
       
       loop inputloop 
       
         mov dx, offset n1
         mov ah,9h 
         int 21h 
         
         mov dx, offset str1
         mov ah,9h
         int 21h
         
         mov bx, offset arr
         mov cx,5
         
         printloop:
         mov al,[bx]
        
         mov dl,al
         mov ah,2
         int 21h
                  
         inc bx         
         loop printloop  
         
         mov bx, offset arr
         mov cx,5 
         
         mov dx, offset n1
         mov ah,9h
         int 21h    
         
         mov dx,offset str2
         mov ah,9h
         int 21h
         
         print2loop:
         mov al,[bx+4]
        
         mov dl,al
         mov ah,2
         int 21h
                  
         dec bx         
         loop print2loop  
         
      
      
      
      mov ah,4ch
      int 21h
    
    
    
    main endp
end main
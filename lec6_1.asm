.model small
.stack 100h
.data
str1 db 'Numbers are equal$'

str2 db 'Numbers are not equal$'

.code

main proc
    
      mov ax, @data
      mov ds,ax
      
      mov al,6
      mov bl,5
      
      cmp al,bl 
      je Equal
      jne notEqual
      
      Equal:
      mov ah,9h
      mov dx, offset str1
      int 21h  
      jmp exit
      
       notEqual:
      mov ah,9h
      mov dx, offset str2
      int 21h
     
     
        exit:
       mov ah,4ch 
       int 21h
    
    
    main endp
end main
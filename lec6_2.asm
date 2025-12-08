.model small
.stack 100h
.data
str1 db 'Numbers is positive$'

str2 db 'Number is negative$'  

str3 db 'Number is invalid$'

.code

main proc
    
      mov ax, @data
      mov ds,ax
      
      mov ah, 1h
      int 21h 
      
      mov bl,al
      
      cmp bl,'-'
      je negative
      
      cmp bl, '0'
      jl invalid     
      
      cmp bl, '9'
      jg invalid 
      
      mov ah,9h
      mov dx, offset str1
      int 21h
      jmp exit
      
      
      negative:
      mov ah,9h
      mov dx, offset str2
      int 21h
      jmp exit  
      
      invalid:
      mov ah,9h
      mov dx, offset str3
      int 21h
      
      
      exit:
      mov ah,4ch
      int 21h
    
    
    main endp
end main 
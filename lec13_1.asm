print macro str
    mov dx, offset str
    mov ah,9h
    int 21h
    
endm


n1 macro
    mov dl,10
    mov ah,2h
    int 21h
    mov dl,13
    mov ah,2h
    int 21h
endm

;printNl macro n1
;    mov dx, offset n1
;    mov ah,9h
;    int 21h
;endm


.model small
.stack 100h
.data

str db 'Hello World$'

.code

main proc 
    
    mov ax, @data
    mov ds,ax
   
   print str  
   n1
   print str  
   n1 
   print str  
   n1  

     mov ah,4ch
     int 21h


main endp
end main
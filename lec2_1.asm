.model small
.stack 100h  



.data
   str db 'Hello World$'; db is define byte, pre processor directive for strings, $ is string terminator
    
   str1 db 'Khuzaima Khalid$'  
   ; str1 db 0ah,0dh,'Khuzaima Khalid$'
   nl db 0ah, 0dh , "$"    ; 0ah is \n & 0dh is \r   
  
.code

main proc    
      
      mov ax, @data ; tells assembler that data segment is being created
      mov ds, ax    ; no mattter what no of string data segment will always be one  
        ; the above 2 lines created data segment
        
        ; the below 3 lines are used to print strings 
      mov ah, 9h  ; string moved
      mov dx, offset str ; logical address   means addreess produced while processing
      int 21h  
      
     ; mov dl, 0ah     ;0-ah line feed
;      mov ah, 2h
;      int 21h
;             
;      mov dl, 0dh     ; 0-dh carriage return
;      mov dh, 2h
;      int 21h 

;        

      mov ah, 9h       
      mov dx, offset nl
      int 21h     
      
      mov ah, 9h       
      mov dx, offset str1
      int 21h   
      
  
      
      
     
    
      mov ah,4ch
      int 21h
    
    
    main endp
end main
.model small
.stack 100h  



.data
    
   str db 'Khuzaima Khalid$'  
   nl db 0ah, 0dh , "$"
   str1 db '2480202$'      
  
.code

main proc    
      
      mov ax, @data 
      mov ds, ax         ; data segment created in these lines ; cs physical and ip logical or also called ip
        
        
      mov ah, 9h  
      mov dx, offset str    ;  logical address stores in offset
      int 21h
      
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
.model small
.stack 100h
.data
.code 

main proc
    
    
     
     
    mov cx,26   
     mov dl,'Z'
    
    printLoop:
        
    mov ah, 2h
    int 21h 
        
    dec dl 
         
        
    
    loop printLoop
       
         
      
     
      
      mov ah,4ch
      int 21h
    
    
    
    main endp
end main
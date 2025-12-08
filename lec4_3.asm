.model small
.stack 100h
.data
.code 

main proc
    
    
     
     
    mov cx,5   
     mov dl,48
    
    startLoop:
             
     
      inc dl  
      
   
    mov ah, 2h
    int 21h 
        
    
        
    
    loop startLoop
       
         
      
     
      
      mov ah,4ch
      int 21h
    
    
    
    main endp
end main
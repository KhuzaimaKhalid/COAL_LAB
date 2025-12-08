.model small
.stack 100h
.data
.code 

main proc
    
    
     ; mov dl, '5'
      mov dl, 53
      inc dl    ; 6
      inc dl    ; 7 
      
      ; in assembly inc and dec are always by one if you want inc and dec multiple times than you have to type it multiple times 
      
      mov ah, 2h
      int 21h
      
      mov ah,4ch
      int 21h
    
    
    
    main endp
end main
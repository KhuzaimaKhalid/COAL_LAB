.model small
.stack 100h
.data
    arr  db 11 dup(?)
    str  db 'Array elements : $'
.code



main proc
             mov  ax, @data
             mov  ds,ax
        
        
             mov  dx, offset str
             mov  ah, 9h
             int  21h
        
             mov  bx, offset arr
             mov  cx,8
        
    printArr:
     

             mov  ah, 1h
             int  21h

             mov  [bx] , al
       
        
        
             loop printArr
    
             mov  ah, 4ch
             int  21h
    
    
main endp
end main
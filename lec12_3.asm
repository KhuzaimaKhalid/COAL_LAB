.model small
.stack 100h
.data
file db 'myFile.txt',0    
buffer db 50 dup(?)
text db 'Hello World!$',0
handle dw ?


.code

main proc
      mov ax,@data
      mov ds,ax
      
      mov ah,3Dh
      mov al,0
      mov dx,offset file
      int 21h 
      mov handle,ax
      
      mov ah,3Fh
      mov bx,handle
      mov dx,offset buffer
      mov cx,50
      int 21h
      
      mov dx, offset buffer
      mov ah,9h
      int 21h
    
     
     mov ah,4ch
     int 21h
    
    main endp
end main
.model small
.stack 100h
.data
file db 'myFIle.txt',0
text db 'Hello World!',0
handle dw ? 

.code

main proc
     mov ax,@data
     mov ds,ax
     
     mov ah,3Dh
     mov al,1
     mov dx, offset file
     int 21h
     mov handle,ax
     
     mov ah, 40h
     mov bx,handle
     mov dx, offset text
     mov cx,12
     int 21h
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main
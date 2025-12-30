.model small
.stack 100h
.data
file db 'myFile.txt',0
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,3ch
    mov cx,0
    mov dx, offset file
    int 21h

    ; mov ah,41h
;     mov dx,offset file 
;     int 21h  

     mov ah,3Dh
     mov al,0
     mov dx,offset file
     int 21h
     
 
       
     mov ah,4ch
     int 21h
     
    main endp
end main
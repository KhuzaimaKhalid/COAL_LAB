.model small
.stack 100h
.data

file db 'Khuzaima.txt',0 
str db 'File created$'
text db 'Hello World!$'
handle dw ? 
prompt db 'Enter Input to file = $'
n1 db 13,10,'$'
str1 db 'Data moved$'
buffer db 50
       db ?
       db 50 dup(?)  

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,3ch
    mov al,0
    mov dx, offset file
    int 21h
    
    mov dx,offset str
    mov ah,9h
    int 21h
    
    mov dx,offset n1
    mov ah,9h
    int 21h  
    
    mov dx,offset prompt
    mov ah,9h
    int 21h
    
    mov ah,0Ah
    mov dx, offset buffer
    int 21h
    
    
    mov ah,3Dh
    mov al,1
    mov dx, offset file
    int 21h
    mov handle,ax
    
    mov ah,40h
    mov bx,handle
    mov dl,buffer+1
    mov dh,0
    mov cx,dx
    mov dx,offset buffer+2
    int 21h
    
    mov dx,offset n1
    mov ah,9h
    int 21h  
    
    mov dx,offset str1
    mov ah,9h
    int 21h
    
    mov ah,3Eh
    mov bx,handle
    int 21h
    
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main
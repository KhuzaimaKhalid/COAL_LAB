;;right angle triangle 
;.model small
;.stack 100h
;.data
;.code
;
;main proc
;     mov cx,5
;     
;     outerloop:
;     mov bx,cx
;     mov dx,6
;     sub dx,cx
;     mov cx,dx
;     
;     innerloop:
;     mov dl,'*'
;     mov ah,2
;     int 21h
;     loop innerloop
;     
;     mov dl,13
;     mov ah,2
;     int 21h
;     
;     mov dl,10
;     mov ah,2
;     int 21h
;     
;     mov cx,bx
;     
;     loop outerloop
;    
;    
;    
;     mov ah,4ch
;     int 21h
;    
;    main endp
;end main  

; inverted right angle triangle 

;.model small
;.stack 100h
;.data
;.code
;
;main proc     
;    
;    mov cx,5   
;    
;outerloop:
;mov bx,cx
;
;innerloop:
;
;mov dl,'*'
;mov ah,02
;int 21h    
;    
;loop innerloop
;
;mov dl,13
;mov ah,2
;int 21h
;
;mov dl,10
;mov ah,2
;int 21h
;
;mov cx,bx
;
;loop outerloop
;
;mov ah,4ch
;int 21h   
;      
;    
;    main endp
;end main

; left angle triangle 

;.model small
;.stack 100h
;.data
;.code
;
;main proc
;     mov cx,5
;     
;     outerloop:
;     mov bx,cx
;;     mov cx,bx
;;     
;;     innerloop:  
;;     mov dl,'*'
;;     mov ah,2
;;     int 21h
;;     loop innerloop
;;     
;;     mov dl,13
;;     mov ah,2
;;     int 21h
;;     
;;     mov dl,10
;;     mov ah,2
;;     int 21h
;;     
;;     mov cx,bx
;;     
;;     loop outerloop
;;    
;;    
;;    
;;     mov ah,4ch
;;     int 21h
;;    
;;    main endp
;;end main
;
;; inverted left angle triangle 
;
;.model small
;.stack 100h
;.data
;.code
;
;main proc     
;   mov cx,5
;   
;   outerloop:
;   mov bx,cx
;   
;   mov dx,5
;   sub dx,cx
;   mov cx,dx
;   
;   cmp cx,0
;   je skip_spaces
;   
;   spaces_loop:
;   mov dl,' '
;   mov ah,2
;   int 21h
;   loop spaces_loop
;   
;   skip_spaces:
;   mov cx,bx
;   
;   innerloop:
;   mov dl,'*'
;   mov ah,2
;   int 21h
;   loop innerloop
;   
;   mov dl,13
;   mov ah,2
;   int 21h
;   
;   mov dl,10
;   mov ah,2
;   int 21h
;   
;   mov cx,bx
;   
;   loop outerloop
;  
;  
;  
;    mov ah,4ch
;    int 21h      
;    
;main endp
;end main       

;; pyramid 
;.model small
;.stack 100h
;.data
;.code
;
;main proc
;    mov cx,5
;    
;    outerloop:
;    
;    mov bx,cx
;    mov cx,bx
;    
;    spaces_loop:
;    mov dl,' '
;    mov ah,2
;    int 21h
;    loop spaces_loop
;    
;    mov cx,bx      
;    
;    mov dx,5
;    sub dx,cx
;    add dx,dx
;    inc dx
;    mov cx,dx
;    
;    innerloop:
;    mov dl,'*'
;    mov ah,2
;    int 21h
;    loop innerloop
;    
;    mov cx,bx
;    
;    mov dl,13
;    mov ah,2
;    int 21h
;    
;    mov dl,10
;    mov ah,2
;    int 21h
;    
;    mov cx,bx
;    dec cx
;    cmp cx,0
;    
;    jne outerloop
;    
;    mov ah,4ch
;    int 21h
;    
;    
;    
;    main endp
;end main

; inverted pyramid 

.model small
.stack 100h
.data
.code

main proc
    mov cx,5
    
    outerloop:
    mov bx,cx
    
    mov dx,6
    sub dx,cx
    mov cx,dx
    
    spaces_loop:
    mov dl, ' '
    mov ah,2
    int 21h
    loop spaces_loop
    
    mov cx,bx
    
    mov dx,cx
    add dx,dx
    dec dx 
    mov cx,dx
    
    innerloop:
    mov dl,'*'
    mov ah,2
    int 21h
    loop innerloop
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov cx,bx
    
    loop outerloop
    
     
     mov ah,4ch
     int 21h
    
    main endp
end main

.model small
.stack 100h
.code
main proc

    mov al, 5       ; directly load first number into AL
    add al, 3       ; add 3 to AL (AL = 5 + 3 = 8)

    add al, 30h     ; convert numeric result to ASCII, 30h into decimal is 48 (48+8=56; 56 is the ascii for 8)
    mov dl, al      ; move result into DL for printing

    mov ah, 2       ; print function   , h is for i/o and l is for numbers and  variables 
    int 21h         ; interrupt call 

    mov ah, 4Ch     ; terminate program
    int 21h

main endp
end main
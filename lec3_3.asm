.model small
.stack 100h
.code
main proc

    mov al, 4       ; first number
    mov bl, 2       ; second number
    mul bl          ; mul instruction has a fixed rule, it multiplies the accumulator register with the specified operand 

    add al, 30h     ; convert result to ASCII ('8')
    mov dl, al
    mov ah, 2       ; print character in DL
    int 21h

    mov ah, 4Ch     ; exit program
    int 21h

main endp
end main
.model small
.stack 100h

.data
a_input db 'Enter the value of A: $'
b_input db 'Enter the value of B: $' 

a db ' a is bigger then b?$' 
b db ' b is bigger then a?$'
c db ' both a and b is equal?$'  

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah,9
    lea dx, a_input
    int 21h
    
    
    mov ah, 1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx, b_input
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov dl,13
    int 21h
    
    cmp bl,bh
    jg a_is_big
    jl b_is_big
    je both_are_equal
    
    a_is_big:
    mov ah,9
    lea dx,a
    int 21h
    jmp exit
    
    b_is_big:
    mov ah,9
    lea dx,b
    int 21h
    jmp exit
    
    both_are_equal:
    mov ah,9
    lea dx,c
    int 21h
    exit:
    mov ah,4ch
    int 21h  
    
    main endp
    end main
    
.model small
.stack 100h

.data
a_input db 'Enter the value of A: $'
b_input db 'Enter the value of B: $' 
c_input db 'Enter the value of C: $'

a db ' a is bigger then b and c?$' 
b db ' b is bigger then a and c?$'
c db ' c is bigger then a and b?$'
d db ' both a, b and c is equal?$'  

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
    
    mov ah,9
    lea dx, c_input
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov dl,13
    int 21h
    
    cmp bl,bh
    jg check_a_c
    jl check_b_c
    je check_b_c_equal
    
check_a_c:
    cmp bl,cl
    jg a_is_big
    jl c_is_big
    je both_a_c_equal
    
check_b_c:
    cmp bh,cl
    jg b_is_big
    jl c_is_big
    je both_b_c_equal
    
check_b_c_equal:
    cmp bh,cl
    jg b_is_big
    jl c_is_big
    je both_are_equal
    
both_a_c_equal:

    mov ah,9
    lea dx,a
    int 21h
    jmp exit
    
both_b_c_equal:

    mov ah,9
    lea dx,b
    int 21h
    jmp exit
    
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
    
c_is_big:
    mov ah,9
    lea dx,c
    int 21h
    jmp exit
    
both_are_equal:
    mov ah,9
    lea dx,d
    int 21h
    
exit:
    mov ah,4ch
    int 21h  
    
main endp
end main

.model small
.stack 100h
.data
num db 7Ah
msg db 'Result = $'  
.code
main proc
    mov ax, @data
    mov ds, ax
    
    ;print message
    mov dx, offset msg
    mov ah, 09h
    int 21h
    
    ;and operatin
    mov al, num
    ROR al, 7h
    mov bl, al
    
    ;print high nibble
    mov al, bl
    shr al, 4
    call print_hex
    
    ;print low nibble
    mov al, bl
    and al, 0Fh
    call print_hex
    
    ;exit
    mov ah, 4Ch
    int 21h
    main endp

;prints hex digit in AL

print_hex proc
    add al, 48
    cmp al, 57
    jbe out
    add al, 7
    out:
    mov dl, al
    mov ah, 02h
    int 21h
    ret
    print_hex endp
end main

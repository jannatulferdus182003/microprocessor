.model small
.stack 100h
.data
myname db 'my name is jannat$'

.code
main proc
    mov ax, @data
    mov ds,ax
    
    mov dx,offset myname 
    mov ah, 09h
    int 21h
    
    mov ax, 4ch
    int 21h
    main endp
end main

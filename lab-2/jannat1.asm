.model small
.stack 100h
  .data
myname db 'Input:$'
.code
main proc
    mov ah, 1
    int 21h
    mov bl,al
    
    mov ah, 2
    mov dl,10
    int 21h
    
    mov ah, 2
    int 21h
    mov dl,bl  
    int 21h
      
       mov ah, 1
    int 21h
    mov bh,al
    
    mov ah, 2
    mov dl, 10
    int 21h
    
    mov ah, 2
    int 21h
    mov dl,bh  
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main
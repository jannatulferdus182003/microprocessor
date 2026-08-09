.model small
.stack 100h
  .data
num1 db ?
num2 db ?
sum db ?
.code
main proc
    mov ax, @data
    mov ds,ax 
   
    mov ah, 1
    int 21h
    sub al,48
    mov num1,al
   
    mov ah, 1
    int 21h
    sub al,48
    mov num2,al 
    
    mov al,num1
    add al, num2
    add al,48
    mov sum, al
    
    mov ah, 2
    mov dl, sum
    int 21h
    
    main endp
end main
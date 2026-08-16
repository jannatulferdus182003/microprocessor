.model small
.stack 100h
  .data
s1 db 'subject1:$'    
s2 db 'subject2:$'
s3 db 'subject3:$'
total db 'total:$'
avg db 'avg:$' 

sub1 db ?
sub2 db ?
sub3 db ?
 
 .code
main proc 
    
    mov ax, @data
    mov ds,ax
    
    mov dx,offset s1 
    mov ah, 09h
    int 21h 

    mov ah, 1
    int 21h
    sub al, 48 
    mov bl, al 

  
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h 
    
    mov dx,offset s2 
    mov ah, 09h
    int 21h

    mov ah, 1
    int 21h
    sub al, 48
    mov bh, al 

    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov dx,offset s3 
    mov ah, 09h
    int 21h

   
    mov ah, 1
    int 21h
    sub al, 48
    mov cl, al 

  
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov dx,offset total 
    mov ah, 09h
    int 21h

 
    mov al, bl
    add al, bh
    add al, cl 
    mov ch, al 
    
     
    
    mov ah, 0
    mov dl, 3
    div dl  
    mov bl, al 
    
    
    
  
    mov ah, 2
    mov dl, ch
    add dl, 48 
    int 21h

         mov dx,offset avg 
    mov ah, 09h   
    int 21h 
    
    
    mov ah, 2
    mov dl, 10
    int 21h 
    
    mov dl, 13
    int 21h
    
  
    mov ah, 2
    mov dl, bl
    add dl, 48
    int 21h

 
    mov ah, 4ch
    int 21h

main endp
end main
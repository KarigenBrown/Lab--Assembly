data segment
    string db 'Hello World ', 13,10,'$'
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
    mov ax, data
    mov ds, ax
    mov dx, offset string
    mov ah, 9
    int 21h
    mov ax,4c00h
    int 21h
code ends

end start

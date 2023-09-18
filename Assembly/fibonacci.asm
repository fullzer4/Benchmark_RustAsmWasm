section .bss
    result resq 1
section .text
    global fibonacci

fibonacci:
    mov rax, rdi        ; Coloque o valor de entrada (n) em rax
    mov rcx, 0          ; Inicialize o contador do loop
    mov rbx, 1          ; Inicialize o segundo número da sequência (b) como 1

check_done:
    cmp rcx, rax        ; Compare o contador com n
    jae done            ; Se for maior ou igual, estamos prontos

    add rax, rbx        ; Adicione a + b e armazene o resultado em rax
    mov rdi, rbx        ; Mova b para rdi (próximo valor de a)
    mov rbx, rax        ; Mova o novo resultado (a + b) para b
    inc rcx             ; Incremente o contador de loop
    jmp check_done      ; Continue o loop

done:
    mov [result], rax  ; Armazene o resultado final em 'result'
    ret

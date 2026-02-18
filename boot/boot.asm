BITS 32
GLOBAL _start

_start:
    cli                     ; disable interrupts
    mov esp, stack_top      ; setup stack
    call kernel_main        ; jump to kernel

.hang:
    hlt                     ; halt CPU
    jmp .hang

SECTION .bss
resb 8192
stack_top:

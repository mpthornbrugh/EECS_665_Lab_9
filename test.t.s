    .text
    .globl tstconst
tstconst:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       $10, %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstcall
tstcall:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    pushl       $10
    pushl       $100
    pushl       $strval0
    call       printf
    pop        %ebp
    pop        %ebp
    pop        %ebp
    movl       $10, %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .data
    .globl strval0
strval0:
    .asciz    "Test: %d %d\n"

    .text
    .globl tstadd
tstadd:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       264(%esp), %eax
    addl       268(%esp), %eax

    movl       %eax, 272(%esp)
    movl       272(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstsub
tstsub:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       264(%esp), %eax
    subl       268(%esp), %eax

    movl       %eax, 272(%esp)
    movl       272(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstmul
tstmul:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       264(%esp), %eax
    imul       268(%esp), %eax

    movl       %eax, 272(%esp)
    movl       272(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstdiv
tstdiv:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    subl       %edx, %edx
    movl       264(%esp), %eax
    movl       268(%esp), %ebx
    idiv       %ebx

    movl       %eax, 272(%esp)
    movl       272(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstmod
tstmod:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       $0, %edx
    movl       264(%esp), %eax
    idiv       268(%esp), %eax

    movl       %edx, %eax
    movl       %eax, 272(%esp)
    movl       272(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstshl
tstshl:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       264(%esp), %eax
    movl       268(%esp), %ecx
    sall        %cl, %eax
    movl       %eax, 272(%esp)
    movl       272(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret

    .text
    .globl tstshr
tstshr:
    push       %ebp
    movl       %esp, %ebp
    subl       $256, %esp
    movl       264(%esp), %eax
    movl       268(%esp), %ecx
    sarl        %cl, %eax
    movl       %eax, 272(%esp)
    movl       272(%esp), %eax
    addl       $256, %esp
    pop        %ebp
    ret


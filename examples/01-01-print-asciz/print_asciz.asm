.global print_asciz

print_asciz:
push { r5, lr }
mov r5, r0
ldrb r0, [ r5 ]
tst r0, #0
beq done
bl print_asciz
add r5, r5, #1
b loop
pop { r5, pc }
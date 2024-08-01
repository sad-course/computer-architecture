.data
    difference_result: .space 4
    prompt_text: .ascii "Type a number: "

.text
.globl main    


main:
    li $v0, 4
    la $a0, prompt_text
    syscall
    
    li $v0, 5
    syscall
    
    move $t0, $v0
    
    li $v0, 4
    la $a0, prompt_text
    syscall
    
    li $v0, 5
    syscall
    
    move $t1, $v0
    
    blt $t0, $t1, swap_registers
    
    j end

swap_registers:
    move $t2, $t0
    move $t0, $t1
    move $t1, $t2

end:
    sub $t0, $t0, $t1
    
    li $v0, 1
    move $a0, $t0
    syscall
        
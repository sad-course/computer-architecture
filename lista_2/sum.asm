.data
    promp_text: .ascii "Type a number: "
.text
    li $v0, 4
    la $a0, promp_text
    syscall
    
    li $v0, 5
    syscall
    
    move $t0, $v0
    
    li $v0, 4
    la $a0, promp_text
    syscall
    
    li $v0, 5
    syscall
    
    move $t1, $v0
    
    add $t0, $t0, $t1
    
    li $v0, 1
    move $a0, $t0
    syscall
    
    li $v0, 10
    syscall
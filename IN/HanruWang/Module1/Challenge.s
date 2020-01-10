        .data
one:    .asciiz "Hello \n"
        .text
main:                   # label for main entry
        li $v0, 4       # load immediate with the system call code 4 => print string
        la $a0, one     # v0 print a string value stored in $a0
        syscall         

        li $v0, 1       # load immediate with the system call code 1 => print integer
        li $a0, 2020    # v0 print a integer value stored in $a0 
        syscall

        li $v0,10       # load immediate with the system call code 10 => exit
        syscall


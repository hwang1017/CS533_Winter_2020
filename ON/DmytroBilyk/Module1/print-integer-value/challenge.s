
    .data                   # .data  to tell the assembler that we are going to give it some data to work with
word: .asciiz "Hello \n"    # used the .asciiz directive to tell the assembler that we are going to give it a string and we would like that string to be a null terminated
    .text                   # tells the assembler to expect some code now

main:                       # label for the main entry 
    li $v0, 4               # load immediate with the system call code 4 => print string
    la $a0, word            # $a0= address of  string which means the operating system will expect a pointer to a string in a register $a0 -> word
    syscall                 # notify OS to listen

    li $v0, 1               # load immediate with the system call code 1 => print integere
    li $a0, 2020            # v0 prints an integer value stored in $a0 which is 2020
    syscall                 # notify OS to listen

    li $v0, 10              # exit
    syscall                 # notify OS to listen
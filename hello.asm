#the items following this directive before the next directive 
#will be stored in the data section of the machine code.
.data 
#stores the quoted phrase in memory with a null-terminator at the end of the string. 
#In memory the string has 12 characters despite the fact that only 11 are printed.
#The last character in the string has a value of zero.
phrase: .string "Hello World"
#the items following this directive before the next directive(in this case, there are no other directives)
#will be stored in the text section of the machine code.
.text 



#while the program in this case would still run without this label, it is a good habit to 
#declare labels to organize your code. Some types of operations even require labels. 
#This will be elaborated further in future lessons.
main:
la a0, phrase #loads the address of the string into register a0
li a7, 4 #loads the value 4 into a7. a7 is the register used to store system call numbers.
ecall #issues a system call



#Again, this label is not required in this particular program, but it helps keep your code organized.
exit:
li a0, 0 #stores 0 into a0. The system will exit with this value(zero).
li a7, 93 #loads the value 93 into a7. This corresponds to the system call to exit the program with the code stored in a0
ecall #issues a system call 

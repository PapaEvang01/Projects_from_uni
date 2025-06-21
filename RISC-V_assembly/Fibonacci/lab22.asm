.data
str1: .asciz "Enter a number:"
str2: .asciz "Fibonacci sequence:\n"
str3: .asciz " "

.text
main:
la a0, str1 # a0 = input message
li a7, 4 # call code for print_string
ecall # system call


li a7,5 #call code for read-int
ecall
mv t0,a0 #move the int input to register

beqz t0,exit #if a0=0 exit

la a0,str2 #call  "Fibonacci sequence:"
li a7,4  #print
ecall 	#system call

li s1,0 #a
li s2,1 #b
li s3,0 #c
li t1,2 #i

#print the first one
bge t0,s2,print1 #if (n>=1) print1

for:
bgt t1,t0,exit #if t1=i>t0=n exit
add s3,s2,s1 #c=a+b
mv s1,s2 #a=b
mv s2,s3 #b=c
mv a0,s2
addi t1,t1,1 #i++
j print 

print1: #print the first one
mv a0,s2     #a0=input integer=s2=1
li a7,1      #print integer 	
ecall
la a0,str3 # " "
li a7,4    #print string 
ecall 
j for

print:
li a7,1      #print integer 	
ecall
la a0,str3 # " "
li a7,4    #print string 
ecall 
j for

exit:
li a7,10 #exit code(0)
ecall

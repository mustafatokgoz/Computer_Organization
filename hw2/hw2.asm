
				# Mustafa Tokgöz 171044077 Homework2 Computer Organization
.data 
arrSize: .space 4
target: .space 4
arr: .space 400
subset: .space 400
subsetlen: .space 4
input_massage0: .asciiz "Enter the array size (max limit 100) \n"
input_massage1: .asciiz "Enter the target number\n"
input_massage2: .asciiz "Enter numbers one by one\n"
output_mass1: .asciiz "Possible! "
output_mass2: .asciiz "Not Possible! "
space: .asciiz " "



.text
.globl main
main: 
	# printing massage
	li $v0 4
	la $a0 input_massage0
	syscall
	#reading an int for arrsize
	li $v0 5 
	syscall
	sw $v0,arrSize
	#printing massage
	li $v0 4
	la $a0 input_massage1
	syscall
	#reading an int for target
	li $v0 5 
	syscall
	sw $v0,target
	
	#I use t1 register for arraysize
	lw $a1 arrSize 

	
	#printing massage
	la $a0,input_massage2
	li $v0 4
	syscall
	#reads numbers for array
	jal reading_numbers_from_user
	
	#I use a0 register to store target
	lw $a0 target
	
	#calling CheckSumPosibility procedure
	jal CheckSumPosibility
	
	#loading address of no possible string
	la $a0 output_mass2
	#if(returnVal == 1)
	bne $v0,$zero,Possible
	
	#else
	li $v0 4
	syscall
	
	#to finish program
	li $v0 10
	syscall
	

	
Possible:
	#loasding adress of possible string and printing
	la $a0 output_mass1
	li $v0 4
	syscall
	
	#when i use in print array label,I make sure that they are zero
	move $t8,$zero
	move $t3,$zero
	move $t4,$zero
	
	#printing array for found subset
	jal print_array
	
	#finishing the program
	li $v0 10
	syscall

# loop for reading integers from user							
reading_numbers_from_user:
			# cin >> arr[i];
			li $v0 5  
			syscall
			sw $v0 , arr($s0)
			addi $s0,$s0 ,4
			addi $t2,$t2,1
			
			blt  $t2 , $a1 ,reading_numbers_from_user
			jr $ra
			
			

## t8 register for sum
## v0 for return value
## a3 register for length 
## a2 for array length
## a1 for array size
## a0 for target number  

#CheckSumPosibility procedure
CheckSumPosibility:
		#to set registers to zero for sum label
		move $t8,$zero
		move $t3,$zero
		move $t4,$zero
		
		#to store parameter curpos and length
		addi $sp,$sp,-12
		sw $ra,0($sp)
		sw $a2,4($sp) #a2 for current position
		sw $a3,8($sp) #a3 for legth
		
		#if current postion is not equal to array size then goes to Recursion label
		bne $a2,$a1,Recursion
		#if(curpos==size)
		jal Sum
		#if sum is not equal to num then returns 0
		bne $t8,$a0,Return0
		#if(sum==num)	
		li $v0,1
		lw $ra,0($sp)
		addi $sp,$sp,12
		jr $ra
		
#Sum loop for sum of subset
Sum :
	#sum +=S[i];
	lw $t2 subset($t3)
	addi $t3,$t3 ,4
	add  $t8 ,$t8,$t2
	addi $t4,$t4,1
	blt  $t4,$a3,Sum
	jr $ra

#return 0;										
Return0:
	move $v0,$zero
	lw $ra,0($sp)
	addi $sp,$sp,12
	jr $ra

#recursion part
#  S[length]=arr[curpos];
# return CheckSumPossibility(num,arr,size,curpos+1,length+1) ||
#               CheckSumPossibility(num,arr,size,curpos+1,length);				
Recursion:
	lw $a2,4($sp)
	lw $a3,8($sp)
	
	
	li $t1,4
	mult $a2,$t1
	mflo $t7
	mult $a3,$t1
	mflo $t5
	
	#  S[length]=arr[curpos];	
	lw $t6, arr($t7)
	sw $t6, subset($t5)
	
			
	# CheckSumPossibility(num,arr,size,curpos+1,length+1)						
	addi $a2,$a2,1
	addi $a3,$a3,1
			
	jal CheckSumPosibility
	
	#if v0(output) is 1 then returns 1 
	bne $v0,$zero,Return1
	lw $a2,4($sp)
	lw $a3,8($sp)
	
	#CheckSumPossibility(num,arr,size,curpos+1,length);
	addi $a2,$a2,1
	
	jal CheckSumPosibility
	#v0(output) is zero then returns 0 
	beq $v0,$zero,Return0
	
	#else returns 1
	li $v0,1
	sw $a3,subsetlen
	lw $ra,0($sp)
	addi $sp,$sp,12
	jr $ra
	
#return 1 label and stores the subset lenght				
Return1:	
	li $v0,1
	sw $a3,subsetlen
	lw $ra,0($sp)
	addi $sp,$sp,12
	jr $ra

	
#printing array for subset									
print_array: 
		li $v0 1
		lw $a0,subset($t3)
		syscall
		la $a0,space
		li $v0 4
		syscall
		
		addi $t3 ,$t3 ,4
		addi $t4 ,$t4 ,1
		lw $a1,subsetlen
		blt $t4,$a1 , print_array
		jr $ra			
						
			
			
					
			
					
					
			
		
		
		
		
		
		
		
		

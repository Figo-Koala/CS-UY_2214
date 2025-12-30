main:
	add  $1, $0, $0          # $1 will hold the sum
	addi $2, $0, head        # $2 = pointer to current node

loop:
	lw   $3, 0($2)           # $3 = cur->value
	lw   $4, 1($2)           # $4 = cur->next
	add  $1, $1, $3		# Cumulate the sum
	jeq  $4, $0, done	# If next == 0, done

	add  $2, $4, $0		# cur = cur->next
	j    loop		# jump back to loop

done:
	halt

chain4:
	.fill 100
	.fill chain5
	.fill 300
chain7:
	.fill 16384
	.fill 909
	.fill 0
chain1:
	.fill 23
	.fill chain2
head: 				# beginning of linked list
	.fill 34
	.fill chain1
	.fill 82
	.fill 10
chain3:
	.fill 4
	.fill chain4
	.fill 229
	.fill 449
chain2:
	.fill 0
	.fill chain3
chain5:
	.fill 12
	.fill 0 		# end of linked list
	.fill 9999
chain6:
	.fill 99
	.fill 49

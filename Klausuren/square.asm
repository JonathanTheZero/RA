.data
	x:	.word 9

.text
main:	addi	$sp, $sp, -4
	lw	$t0, x
	sw	$t0, ($sp)
	jal	square
	jal 	exit
	
square:	lw	$t0, ($sp)
	mul	$t0, $t0, $t0
	jr	$ra
	
exit:
	
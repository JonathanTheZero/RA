.data
sMsg:   .asciiz "\nAktueller Wert:\t: "	# Für Ergebnisanzeige

.text
main:	li 	$t0, 	10		# Kommentar 1 Nr.:

while:	blez	$t0,	elihw		# Kommentar 2 Nr.:
	addi	$t0,	$t0,	-1	# Kommentar 3 Nr.:
	addi	$sp,	$sp,	-4	# Kommentar 4 Nr.:
	sw	$t0,	4($sp)		# Kommentar 5 Nr.:
	move	$a0,	$t0		# Kommentar 6 Nr.:
	jal	print			# Unterprozeduraufruf
	lw	$t0,	4($sp)		# Kommentar 7 Nr.:
	addi	$sp,	$sp,	4	# Kommentar 8 Nr.:
	b	while			# Schleife wiederholen
elihw: 
	li $v0,	10			
	syscall				# EXIT des Programms
print:
	move	$t0,	$a0		# Kommentar 9 Nr.:
	li 	$v0,	4		# print_string
	la	$a0, sMsg		
	syscall
	move	$a0,	$t0		# Kommentar 10 	Nr.:
	li 	$v0,	1 		# print_int
	syscall
	jr $ra				# Rücksprung

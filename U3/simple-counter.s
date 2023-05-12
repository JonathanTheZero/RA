.data
sMsg:   .asciiz "\nAktueller Wert:\t: "	# FÃ¼r Ergebnisanzeige

.text
main:	li 	$t0, 	10		# Kommentar 1 Nr.: i := 10

while:	blez	$t0,	elihw		# Kommentar 2 Nr.: while i > 0
	addi	$t0,	$t0,	-1	# Kommentar 3 Nr.: i := i - 1
	addi	$sp,	$sp,	-4	# Kommentar 4 Nr.: Schaffe Platz auf Stack
	sw	$t0,	4($sp)		# Kommentar 5 Nr.: Sichere i auf Stack
	move	$a0,	$t0		# Kommentar 6 Nr.: Übergebe Argument
	jal	print			# Unterprozeduraufruf
	lw	$t0,	4($sp)		# Kommentar 7 Nr.: Lade i vom Stack
	addi	$sp,	$sp,	4	# Kommentar 8 Nr.: Setze Stackgröße zurück
	b	while			# Schleife wiederholen
elihw: 
	li $v0,	10			
	syscall				# EXIT des Programms
print:
	move	$t0,	$a0		# Kommentar 9 Nr.: Sichere übergebenes Argument
	li 	$v0,	4		# print_string
	la	$a0, sMsg		
	syscall
	move	$a0,	$t0		# Kommentar 10 	Nr.: Übergebe Argument
	li 	$v0,	1 		# print_int
	syscall
	jr $ra				# RÃ¼cksprung

        .data
values: .word 128 64 32 16 8 4 2 1
input:  .space 9
result: .word 0
ans:    .asciiz "Der Wert ist "
endl:   .asciiz "\n"
		
        # t0 - Zum Zwischenspeichern eines Zeichens
        # a1 - Zum Zwischenspeichern der aktuellen String-Postion

        .text
main:
        li      $v0, 8          # 8: read_str
        la      $a0, input      # Zieladresse des einzugebenden Textes
        li      $a1, 9          # maximale Länge
        syscall

	li 	$t5, 48		# ASCII("0") = 48
	li 	$t6, 49		# ASCII("1") = 49

	la   	$t1, values 	# t1 enthält Zeiger auf Stellenwert
	li 	$t7, 0		# Initialisiere Ergebnis

nextCh: # ==============================
        # Fügen Sie hier Ihre Lösung ein
        # ==============================







		

        # ==============================
        # Ende Ihrer Lösung
        # ==============================
null:				# Bit war 0
	addi    $t1, $t1, 4     # Verschiebe Zeiger um ein Wort
	addi    $a0, $a0, 1     # Verschiebe Zeiger um ein Zeichen
	j 	nextCh

eins:				# Bit war 1
        # ==============================
        # Fügen Sie hier Ihre Lösung ein
        # ==============================






		


        # ==============================
        # Ende Ihrer Lösung
        # ==============================

	addi    $t1, $t1, 4     # Verschiebe Zeiger um ein Wort
	addi    $a0, $a0, 1     # Verschiebe Zeiger um ein Zeichen
	j 	nextCh

strEnd: li      $v0, 4 		# 4: print_str
	la      $a0, endl       # Übergebe Adresse des Strings
	syscall			# Gebe Newline aus
        
        li      $v0, 4 		# 4: print_str
	la      $a0, ans        # Übergebe Adresse des Strings
	syscall			# Gebe Ergebnis-String aus

        li      $v0, 1 		# 4: print_int
	move    $a0, $t7        # Verschiebe Ergebnis
	syscall			# Gebe Ergebnis aus

	li      $v0, 4 		# 4: print_str
	la      $a0, endl       # Übergebe Adresse des Strings
	syscall			# Gebe Newline aus

        li      $v0,10
        syscall                 # au revoir...

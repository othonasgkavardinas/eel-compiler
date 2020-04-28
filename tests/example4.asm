L0:
	 j Lmain
L1:
proc:
	 sw $ra, ($sp)
L2:
	 lw $ra, ($sp)
	 jr $ra
Lmain:
L3:
	 addi $sp, $sp, 12
	 move $s0, $sp
L4:

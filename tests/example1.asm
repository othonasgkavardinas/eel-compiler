L0:
	 j Lmain
L1:
three:
	 sw $ra, ($sp)
L2:
	 lw  $t1 -12($sp)
	 sw  $t1 -24($sp)
L3:
	 lw  $t1 -12($sp)
	 sw  $t1 -24($sp)
L4:
	 lw  $t1 -24($sp)
	 lw  $t2 -16($s0)
	 bgt $t1, $t2, L6
L5:
	 j L7
L6:
	 j L12
L7:
	 lw  $t1 -28($sp)
	 lw  $t2 -24($sp)
	 mul $t1, $t1, $t2
	 sw  $t1 -32($sp)
L8:
	 lw  $t1 -32($sp)
	 sw  $t1 -28($sp)
L9:
	 lw  $t1 -24($sp)
	 lw  $t2 -12($sp)
	 add $t1, $t1, $t2
	 sw  $t1 -36($sp)
L10:
	 lw  $t1 -36($sp)
	 sw  $t1 -24($sp)
L11:
	 j L4
L12:
	 lw  $t1 -28($sp)
	 lw  $t0 -20($sp)
	 sw  $t1, ($t0)
L13:
	 lw  $t0 -20($sp)
	 lw  $t1, ($t0)
	 li  $t2, 1
	 add $t1, $t1, $t2
	 sw  $t1 -40($sp)
L14:
	 lw  $t1 -40($sp)
	 lw $t0, -8($sp)
	 sw $t1, ($t0)
L15:
	 li  $t1, 7
	 lw  $t0 -16($sp)
	 sw  $t1, ($t0)
L16:
	 lw $ra, ($sp)
	 jr $ra
L17:
two:
	 sw $ra, ($sp)
L18:
	 lw  $t1 -16($s0)
	 li  $t2, 2
	 add $t1, $t1, $t2
	 sw  $t1 -16($sp)
L19:
	 addi $fp, $sp, 44
	 lw  $t0 -16($sp)
	 sw $t0, -12($fp)
L20:
	 lw  $t0, -4($sp)
	 addi $t0, $t0, -12
	 sw $t0, -16($fp)
L21:
	 lw  $t0, -4($sp)
	 addi $t0, $t0, -24
	 sw $t0, -20($fp)
L22:
	 addi $t0, $sp, -20
	 sw $t0, -8($fp)
L23:
	 lw $t0, -4($sp)
	 sw $t0, -4($fp)
	 addi $sp $sp, 44
	 jal three
	 addi $sp $sp, -44
L24:
	 lw  $t1 -20($sp)
	 sw  $t1 -16($s0)
L25:
	 lw $ra, ($sp)
	 jr $ra
L26:
one:
	 sw $ra, ($sp)
L27:
	 addi $fp, $sp, 24
	 lw  $t0 -12($sp)
	 sw $t0, -12($fp)
L28:
	 sw $sp, -4($fp)
	 addi $sp $sp, 24
	 jal two
	 addi $sp $sp, -24
L29:
	 li  $t1, 1
	 lw $t0, -8($sp)
	 sw $t1, ($t0)
L30:
	 lw $ra, ($sp)
	 jr $ra
Lmain:
L31:
	 addi $sp, $sp, 28
	 move $s0, $sp
L32:
	 li  $t1, 5
	 sw  $t1 -16($s0)
L33:
	 li  $t1, 1
	 sw  $t1 -20($s0)
L34:

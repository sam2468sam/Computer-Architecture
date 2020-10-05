main:
	addi a2, zero, 3
	addi a0, zero, 0
	jal honoi
	j end
honoi:
	addi sp, sp, -8
	sw ra, 4(sp)
	sw a2, 0(sp)
	addi t0, zero, 1
	beq a2, t0, re
	addi a2, a2, -1
	jal honoi
	addi a0, a0, 1
	jal honoi
	lw ra, 4(sp)
	lw a2, 0(sp)
	addi sp, sp, 8
	jr ra
re:
	addi sp, sp, 8
	addi a0, a0, 1
	jr ra
end:
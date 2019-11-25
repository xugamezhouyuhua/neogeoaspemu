	.arch armv5te
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"pd4990a.c"
	.global	pd4990a
	.data
	.align	2
	.type	pd4990a, %object
	.size	pd4990a, 28
pd4990a:
	.word	0
	.word	0
	.word	0
	.word	9
	.word	9
	.word	115
	.word	1
	.local	shiftlo
	.comm	shiftlo,4,4
	.local	shifthi
	.comm	shifthi,4,4
	.local	retraces
	.comm	retraces,4,4
	.local	testwaits
	.comm	testwaits,4,4
	.align	2
	.type	maxwaits, %object
	.size	maxwaits, 4
maxwaits:
	.word	1
	.local	testbit
	.comm	testbit,4,4
	.local	outputbit
	.comm	outputbit,4,4
	.local	bitno
	.comm	bitno,4,4
	.local	reading
	.comm	reading,1,1
	.local	writting
	.comm	writting,1,1
	.local	clock_line
	.comm	clock_line,4,4
	.local	command_line
	.comm	command_line,4,4
	.text
	.align	2
	.global	pd4990a_addretrace
	.type	pd4990a_addretrace, %function
pd4990a_addretrace:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r3, .L18
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L18
	str	r2, [r3, #0]
	ldr	r3, .L18
	ldr	r2, [r3, #0]
	ldr	r3, .L18+4
	ldr	r3, [r3, #0]
	cmp	r2, r3
	blt	.L2
	ldr	r3, .L18+8
	ldr	r3, [r3, #0]
	eor	r2, r3, #1
	ldr	r3, .L18+8
	str	r2, [r3, #0]
	ldr	r3, .L18
	mov	r2, #0
	str	r2, [r3, #0]
.L2:
	ldr	r3, .L18+12
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L18+12
	str	r2, [r3, #0]
	ldr	r3, .L18+12
	ldr	r3, [r3, #0]
	cmp	r3, #59
	ble	.L11
.L3:
	ldr	r3, .L18+12
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L18+16
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L18+16
	str	r2, [r3, #0]
	ldr	r3, .L18+16
	ldr	r3, [r3, #0]
	and	r3, r3, #15
	cmp	r3, #9
	ble	.L12
.L5:
	ldr	r3, .L18+16
	ldr	r3, [r3, #0]
	and	r2, r3, #240
	ldr	r3, .L18+16
	str	r2, [r3, #0]
	ldr	r3, .L18+16
	ldr	r3, [r3, #0]
	add	r2, r3, #16
	ldr	r3, .L18+16
	str	r2, [r3, #0]
	ldr	r3, .L18+16
	ldr	r3, [r3, #0]
	cmp	r3, #95
	ble	.L13
.L6:
	ldr	r3, .L18+16
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L18+16
	ldr	r3, [r3, #4]
	add	r2, r3, #1
	ldr	r3, .L18+16
	str	r2, [r3, #4]
	ldr	r3, .L18+16
	ldr	r3, [r3, #4]
	and	r3, r3, #15
	cmp	r3, #9
	ble	.L14
.L7:
	ldr	r3, .L18+16
	ldr	r3, [r3, #4]
	and	r2, r3, #240
	ldr	r3, .L18+16
	str	r2, [r3, #4]
	ldr	r3, .L18+16
	ldr	r3, [r3, #4]
	add	r2, r3, #16
	ldr	r3, .L18+16
	str	r2, [r3, #4]
	ldr	r3, .L18+16
	ldr	r3, [r3, #4]
	cmp	r3, #95
	ble	.L15
.L8:
	ldr	r3, .L18+16
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, .L18+16
	ldr	r3, [r3, #8]
	add	r2, r3, #1
	ldr	r3, .L18+16
	str	r2, [r3, #8]
	ldr	r3, .L18+16
	ldr	r3, [r3, #8]
	and	r3, r3, #15
	cmp	r3, #9
	ble	.L16
.L9:
	ldr	r3, .L18+16
	ldr	r3, [r3, #8]
	and	r2, r3, #240
	ldr	r3, .L18+16
	str	r2, [r3, #8]
	ldr	r3, .L18+16
	ldr	r3, [r3, #8]
	add	r2, r3, #16
	ldr	r3, .L18+16
	str	r2, [r3, #8]
	ldr	r3, .L18+16
	ldr	r3, [r3, #8]
	cmp	r3, #35
	ble	.L17
.L10:
	ldr	r3, .L18+16
	mov	r2, #0
	str	r2, [r3, #8]
	bl	pd4990a_increment_day
	b	.L1
.L11:
	mov	r0, r0	@ nop
	b	.L1
.L12:
	mov	r0, r0	@ nop
	b	.L1
.L13:
	mov	r0, r0	@ nop
	b	.L1
.L14:
	mov	r0, r0	@ nop
	b	.L1
.L15:
	mov	r0, r0	@ nop
	b	.L1
.L16:
	mov	r0, r0	@ nop
	b	.L1
.L17:
	mov	r0, r0	@ nop
.L1:
	ldmfd	sp!, {fp, pc}
.L19:
	.align	2
.L18:
	.word	testwaits
	.word	maxwaits
	.word	testbit
	.word	retraces
	.word	pd4990a
	.fnend
	.size	pd4990a_addretrace, .-pd4990a_addretrace
	.align	2
	.global	pd4990a_increment_day
	.type	pd4990a_increment_day, %function
pd4990a_increment_day:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	ldr	r3, .L36
	ldr	r3, [r3, #12]
	add	r2, r3, #1
	ldr	r3, .L36
	str	r2, [r3, #12]
	ldr	r3, .L36
	ldr	r3, [r3, #12]
	and	r3, r3, #15
	cmp	r3, #9
	ble	.L21
	ldr	r3, .L36
	ldr	r3, [r3, #12]
	and	r2, r3, #240
	ldr	r3, .L36
	str	r2, [r3, #12]
	ldr	r3, .L36
	ldr	r3, [r3, #12]
	add	r2, r3, #16
	ldr	r3, .L36
	str	r2, [r3, #12]
.L21:
	ldr	r3, .L36
	ldr	r3, [r3, #24]
	add	r2, r3, #1
	ldr	r3, .L36
	str	r2, [r3, #24]
	ldr	r3, .L36
	ldr	r3, [r3, #24]
	cmp	r3, #7
	bne	.L22
	ldr	r3, .L36
	mov	r2, #0
	str	r2, [r3, #24]
.L22:
	ldr	r3, .L36
	ldr	r3, [r3, #16]
	cmp	r3, #12
	bhi	.L20
	ldr	r2, .L36+4
	mov	r2, r2, asl r3
	cmp	r2, #0
	blt	.L24
	mov	r2, #173015040
	mov	r2, r2, asl r3
	cmp	r2, #0
	blt	.L26
	mov	r2, #536870912
	mov	r3, r2, asl r3
	cmp	r3, #0
	blt	.L25
	b	.L20
.L24:
	ldr	r3, .L36
	ldr	r3, [r3, #12]
	cmp	r3, #50
	bne	.L33
	ldr	r3, .L36
	mov	r2, #1
	str	r2, [r3, #12]
	bl	pd4990a_increment_month
	b	.L33
.L25:
	ldr	r3, .L36
	ldr	r3, [r3, #20]
	mov	r2, r3, asr #4
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	mov	r2, r3
	ldr	r3, .L36
	ldr	r3, [r3, #20]
	and	r3, r3, #15
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	and	r3, r3, #3
	cmp	r3, #0
	beq	.L28
	ldr	r2, [fp, #-8]
	ldr	r3, .L36+8
	smull	r1, r3, r2, r3
	mov	r1, r3, asr #5
	mov	r3, r2, asr #31
	rsb	r3, r3, r1
	mov	r1, #100
	mul	r3, r1, r3
	rsb	r3, r3, r2
	cmp	r3, #0
	beq	.L29
	ldr	r2, [fp, #-8]
	ldr	r3, .L36+8
	smull	r1, r3, r2, r3
	mov	r1, r3, asr #7
	mov	r3, r2, asr #31
	rsb	r3, r3, r1
	mov	r1, #400
	mul	r3, r1, r3
	rsb	r3, r3, r2
	cmp	r3, #0
	beq	.L28
.L29:
	ldr	r3, .L36
	ldr	r3, [r3, #12]
	cmp	r3, #41
	bne	.L31
	ldr	r3, .L36
	mov	r2, #1
	str	r2, [r3, #12]
	bl	pd4990a_increment_month
	b	.L31
.L28:
	ldr	r3, .L36
	ldr	r3, [r3, #12]
	cmp	r3, #48
	bne	.L34
	ldr	r3, .L36
	mov	r2, #1
	str	r2, [r3, #12]
	bl	pd4990a_increment_month
	b	.L34
.L31:
	b	.L34
.L26:
	ldr	r3, .L36
	ldr	r3, [r3, #12]
	cmp	r3, #49
	bne	.L35
	ldr	r3, .L36
	mov	r2, #1
	str	r2, [r3, #12]
	bl	pd4990a_increment_month
	b	.L35
.L33:
	mov	r0, r0	@ nop
	b	.L20
.L34:
	mov	r0, r0	@ nop
	b	.L20
.L35:
	mov	r0, r0	@ nop
.L20:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L37:
	.align	2
.L36:
	.word	pd4990a
	.word	1437073408
	.word	1374389535
	.fnend
	.size	pd4990a_increment_day, .-pd4990a_increment_day
	.align	2
	.global	pd4990a_increment_month
	.type	pd4990a_increment_month, %function
pd4990a_increment_month:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	ldr	r3, .L41
	ldr	r3, [r3, #16]
	add	r2, r3, #1
	ldr	r3, .L41
	str	r2, [r3, #16]
	ldr	r3, .L41
	ldr	r3, [r3, #16]
	cmp	r3, #13
	bne	.L38
	ldr	r3, .L41
	mov	r2, #1
	str	r2, [r3, #16]
	ldr	r3, .L41
	ldr	r3, [r3, #20]
	add	r2, r3, #1
	ldr	r3, .L41
	str	r2, [r3, #20]
	ldr	r3, .L41
	ldr	r3, [r3, #20]
	and	r3, r3, #15
	cmp	r3, #9
	ble	.L40
	ldr	r3, .L41
	ldr	r3, [r3, #20]
	and	r2, r3, #240
	ldr	r3, .L41
	str	r2, [r3, #20]
	ldr	r3, .L41
	ldr	r3, [r3, #20]
	add	r2, r3, #16
	ldr	r3, .L41
	str	r2, [r3, #20]
.L40:
	ldr	r3, .L41
	ldr	r3, [r3, #20]
	cmp	r3, #160
	bne	.L38
	ldr	r3, .L41
	mov	r2, #0
	str	r2, [r3, #20]
.L38:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L42:
	.align	2
.L41:
	.word	pd4990a
	.fnend
	.size	pd4990a_increment_month, .-pd4990a_increment_month
	.align	2
	.global	pd4990a_testbit_r
	.type	pd4990a_testbit_r, %function
pd4990a_testbit_r:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #12
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, .L44
	ldr	r3, [r3, #0]
	and	r3, r3, #255
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L45:
	.align	2
.L44:
	.word	testbit
	.fnend
	.size	pd4990a_testbit_r, .-pd4990a_testbit_r
	.align	2
	.global	pd4990a_databit_r
	.type	pd4990a_databit_r, %function
pd4990a_databit_r:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #12
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, .L47
	ldr	r3, [r3, #0]
	and	r3, r3, #255
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L48:
	.align	2
.L47:
	.word	outputbit
	.fnend
	.size	pd4990a_databit_r, .-pd4990a_databit_r
	.align	2
	.type	pd4990a_readbit, %function
pd4990a_readbit:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	ldr	r3, .L60
	ldr	r3, [r3, #0]
	cmp	r3, #51
	ldrls	pc, [pc, r3, asl #2]
	b	.L49
.L59:
	.word	.L51
	.word	.L51
	.word	.L51
	.word	.L51
	.word	.L51
	.word	.L51
	.word	.L51
	.word	.L51
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L53
	.word	.L53
	.word	.L53
	.word	.L53
	.word	.L53
	.word	.L53
	.word	.L53
	.word	.L53
	.word	.L54
	.word	.L54
	.word	.L54
	.word	.L54
	.word	.L54
	.word	.L54
	.word	.L54
	.word	.L54
	.word	.L55
	.word	.L55
	.word	.L55
	.word	.L55
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L57
	.word	.L49
	.word	.L49
	.word	.L49
	.word	.L49
.L51:
	ldr	r3, .L60+4
	ldr	r2, [r3, #0]
	ldr	r3, .L60
	ldr	r3, [r3, #0]
	mov	r3, r2, asr r3
	and	r2, r3, #1
	ldr	r3, .L60+8
	str	r2, [r3, #0]
	b	.L49
.L52:
	ldr	r3, .L60+4
	ldr	r2, [r3, #4]
	ldr	r3, .L60
	ldr	r3, [r3, #0]
	sub	r3, r3, #8
	mov	r3, r2, asr r3
	and	r2, r3, #1
	ldr	r3, .L60+8
	str	r2, [r3, #0]
	b	.L49
.L53:
	ldr	r3, .L60+4
	ldr	r2, [r3, #8]
	ldr	r3, .L60
	ldr	r3, [r3, #0]
	sub	r3, r3, #16
	mov	r3, r2, asr r3
	and	r2, r3, #1
	ldr	r3, .L60+8
	str	r2, [r3, #0]
	b	.L49
.L54:
	ldr	r3, .L60+4
	ldr	r2, [r3, #12]
	ldr	r3, .L60
	ldr	r3, [r3, #0]
	sub	r3, r3, #24
	mov	r3, r2, asr r3
	and	r2, r3, #1
	ldr	r3, .L60+8
	str	r2, [r3, #0]
	b	.L49
.L55:
	ldr	r3, .L60+4
	ldr	r2, [r3, #24]
	ldr	r3, .L60
	ldr	r3, [r3, #0]
	sub	r3, r3, #32
	mov	r3, r2, asr r3
	and	r2, r3, #1
	ldr	r3, .L60+8
	str	r2, [r3, #0]
	b	.L49
.L56:
	ldr	r3, .L60+4
	ldr	r2, [r3, #16]
	ldr	r3, .L60
	ldr	r3, [r3, #0]
	sub	r3, r3, #36
	mov	r3, r2, asr r3
	and	r2, r3, #1
	ldr	r3, .L60+8
	str	r2, [r3, #0]
	b	.L49
.L57:
	ldr	r3, .L60+4
	ldr	r2, [r3, #20]
	ldr	r3, .L60
	ldr	r3, [r3, #0]
	sub	r3, r3, #40
	mov	r3, r2, asr r3
	and	r2, r3, #1
	ldr	r3, .L60+8
	str	r2, [r3, #0]
	mov	r0, r0	@ nop
.L49:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L61:
	.align	2
.L60:
	.word	bitno
	.word	pd4990a
	.word	outputbit
	.fnend
	.size	pd4990a_readbit, .-pd4990a_readbit
	.align	2
	.type	pd4990a_resetbitstream, %function
pd4990a_resetbitstream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	ldr	r3, .L63
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L63+4
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L63+8
	mov	r2, #0
	str	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L64:
	.align	2
.L63:
	.word	shiftlo
	.word	shifthi
	.word	bitno
	.fnend
	.size	pd4990a_resetbitstream, .-pd4990a_resetbitstream
	.align	2
	.type	pd4990a_writebit, %function
pd4990a_writebit:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #12
	sub	sp, sp, #12
	mov	r3, r0
	strb	r3, [fp, #-5]
	ldr	r3, .L68
	ldr	r3, [r3, #0]
	cmp	r3, #31
	bgt	.L66
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	ldr	r3, .L68
	ldr	r3, [r3, #0]
	mov	r3, r2, asl r3
	mov	r2, r3
	ldr	r3, .L68+4
	ldr	r3, [r3, #0]
	orr	r2, r2, r3
	ldr	r3, .L68+4
	str	r2, [r3, #0]
	b	.L65
.L66:
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	ldr	r3, .L68
	ldr	r3, [r3, #0]
	sub	r3, r3, #32
	mov	r3, r2, asl r3
	mov	r2, r3
	ldr	r3, .L68+8
	ldr	r3, [r3, #0]
	orr	r2, r2, r3
	ldr	r3, .L68+8
	str	r2, [r3, #0]
.L65:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L69:
	.align	2
.L68:
	.word	bitno
	.word	shiftlo
	.word	shifthi
	.fnend
	.size	pd4990a_writebit, .-pd4990a_writebit
	.align	2
	.type	pd4990a_nextbit, %function
pd4990a_nextbit:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r3, .L73
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L73
	str	r2, [r3, #0]
	ldr	r3, .L73+4
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L71
	bl	pd4990a_readbit
.L71:
	ldr	r3, .L73+4
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L70
	ldr	r3, .L73
	ldr	r3, [r3, #0]
	cmp	r3, #52
	bne	.L70
	ldr	r1, .L73+4
	mov	r3, #0
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
	bl	pd4990a_resetbitstream
.L70:
	ldmfd	sp!, {fp, pc}
.L74:
	.align	2
.L73:
	.word	bitno
	.word	reading
	.fnend
	.size	pd4990a_nextbit, .-pd4990a_nextbit
	.align	2
	.type	pd4990a_getcommand, %function
pd4990a_getcommand:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	ldr	r3, .L78
	ldr	r3, [r3, #0]
	cmp	r3, #31
	bgt	.L76
	ldr	r3, .L78+4
	ldr	r2, [r3, #0]
	ldr	r3, .L78
	ldr	r3, [r3, #0]
	sub	r3, r3, #4
	mov	r3, r2, lsr r3
	and	r3, r3, #255
	b	.L77
.L76:
	ldr	r3, .L78+8
	ldr	r2, [r3, #0]
	ldr	r3, .L78
	ldr	r3, [r3, #0]
	sub	r3, r3, #36
	mov	r3, r2, lsr r3
	and	r3, r3, #255
.L77:
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L79:
	.align	2
.L78:
	.word	bitno
	.word	shiftlo
	.word	shifthi
	.fnend
	.size	pd4990a_getcommand, .-pd4990a_getcommand
	.align	2
	.type	pd4990a_update_date, %function
pd4990a_update_date:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	ldr	r3, .L81
	ldr	r3, [r3, #0]
	and	r2, r3, #255
	ldr	r3, .L81+4
	str	r2, [r3, #0]
	ldr	r3, .L81
	ldr	r3, [r3, #0]
	mov	r3, r3, lsr #8
	and	r2, r3, #255
	ldr	r3, .L81+4
	str	r2, [r3, #4]
	ldr	r3, .L81
	ldr	r3, [r3, #0]
	mov	r3, r3, lsr #16
	and	r2, r3, #255
	ldr	r3, .L81+4
	str	r2, [r3, #8]
	ldr	r3, .L81
	ldr	r3, [r3, #0]
	mov	r3, r3, lsr #24
	mov	r2, r3
	ldr	r3, .L81+4
	str	r2, [r3, #12]
	ldr	r3, .L81+8
	ldr	r3, [r3, #0]
	and	r2, r3, #15
	ldr	r3, .L81+4
	str	r2, [r3, #24]
	ldr	r3, .L81+8
	ldr	r3, [r3, #0]
	mov	r3, r3, lsr #4
	and	r2, r3, #15
	ldr	r3, .L81+4
	str	r2, [r3, #16]
	ldr	r3, .L81+8
	ldr	r3, [r3, #0]
	mov	r3, r3, lsr #8
	and	r2, r3, #255
	ldr	r3, .L81+4
	str	r2, [r3, #20]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L82:
	.align	2
.L81:
	.word	shiftlo
	.word	pd4990a
	.word	shifthi
	.fnend
	.size	pd4990a_update_date, .-pd4990a_update_date
	.align	2
	.type	pd4990a_process_command, %function
pd4990a_process_command:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	bl	pd4990a_getcommand
	mov	r3, r0
	sub	r3, r3, #1
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L83
.L90:
	.word	.L85
	.word	.L86
	.word	.L87
	.word	.L83
	.word	.L83
	.word	.L83
	.word	.L88
	.word	.L89
.L85:
	ldr	r3, .L92
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L92+4
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L91
	bl	pd4990a_readbit
.L91:
	ldr	r3, .L92+8
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L92+12
	mov	r2, #0
	str	r2, [r3, #0]
	b	.L83
.L86:
	ldr	r1, .L92+16
	mov	r3, #0
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
	bl	pd4990a_update_date
	b	.L83
.L87:
	ldr	r1, .L92+4
	mov	r3, #1
	mov	r2, r3
	mov	r3, r1
	strb	r2, [r3, #0]
	b	.L83
.L88:
	ldr	r3, .L92+20
	mov	r2, #1
	str	r2, [r3, #0]
	b	.L83
.L89:
	ldr	r3, .L92+20
	mov	r2, #30
	str	r2, [r3, #0]
	mov	r0, r0	@ nop
.L83:
	ldmfd	sp!, {fp, pc}
.L93:
	.align	2
.L92:
	.word	bitno
	.word	reading
	.word	shiftlo
	.word	shifthi
	.word	writting
	.word	maxwaits
	.fnend
	.size	pd4990a_process_command, .-pd4990a_process_command
	.align	2
	.type	pd4990a_serial_control, %function
pd4990a_serial_control:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	mov	r3, r0
	strb	r3, [fp, #-5]
	ldr	r3, .L97
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L95
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L95
	bl	pd4990a_process_command
	bl	pd4990a_resetbitstream
.L95:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	and	r2, r3, #4
	ldr	r3, .L97
	str	r2, [r3, #0]
	ldr	r3, .L97+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L96
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L96
	ldrb	r3, [fp, #-5]
	and	r3, r3, #1
	and	r3, r3, #255
	mov	r0, r3
	bl	pd4990a_writebit
	bl	pd4990a_nextbit
.L96:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	and	r2, r3, #2
	ldr	r3, .L97+4
	str	r2, [r3, #0]
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L98:
	.align	2
.L97:
	.word	command_line
	.word	clock_line
	.fnend
	.size	pd4990a_serial_control, .-pd4990a_serial_control
	.align	2
	.global	pd4990a_control_w
	.type	pd4990a_control_w, %function
pd4990a_control_w:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	mov	r3, r2
	strh	r1, [fp, #-10]	@ movhi
	strh	r3, [fp, #-12]	@ movhi
	ldrh	r3, [fp, #-10]	@ movhi
	and	r3, r3, #255
	and	r3, r3, #7
	and	r3, r3, #255
	mov	r0, r3
	bl	pd4990a_serial_control
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	pd4990a_control_w, .-pd4990a_control_w
	.align	2
	.global	state_save_pd4990a
	.type	state_save_pd4990a, %function
state_save_pd4990a:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	ldr	r1, .L101+4
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L101
	str	r2, [r3, #0]
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	ldr	r1, .L101+8
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L101
	str	r2, [r3, #0]
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	ldr	r1, .L101+12
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L101
	str	r2, [r3, #0]
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	ldr	r1, .L101+16
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L101
	str	r2, [r3, #0]
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	ldr	r1, .L101+20
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L101
	str	r2, [r3, #0]
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	ldr	r1, .L101+24
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L101
	str	r2, [r3, #0]
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	ldr	r1, .L101+28
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L101
	str	r2, [r3, #0]
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	ldr	r1, .L101+32
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L101
	str	r2, [r3, #0]
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	ldr	r1, .L101+36
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L101
	str	r2, [r3, #0]
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	ldr	r1, .L101+40
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L101
	str	r2, [r3, #0]
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	ldr	r1, .L101+44
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L101
	str	r2, [r3, #0]
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	ldr	r1, .L101+48
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L101
	str	r2, [r3, #0]
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	ldr	r1, .L101+52
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L101
	str	r2, [r3, #0]
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	ldr	r1, .L101+56
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L101
	str	r2, [r3, #0]
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	ldr	r1, .L101+60
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L101
	str	r2, [r3, #0]
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	ldr	r1, .L101+64
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L101
	str	r2, [r3, #0]
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	ldr	r1, .L101+68
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L101
	str	r2, [r3, #0]
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	ldr	r1, .L101+72
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L101
	str	r2, [r3, #0]
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	ldr	r1, .L101+76
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L101
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L101
	str	r2, [r3, #0]
	ldmfd	sp!, {fp, pc}
.L102:
	.align	2
.L101:
	.word	state_buffer
	.word	pd4990a
	.word	pd4990a+4
	.word	pd4990a+8
	.word	pd4990a+12
	.word	pd4990a+16
	.word	pd4990a+20
	.word	pd4990a+24
	.word	shiftlo
	.word	shifthi
	.word	retraces
	.word	testwaits
	.word	maxwaits
	.word	testbit
	.word	outputbit
	.word	bitno
	.word	reading
	.word	writting
	.word	clock_line
	.word	command_line
	.fnend
	.size	state_save_pd4990a, .-state_save_pd4990a
	.align	2
	.global	state_load_pd4990a
	.type	state_load_pd4990a, %function
state_load_pd4990a:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, .L104
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L104+4
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L104+8
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L104+12
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L104+16
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L104+20
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L104+24
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L104+28
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L104+32
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L104+36
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L104+40
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L104+44
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L104+48
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L104+52
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L104+56
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L104+60
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L104+64
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L104+68
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r3, .L104+72
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-8]
	bl	fread
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L105:
	.align	2
.L104:
	.word	pd4990a
	.word	pd4990a+4
	.word	pd4990a+8
	.word	pd4990a+12
	.word	pd4990a+16
	.word	pd4990a+20
	.word	pd4990a+24
	.word	shiftlo
	.word	shifthi
	.word	retraces
	.word	testwaits
	.word	maxwaits
	.word	testbit
	.word	outputbit
	.word	bitno
	.word	reading
	.word	writting
	.word	clock_line
	.word	command_line
	.fnend
	.size	state_load_pd4990a, .-state_load_pd4990a
	.ident	"GCC: (Sourcery CodeBench Lite 2012.03-57) 4.6.3"
	.section	.note.GNU-stack,"",%progbits

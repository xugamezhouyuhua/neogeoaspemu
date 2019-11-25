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
	.file	"timer.c"
	.local	timer
	.comm	timer,96,4
	.local	cpu
	.comm	cpu,40,4
	.local	global_offset
	.comm	global_offset,4,4
	.local	base_time
	.comm	base_time,4,4
	.local	frame_base
	.comm	frame_base,4,4
	.local	timer_ticks
	.comm	timer_ticks,4,4
	.local	timer_left
	.comm	timer_left,4,4
	.local	active_cpu
	.comm	active_cpu,4,4
	.local	scanline
	.comm	scanline,4,4
	.comm	timer_update_cpu,4,4
	.text
	.align	2
	.type	cpu_execute, %function
cpu_execute:
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
	ldr	r0, .L3
	ldr	r2, [fp, #-8]
	mov	r1, #16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L1
	ldr	r3, .L3+4
	ldr	r2, [fp, #-8]
	str	r2, [r3, #0]
	ldr	r0, .L3
	ldr	r2, [fp, #-8]
	mov	r1, #8
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r2, .L3+8
	ldr	r2, [r2, #0]
	mul	r1, r2, r3
	ldr	ip, .L3
	ldr	r2, [fp, #-8]
	mov	r0, #12
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, ip
	add	r2, r2, r3
	mov	r3, r0
	add	r3, r2, r3
	str	r1, [r3, #0]
	ldr	r1, .L3
	ldr	r2, [fp, #-8]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r1
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	ip, .L3
	ldr	r2, [fp, #-8]
	mov	r0, #12
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, ip
	add	r2, r2, r3
	mov	r3, r0
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mov	r0, r3
	blx	r1
	ldr	r3, .L3+4
	mvn	r2, #0
	str	r2, [r3, #0]
.L1:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L4:
	.align	2
.L3:
	.word	cpu
	.word	active_cpu
	.word	timer_ticks
	.fnend
	.size	cpu_execute, .-cpu_execute
	.align	2
	.type	cpu_spin_trigger, %function
cpu_spin_trigger:
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
	ldr	r0, [fp, #-8]
	mov	r1, #1
	mov	r2, #4
	bl	timer_suspend_cpu
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	cpu_spin_trigger, .-cpu_spin_trigger
	.global	__aeabi_idiv
	.align	2
	.type	getabsolutetime, %function
getabsolutetime:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	ldr	r3, .L8
	ldr	r2, [r3, #0]
	ldr	r3, .L8+4
	ldr	r3, [r3, #0]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, .L8+8
	ldr	r3, [r3, #0]
	cmn	r3, #1
	beq	.L7
	ldr	r3, .L8+8
	ldr	r2, [r3, #0]
	ldr	r0, .L8+12
	mov	r1, #12
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, .L8+8
	ldr	r2, [r3, #0]
	ldr	ip, .L8+12
	mov	r0, #4
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, ip
	add	r2, r2, r3
	mov	r3, r0
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #0]
	rsb	r1, r3, r1
	ldr	r3, .L8+8
	ldr	r2, [r3, #0]
	ldr	ip, .L8+12
	mov	r0, #8
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, ip
	add	r2, r2, r3
	mov	r3, r0
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
.L7:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L9:
	.align	2
.L8:
	.word	base_time
	.word	frame_base
	.word	active_cpu
	.word	cpu
	.fnend
	.size	getabsolutetime, .-getabsolutetime
	.align	2
	.global	timer_reset
	.type	timer_reset, %function
timer_reset:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r3, .L11
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L11+4
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L11+8
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L11+12
	mvn	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L11+16
	mov	r2, #96
	mov	r0, r3
	mov	r1, #0
	mov	r3, r2
	mov	r2, r3
	bl	memset
	ldr	r3, .L11+20
	ldr	r2, .L11+24
	str	r2, [r3, #0]
	ldr	r3, .L11+20
	ldr	r2, .L11+28
	str	r2, [r3, #4]
	ldr	r3, .L11+20
	mov	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L11+20
	mov	r2, #0
	str	r2, [r3, #16]
	ldr	r3, .L11+20
	mov	r2, #12
	str	r2, [r3, #8]
	ldr	r3, .L11+20
	ldr	r2, .L11+32
	str	r2, [r3, #20]
	ldr	r3, .L11+20
	ldr	r2, .L11+36
	str	r2, [r3, #24]
	ldr	r3, .L11+20
	mov	r2, #0
	str	r2, [r3, #32]
	ldr	r3, .L11+20
	mov	r2, #0
	str	r2, [r3, #36]
	ldr	r3, .L11+20
	mov	r2, #4
	str	r2, [r3, #28]
	ldmfd	sp!, {fp, pc}
.L12:
	.align	2
.L11:
	.word	global_offset
	.word	base_time
	.word	frame_base
	.word	active_cpu
	.word	timer
	.word	cpu
	.word	m68000_execute
	.word	C68K+112
	.word	z80_execute
	.word	CZ80+44
	.fnend
	.size	timer_reset, .-timer_reset
	.align	2
	.global	timer_set_update_handler
	.type	timer_set_update_handler, %function
timer_set_update_handler:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	ldr	r3, .L16
	ldr	r3, [r3, #0]
	cmp	r3, #1
	bne	.L14
	ldr	r3, .L16+4
	ldr	r2, .L16+8
	str	r2, [r3, #0]
	b	.L13
.L14:
	ldr	r3, .L16+4
	ldr	r2, .L16+12
	str	r2, [r3, #0]
.L13:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L17:
	.align	2
.L16:
	.word	neogeo_driver_type
	.word	timer_update_cpu
	.word	timer_update_cpu_normal
	.word	timer_update_cpu_raster
	.fnend
	.size	timer_set_update_handler, .-timer_set_update_handler
	.align	2
	.global	timer_suspend_cpu
	.type	timer_suspend_cpu, %function
timer_suspend_cpu:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L19
	ldr	r0, .L21
	ldr	r2, [fp, #-8]
	mov	r1, #16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	orr	r1, r2, r3
	ldr	ip, .L21
	ldr	r2, [fp, #-8]
	mov	r0, #16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, ip
	add	r2, r2, r3
	mov	r3, r0
	add	r3, r2, r3
	str	r1, [r3, #0]
	b	.L18
.L19:
	ldr	r0, .L21
	ldr	r2, [fp, #-8]
	mov	r1, #16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	mvn	r3, r3
	and	r1, r2, r3
	ldr	ip, .L21
	ldr	r2, [fp, #-8]
	mov	r0, #16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, ip
	add	r2, r2, r3
	mov	r3, r0
	add	r3, r2, r3
	str	r1, [r3, #0]
.L18:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L22:
	.align	2
.L21:
	.word	cpu
	.fnend
	.size	timer_suspend_cpu, .-timer_suspend_cpu
	.align	2
	.global	timer_enable
	.type	timer_enable, %function
timer_enable:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r2, .L24
	ldr	r3, [fp, #-16]
	mov	r1, #4
	mov	r3, r3, asl #4
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldr	r2, .L24
	ldr	r3, [fp, #-16]
	mov	r1, #4
	mov	r3, r3, asl #4
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L25:
	.align	2
.L24:
	.word	timer
	.fnend
	.size	timer_enable, .-timer_enable
	.align	2
	.global	timer_adjust
	.type	timer_adjust, %function
timer_adjust:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #32
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	bl	getabsolutetime
	str	r0, [fp, #-8]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-28]
	add	r1, r2, r3
	ldr	r3, .L28
	ldr	r2, [fp, #-24]
	str	r1, [r3, r2, asl #4]
	ldr	r2, .L28
	ldr	r3, [fp, #-24]
	mov	r1, #8
	mov	r3, r3, asl #4
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	str	r2, [r3, #0]
	ldr	r2, .L28
	ldr	r3, [fp, #-24]
	mov	r1, #12
	mov	r3, r3, asl #4
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	str	r2, [r3, #0]
	ldr	r3, .L28+4
	ldr	r3, [r3, #0]
	cmn	r3, #1
	beq	.L26
	ldr	r3, .L28+4
	ldr	r2, [r3, #0]
	ldr	r0, .L28+8
	mov	r1, #4
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-12]
	ldr	r3, .L28+4
	ldr	r2, [r3, #0]
	ldr	r0, .L28+8
	mov	r1, #8
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r0, [fp, #-12]
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, .L28+12
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-28]
	cmp	r2, r3
	bge	.L26
	ldr	r3, .L28+16
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	rsb	r2, r3, r2
	ldr	r3, .L28+16
	str	r2, [r3, #0]
	ldr	r3, .L28+4
	ldr	r2, [r3, #0]
	ldr	r3, .L28+4
	ldr	r1, [r3, #0]
	ldr	ip, .L28+8
	mov	r0, #12
	mov	r3, r1
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asl #2
	mov	r1, ip
	add	r1, r1, r3
	mov	r3, r0
	add	r3, r1, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-12]
	rsb	r1, r3, r1
	ldr	ip, .L28+8
	mov	r0, #12
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, ip
	add	r2, r2, r3
	mov	r3, r0
	add	r3, r2, r3
	str	r1, [r3, #0]
	ldr	r3, .L28+4
	ldr	r2, [r3, #0]
	ldr	r0, .L28+8
	mov	r1, #4
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r0
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L28+4
	ldr	r3, [r3, #0]
	cmp	r3, #1
	bne	.L26
	ldr	r3, .L28
	ldr	r3, [r3, #68]
	cmp	r3, #0
	bne	.L26
	mov	r0, #0
	mov	r1, #0
	mov	r2, #4
	bl	timer_suspend_cpu
	ldr	r3, .L28
	mov	r2, #1
	str	r2, [r3, #68]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r2, r2, r3
	ldr	r3, .L28
	str	r2, [r3, #64]
	ldr	r3, .L28
	mov	r2, #0
	str	r2, [r3, #72]
	ldr	r3, .L28
	ldr	r2, .L28+20
	str	r2, [r3, #76]
.L26:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L29:
	.align	2
.L28:
	.word	timer
	.word	active_cpu
	.word	cpu
	.word	timer_left
	.word	timer_ticks
	.word	cpu_spin_trigger
	.fnend
	.size	timer_adjust, .-timer_adjust
	.align	2
	.global	timer_set
	.type	timer_set, %function
timer_set:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r2, .L31
	ldr	r3, [fp, #-8]
	mov	r1, #4
	mov	r3, r3, asl #4
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #1
	str	r2, [r3, #0]
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	bl	timer_adjust
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L32:
	.align	2
.L31:
	.word	timer
	.fnend
	.size	timer_set, .-timer_set
	.global	__aeabi_i2f
	.global	__aeabi_f2d
	.global	__aeabi_ddiv
	.global	__aeabi_dadd
	.global	__aeabi_d2f
	.align	2
	.global	timer_get_time
	.type	timer_get_time, %function
timer_get_time:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
	.setfp fp, sp, #12
	add	fp, sp, #12
	.pad #8
	sub	sp, sp, #8
	bl	getabsolutetime
	str	r0, [fp, #-16]
	ldr	r3, .L34+8
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	ldr	r0, [fp, #-16]
	bl	__aeabi_i2f
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	adr	r3, .L34
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp!, {r4, r5, fp, pc}
.L35:
	.align	3
.L34:
	.word	0
	.word	1093567616
	.word	global_offset
	.fnend
	.size	timer_get_time, .-timer_get_time
	.align	2
	.global	timer_getscanline
	.type	timer_getscanline, %function
timer_getscanline:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	ldr	r3, .L39
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L37
	ldr	r3, .L39+4
	ldr	r3, [r3, #0]
	b	.L38
.L37:
	ldr	r3, .L39+8
	ldr	r3, [r3, #0]
	mov	r3, r3, asr #6
	add	r3, r3, #1
.L38:
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L40:
	.align	2
.L39:
	.word	neogeo_driver_type
	.word	scanline
	.word	frame_base
	.fnend
	.size	timer_getscanline, .-timer_getscanline
	.global	__aeabi_i2d
	.global	__aeabi_d2iz
	.align	2
	.type	timer_update_cpu_normal, %function
timer_update_cpu_normal:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r3, .L56
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L56+4
	mov	r2, #16896
	str	r2, [r3, #0]
	b	.L42
.L49:
	ldr	r3, .L56+4
	ldr	r2, [r3, #0]
	ldr	r3, .L56+8
	str	r2, [r3, #0]
	ldr	r3, .L56+12
	ldr	r2, [r3, #0]
	ldr	r3, .L56
	ldr	r3, [r3, #0]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L43
.L46:
	ldr	r2, .L56+16
	ldr	r3, [fp, #-8]
	mov	r1, #4
	mov	r3, r3, asl #4
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L44
	ldr	r3, .L56+16
	ldr	r2, [fp, #-8]
	ldr	r2, [r3, r2, asl #4]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	cmp	r3, #0
	bgt	.L44
	ldr	r2, .L56+16
	ldr	r3, [fp, #-8]
	mov	r1, #4
	mov	r3, r3, asl #4
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r2, .L56+16
	ldr	r3, [fp, #-8]
	mov	r1, #12
	mov	r3, r3, asl #4
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r1, .L56+16
	ldr	r2, [fp, #-8]
	mov	r0, #8
	mov	r2, r2, asl #4
	add	r1, r1, r2
	mov	r2, r0
	add	r2, r1, r2
	ldr	r2, [r2, #0]
	mov	r0, r2
	blx	r3
.L44:
	ldr	r2, .L56+16
	ldr	r3, [fp, #-8]
	mov	r1, #4
	mov	r3, r3, asl #4
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L45
	ldr	r3, .L56+16
	ldr	r2, [fp, #-8]
	ldr	r2, [r3, r2, asl #4]
	ldr	r3, [fp, #-12]
	rsb	r2, r3, r2
	ldr	r3, .L56+8
	ldr	r3, [r3, #0]
	cmp	r2, r3
	bge	.L45
	ldr	r3, .L56+16
	ldr	r2, [fp, #-8]
	ldr	r2, [r3, r2, asl #4]
	ldr	r3, [fp, #-12]
	rsb	r2, r3, r2
	ldr	r3, .L56+8
	str	r2, [r3, #0]
.L45:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L43:
	ldr	r3, [fp, #-8]
	cmp	r3, #5
	ble	.L46
	ldr	r3, .L56+20
	ldr	r3, [r3, #0]
	cmp	r3, #3
	bne	.L55
.L47:
	mov	r0, #0
	bl	cpu_execute
	mov	r0, #1
	bl	cpu_execute
	ldr	r3, .L56
	ldr	r2, [r3, #0]
	ldr	r3, .L56+8
	ldr	r3, [r3, #0]
	add	r2, r2, r3
	ldr	r3, .L56
	str	r2, [r3, #0]
	ldr	r3, .L56+4
	ldr	r2, [r3, #0]
	ldr	r3, .L56+8
	ldr	r3, [r3, #0]
	rsb	r2, r3, r2
	ldr	r3, .L56+4
	str	r2, [r3, #0]
.L42:
	ldr	r3, .L56+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bgt	.L49
	bl	neogeo_vblank_interrupt
	ldr	r3, .L56+12
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	mov	r3, #1090519040
	sub	r3, r3, #3112960
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2iz
	mov	r2, r0
	ldr	r3, .L56+12
	str	r2, [r3, #0]
	ldr	r3, .L56+12
	ldr	r2, [r3, #0]
	ldr	r3, .L56+24
	cmp	r2, r3
	ble	.L50
	ldr	r3, .L56+28
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L56+28
	str	r2, [r3, #0]
	ldr	r3, .L56+12
	ldr	r3, [r3, #0]
	sub	r3, r3, #999424
	sub	r3, r3, #576
	ldr	r2, .L56+12
	str	r3, [r2, #0]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L51
.L53:
	ldr	r2, .L56+16
	ldr	r3, [fp, #-8]
	mov	r1, #4
	mov	r3, r3, asl #4
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L52
	ldr	r3, .L56+16
	ldr	r2, [fp, #-8]
	ldr	r3, [r3, r2, asl #4]
	sub	r3, r3, #999424
	sub	r3, r3, #576
	ldr	r2, .L56+16
	ldr	r1, [fp, #-8]
	str	r3, [r2, r1, asl #4]
.L52:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L51:
	ldr	r3, [fp, #-8]
	cmp	r3, #5
	ble	.L53
.L50:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L54
	bl	neogeo_screenrefresh
.L54:
	ldr	r3, .L56+32
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L56+32
	str	r2, [r3, #0]
	b	.L41
.L55:
	mov	r0, r0	@ nop
.L41:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L57:
	.align	2
.L56:
	.word	frame_base
	.word	timer_left
	.word	timer_ticks
	.word	base_time
	.word	timer
	.word	Loop
	.word	999999
	.word	global_offset
	.word	gFramesEmulated
	.fnend
	.size	timer_update_cpu_normal, .-timer_update_cpu_normal
	.align	2
	.type	timer_update_cpu_raster, %function
timer_update_cpu_raster:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r3, .L75
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L75+4
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L75+8
	mov	r2, #1
	str	r2, [r3, #0]
	b	.L59
.L68:
	ldr	r3, .L75+4
	ldr	r3, [r3, #0]
	add	r2, r3, #64
	ldr	r3, .L75+4
	str	r2, [r3, #0]
	b	.L60
.L67:
	ldr	r3, .L75+4
	ldr	r2, [r3, #0]
	ldr	r3, .L75+12
	str	r2, [r3, #0]
	ldr	r3, .L75+16
	ldr	r2, [r3, #0]
	ldr	r3, .L75
	ldr	r3, [r3, #0]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L61
.L64:
	ldr	r2, .L75+20
	ldr	r3, [fp, #-8]
	mov	r1, #4
	mov	r3, r3, asl #4
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L62
	ldr	r3, .L75+20
	ldr	r2, [fp, #-8]
	ldr	r2, [r3, r2, asl #4]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	cmp	r3, #0
	bgt	.L62
	ldr	r2, .L75+20
	ldr	r3, [fp, #-8]
	mov	r1, #4
	mov	r3, r3, asl #4
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r2, .L75+20
	ldr	r3, [fp, #-8]
	mov	r1, #12
	mov	r3, r3, asl #4
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r1, .L75+20
	ldr	r2, [fp, #-8]
	mov	r0, #8
	mov	r2, r2, asl #4
	add	r1, r1, r2
	mov	r2, r0
	add	r2, r1, r2
	ldr	r2, [r2, #0]
	mov	r0, r2
	blx	r3
.L62:
	ldr	r2, .L75+20
	ldr	r3, [fp, #-8]
	mov	r1, #4
	mov	r3, r3, asl #4
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L63
	ldr	r3, .L75+20
	ldr	r2, [fp, #-8]
	ldr	r2, [r3, r2, asl #4]
	ldr	r3, [fp, #-12]
	rsb	r2, r3, r2
	ldr	r3, .L75+12
	ldr	r3, [r3, #0]
	cmp	r2, r3
	bge	.L63
	ldr	r3, .L75+20
	ldr	r2, [fp, #-8]
	ldr	r2, [r3, r2, asl #4]
	ldr	r3, [fp, #-12]
	rsb	r2, r3, r2
	ldr	r3, .L75+12
	str	r2, [r3, #0]
.L63:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L61:
	ldr	r3, [fp, #-8]
	cmp	r3, #5
	ble	.L64
	ldr	r3, .L75+24
	ldr	r3, [r3, #0]
	cmp	r3, #3
	bne	.L74
.L65:
	mov	r0, #0
	bl	cpu_execute
	mov	r0, #1
	bl	cpu_execute
	ldr	r3, .L75
	ldr	r2, [r3, #0]
	ldr	r3, .L75+12
	ldr	r3, [r3, #0]
	add	r2, r2, r3
	ldr	r3, .L75
	str	r2, [r3, #0]
	ldr	r3, .L75+4
	ldr	r2, [r3, #0]
	ldr	r3, .L75+12
	ldr	r3, [r3, #0]
	rsb	r2, r3, r2
	ldr	r3, .L75+4
	str	r2, [r3, #0]
.L60:
	ldr	r3, .L75+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bgt	.L67
	ldr	r3, .L75+8
	ldr	r3, [r3, #0]
	mov	r0, r3
	ldr	r1, [fp, #-16]
	bl	neogeo_raster_interrupt
	ldr	r3, .L75+8
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L75+8
	str	r2, [r3, #0]
.L59:
	ldr	r3, .L75+8
	ldr	r3, [r3, #0]
	cmp	r3, #264
	ble	.L68
	ldr	r3, .L75+16
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	mov	r3, #1090519040
	sub	r3, r3, #3112960
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2iz
	mov	r2, r0
	ldr	r3, .L75+16
	str	r2, [r3, #0]
	ldr	r3, .L75+16
	ldr	r2, [r3, #0]
	ldr	r3, .L75+28
	cmp	r2, r3
	ble	.L69
	ldr	r3, .L75+32
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L75+32
	str	r2, [r3, #0]
	ldr	r3, .L75+16
	ldr	r3, [r3, #0]
	sub	r3, r3, #999424
	sub	r3, r3, #576
	ldr	r2, .L75+16
	str	r3, [r2, #0]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L70
.L72:
	ldr	r2, .L75+20
	ldr	r3, [fp, #-8]
	mov	r1, #4
	mov	r3, r3, asl #4
	add	r2, r2, r3
	mov	r3, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L71
	ldr	r3, .L75+20
	ldr	r2, [fp, #-8]
	ldr	r3, [r3, r2, asl #4]
	sub	r3, r3, #999424
	sub	r3, r3, #576
	ldr	r2, .L75+20
	ldr	r1, [fp, #-8]
	str	r3, [r2, r1, asl #4]
.L71:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L70:
	ldr	r3, [fp, #-8]
	cmp	r3, #5
	ble	.L72
.L69:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L73
	bl	neogeo_screenrefresh
.L73:
	ldr	r3, .L75+36
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, .L75+36
	str	r2, [r3, #0]
	b	.L58
.L74:
	mov	r0, r0	@ nop
.L58:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L76:
	.align	2
.L75:
	.word	frame_base
	.word	timer_left
	.word	scanline
	.word	timer_ticks
	.word	base_time
	.word	timer
	.word	Loop
	.word	999999
	.word	global_offset
	.word	gFramesEmulated
	.fnend
	.size	timer_update_cpu_raster, .-timer_update_cpu_raster
	.align	2
	.global	state_save_timer
	.type	state_save_timer, %function
state_save_timer:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	ldr	r3, .L80
	ldr	r3, [r3, #0]
	ldr	r1, .L80+4
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L80
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L80
	str	r2, [r3, #0]
	ldr	r3, .L80
	ldr	r3, [r3, #0]
	ldr	r1, .L80+8
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L80
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L80
	str	r2, [r3, #0]
	ldr	r3, .L80
	ldr	r3, [r3, #0]
	ldr	r1, .L80+12
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L80
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L80
	str	r2, [r3, #0]
	ldr	r3, .L80
	ldr	r3, [r3, #0]
	ldr	r1, .L80+16
	mov	r2, r3
	mov	r3, r1
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L80
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L80
	str	r2, [r3, #0]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L78
.L79:
	ldr	r3, .L80
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-8]
	mov	r1, r3, asl #4
	ldr	r3, .L80+20
	add	r3, r1, r3
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L80
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L80
	str	r2, [r3, #0]
	ldr	r3, .L80
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-8]
	mov	r1, r3, asl #4
	ldr	r3, .L80+20
	add	r3, r1, r3
	add	r3, r3, #4
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L80
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L80
	str	r2, [r3, #0]
	ldr	r3, .L80
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #4
	add	r1, r3, #8
	ldr	r3, .L80+20
	add	r3, r1, r3
	mov	ip, #4
	mov	r0, r2
	mov	r1, r3
	mov	r3, ip
	mov	r2, r3
	bl	memcpy
	ldr	r3, .L80
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, .L80
	str	r2, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L78:
	ldr	r3, [fp, #-8]
	cmp	r3, #5
	ble	.L79
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L81:
	.align	2
.L80:
	.word	state_buffer
	.word	global_offset
	.word	base_time
	.word	cpu+16
	.word	cpu+36
	.word	timer
	.fnend
	.size	state_save_timer, .-state_save_timer
	.align	2
	.global	state_load_timer
	.type	state_load_timer, %function
state_load_timer:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r3, .L85
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-16]
	bl	fread
	ldr	r3, .L85+4
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-16]
	bl	fread
	ldr	r3, .L85+8
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-16]
	bl	fread
	ldr	r3, .L85+12
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-16]
	bl	fread
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L83
.L84:
	ldr	r3, [fp, #-8]
	mov	r2, r3, asl #4
	ldr	r3, .L85+16
	add	r3, r2, r3
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-16]
	bl	fread
	ldr	r3, [fp, #-8]
	mov	r2, r3, asl #4
	ldr	r3, .L85+16
	add	r3, r2, r3
	add	r3, r3, #4
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-16]
	bl	fread
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #4
	add	r2, r3, #8
	ldr	r3, .L85+16
	add	r3, r2, r3
	mov	r0, r3
	mov	r1, #1
	mov	r2, #4
	ldr	r3, [fp, #-16]
	bl	fread
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L83:
	ldr	r3, [fp, #-8]
	cmp	r3, #5
	ble	.L84
	ldr	r3, .L85+20
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L85+24
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L85+28
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L85+32
	mvn	r2, #0
	str	r2, [r3, #0]
	ldr	r3, .L85+16
	ldr	r2, .L85+36
	str	r2, [r3, #12]
	ldr	r3, .L85+16
	ldr	r2, .L85+36
	str	r2, [r3, #28]
	ldr	r3, .L85+16
	ldr	r2, .L85+40
	str	r2, [r3, #44]
	ldr	r3, .L85+16
	ldr	r2, .L85+44
	str	r2, [r3, #76]
	ldr	r3, .L85+16
	ldr	r2, .L85+48
	str	r2, [r3, #92]
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L86:
	.align	2
.L85:
	.word	global_offset
	.word	base_time
	.word	cpu+16
	.word	cpu+36
	.word	timer
	.word	timer_left
	.word	timer_ticks
	.word	frame_base
	.word	active_cpu
	.word	timer_callback_2610
	.word	neogeo_sound_write
	.word	cpu_spin_trigger
	.word	watchdog_callback
	.fnend
	.size	state_load_timer, .-state_load_timer
	.ident	"GCC: (Sourcery CodeBench Lite 2012.03-57) 4.6.3"
	.section	.note.GNU-stack,"",%progbits

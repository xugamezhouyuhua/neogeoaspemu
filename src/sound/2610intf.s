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
	.file	"2610intf.c"
	.text
	.align	2
	.global	YM2610_sh_start
	.type	YM2610_sh_start, %function
YM2610_sh_start:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #32
	sub	sp, sp, #32
	ldr	r3, .L4
	ldr	r3, [r3, #0]
	str	r3, [fp, #-16]
	ldr	r3, .L4+4
	ldr	r3, [r3, #0]
	str	r3, [fp, #-20]
	ldr	r3, .L4+8
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L2
	ldr	r3, .L4+12
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldr	r3, .L4+8
	ldr	r3, [r3, #0]
	str	r3, [fp, #-12]
	b	.L3
.L2:
	ldr	r3, .L4
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldr	r3, .L4+4
	ldr	r3, [r3, #0]
	str	r3, [fp, #-12]
.L3:
	ldr	r3, [fp, #-12]
	str	r3, [sp, #0]
	ldr	r3, .L4+16
	str	r3, [sp, #4]
	ldr	r3, .L4+20
	str	r3, [sp, #8]
	ldr	r0, .L4+24
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-8]
	bl	YM2610Init
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L5:
	.align	2
.L4:
	.word	memory_region_sound1
	.word	memory_length_sound1
	.word	memory_length_sound2
	.word	memory_region_sound2
	.word	TimerHandler
	.word	neogeo_sound_irq
	.word	8000000
	.fnend
	.size	YM2610_sh_start, .-YM2610_sh_start
	.align	2
	.global	YM2610_sh_stop
	.type	YM2610_sh_stop, %function
YM2610_sh_stop:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.fnend
	.size	YM2610_sh_stop, .-YM2610_sh_stop
	.align	2
	.global	YM2610_sh_reset
	.type	YM2610_sh_reset, %function
YM2610_sh_reset:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	bl	YM2610Reset
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	YM2610_sh_reset, .-YM2610_sh_reset
	.align	2
	.global	YM2610_status_port_A_r
	.type	YM2610_status_port_A_r, %function
YM2610_status_port_A_r:
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
	mov	r0, #0
	bl	YM2610Read
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	YM2610_status_port_A_r, .-YM2610_status_port_A_r
	.align	2
	.global	YM2610_status_port_B_r
	.type	YM2610_status_port_B_r, %function
YM2610_status_port_B_r:
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
	mov	r0, #2
	bl	YM2610Read
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	YM2610_status_port_B_r, .-YM2610_status_port_B_r
	.align	2
	.global	YM2610_read_port_r
	.type	YM2610_read_port_r, %function
YM2610_read_port_r:
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
	mov	r0, #1
	bl	YM2610Read
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	YM2610_read_port_r, .-YM2610_read_port_r
	.align	2
	.global	YM2610_control_port_A_w
	.type	YM2610_control_port_A_w, %function
YM2610_control_port_A_w:
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
	mov	r3, r1
	strb	r3, [fp, #-9]
	ldrb	r3, [fp, #-9]	@ zero_extendqisi2
	mov	r0, #0
	mov	r1, r3
	bl	YM2610Write
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	YM2610_control_port_A_w, .-YM2610_control_port_A_w
	.align	2
	.global	YM2610_control_port_B_w
	.type	YM2610_control_port_B_w, %function
YM2610_control_port_B_w:
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
	mov	r3, r1
	strb	r3, [fp, #-9]
	ldrb	r3, [fp, #-9]	@ zero_extendqisi2
	mov	r0, #2
	mov	r1, r3
	bl	YM2610Write
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	YM2610_control_port_B_w, .-YM2610_control_port_B_w
	.align	2
	.global	YM2610_data_port_A_w
	.type	YM2610_data_port_A_w, %function
YM2610_data_port_A_w:
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
	mov	r3, r1
	strb	r3, [fp, #-9]
	ldrb	r3, [fp, #-9]	@ zero_extendqisi2
	mov	r0, #1
	mov	r1, r3
	bl	YM2610Write
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	YM2610_data_port_A_w, .-YM2610_data_port_A_w
	.align	2
	.global	YM2610_data_port_B_w
	.type	YM2610_data_port_B_w, %function
YM2610_data_port_B_w:
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
	mov	r3, r1
	strb	r3, [fp, #-9]
	ldrb	r3, [fp, #-9]	@ zero_extendqisi2
	mov	r0, #3
	mov	r1, r3
	bl	YM2610Write
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	YM2610_data_port_B_w, .-YM2610_data_port_B_w
	.align	2
	.global	timer_callback_2610
	.type	timer_callback_2610, %function
timer_callback_2610:
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
	bl	YM2610TimerOver
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	timer_callback_2610, .-timer_callback_2610
	.global	__aeabi_d2f
	.global	__aeabi_f2d
	.global	__aeabi_dmul
	.global	__aeabi_d2iz
	.align	2
	.type	TimerHandler, %function
TimerHandler:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #24
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	strd	r2, [fp, #-28]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L17
	ldr	r0, [fp, #-16]
	mov	r1, #0
	bl	timer_enable
	b	.L16
.L17:
	ldrd	r0, [fp, #-28]
	bl	__aeabi_d2f
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	adr	r3, .L19
	ldrd	r2, [r3]
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2iz
	mov	r3, r0
	ldr	r2, [fp, #-20]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r0, [fp, #-16]
	mov	r1, #1
	bl	timer_enable
	mov	r3, r0
	cmp	r3, #0
	bne	.L16
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-8]
	ldr	r2, [fp, #-16]
	ldr	r3, .L19+8
	bl	timer_adjust
.L16:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L20:
	.align	3
.L19:
	.word	0
	.word	1093567616
	.word	timer_callback_2610
	.fnend
	.size	TimerHandler, .-TimerHandler
	.ident	"GCC: (Sourcery CodeBench Lite 2012.03-57) 4.6.3"
	.section	.note.GNU-stack,"",%progbits

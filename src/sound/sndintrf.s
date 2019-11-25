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
	.file	"sndintrf.c"
	.local	stream_buffer_left
	.comm	stream_buffer_left,11904,4
	.local	stream_buffer_right
	.comm	stream_buffer_right,11904,4
	.local	stream_buffer
	.comm	stream_buffer,8,4
	.local	samples_per_update
	.comm	samples_per_update,4,4
	.local	samples_left_over
	.comm	samples_left_over,4,4
	.local	samples_this_update
	.comm	samples_this_update,4,4
	.text
	.align	2
	.type	clip_stream, %function
clip_stream:
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
	ldr	r3, .L6
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	b	.L2
.L5:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-12]
	ldr	r3, .L6+4
	cmp	r2, r3
	ble	.L3
	ldr	r3, .L6+4
	str	r3, [fp, #-12]
	b	.L4
.L3:
	ldr	r3, [fp, #-12]
	cmn	r3, #32768
	bge	.L4
	ldr	r3, .L6+8
	str	r3, [fp, #-12]
.L4:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	str	r3, [fp, #-16]
.L2:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r3, r3, #255
	ldr	r2, [fp, #-8]
	sub	r2, r2, #1
	str	r2, [fp, #-8]
	cmp	r3, #0
	bne	.L5
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L7:
	.align	2
.L6:
	.word	samples_this_update
	.word	32767
	.word	-32768
	.fnend
	.size	clip_stream, .-clip_stream
	.global	__aeabi_uidiv
	.align	2
	.type	resample_stream, %function
resample_stream:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #24
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, .L11
	ldr	r3, [r3, #0]
	mov	r2, r3, asl #14
	ldr	r3, .L11+4
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #12]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_uidiv
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, .L11+4
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-12]
	b	.L9
.L10:
	ldr	r3, [fp, #-8]
	mov	r3, r3, lsr #14
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-28]
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-28]
	add	r3, r3, #4
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-8]
.L9:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r3, r3, #255
	ldr	r2, [fp, #-12]
	sub	r2, r2, #1
	str	r2, [fp, #-12]
	cmp	r3, #0
	bne	.L10
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L12:
	.align	2
.L11:
	.word	samples_this_update
	.word	sound
	.fnend
	.size	resample_stream, .-resample_stream
	.global	__aeabi_fadd
	.global	__aeabi_f2uiz
	.global	__aeabi_ui2f
	.global	__aeabi_fsub
	.align	2
	.type	sound_update_stereo, %function
sound_update_stereo:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #12
	sub	sp, sp, #12
	str	r0, [fp, #-16]
	ldr	r3, .L14
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	ldr	r2, .L14+4
	ldr	r2, [r2, #0]
	ldr	r0, .L14+8
	mov	r1, r2
	blx	r3
	ldr	r3, .L14+8
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	clip_stream
	ldr	r3, .L14+8
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	clip_stream
	ldr	r3, .L14+8
	ldr	r3, [r3, #0]
	mov	r0, r3
	ldr	r1, [fp, #-16]
	bl	resample_stream
	ldr	r3, .L14+8
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	mov	r0, r2
	mov	r1, r3
	bl	resample_stream
	ldr	r3, .L14+12
	ldr	r2, [r3, #0]	@ float
	ldr	r3, .L14+16
	ldr	r3, [r3, #0]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fadd
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L14+12
	str	r2, [r3, #0]	@ float
	ldr	r3, .L14+12
	ldr	r3, [r3, #0]	@ float
	mov	r0, r3
	bl	__aeabi_f2uiz
	mov	r2, r0
	ldr	r3, .L14+4
	str	r2, [r3, #0]
	ldr	r3, .L14+12
	ldr	r4, [r3, #0]	@ float
	ldr	r3, .L14+4
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	__aeabi_ui2f
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	__aeabi_fsub
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L14+12
	str	r2, [r3, #0]	@ float
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, pc}
.L15:
	.align	2
.L14:
	.word	sound
	.word	samples_this_update
	.word	stream_buffer
	.word	samples_left_over
	.word	samples_per_update
	.fnend
	.size	sound_update_stereo, .-sound_update_stereo
	.global	__aeabi_i2f
	.global	__aeabi_f2d
	.global	__aeabi_ddiv
	.global	__aeabi_dadd
	.global	__aeabi_d2f
	.align	2
	.global	sound_init
	.type	sound_init, %function
sound_init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, fp, lr}
	.save {r3, r4, fp, lr}
	.setfp fp, sp, #12
	add	fp, sp, #12
	bl	YM2610_sh_start
	ldr	r3, .L17+8
	ldr	r3, [r3, #0]
	ldr	r2, .L17+12
	str	r2, [r3, #16]
	ldr	r3, .L17+16
	mov	r2, #11904
	mov	r0, r3
	mov	r1, #0
	mov	r3, r2
	mov	r2, r3
	bl	memset
	ldr	r3, .L17+20
	mov	r2, #11904
	mov	r0, r3
	mov	r1, #0
	mov	r3, r2
	mov	r2, r3
	bl	memset
	ldr	r3, .L17+24
	ldr	r2, .L17+16
	str	r2, [r3, #0]
	ldr	r3, .L17+24
	ldr	r2, .L17+20
	str	r2, [r3, #4]
	ldr	r3, .L17+8
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	adr	r3, .L17
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r2, r0
	ldr	r3, .L17+28
	str	r2, [r3, #0]	@ float
	ldr	r3, .L17+28
	ldr	r2, [r3, #0]	@ float
	ldr	r3, .L17+32
	str	r2, [r3, #0]	@ float
	ldr	r3, .L17+28
	ldr	r3, [r3, #0]	@ float
	mov	r0, r3
	bl	__aeabi_f2uiz
	mov	r2, r0
	ldr	r3, .L17+36
	str	r2, [r3, #0]
	ldr	r3, .L17+32
	ldr	r4, [r3, #0]	@ float
	ldr	r3, .L17+36
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	__aeabi_ui2f
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	__aeabi_fsub
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L17+32
	str	r2, [r3, #0]	@ float
	bl	sound_thread_start
	mov	r3, r0
	mov	r0, r3
	ldmfd	sp!, {r3, r4, fp, pc}
.L18:
	.align	3
.L17:
	.word	-268830593
	.word	1078826945
	.word	sound
	.word	sound_update_stereo
	.word	stream_buffer_left
	.word	stream_buffer_right
	.word	stream_buffer
	.word	samples_per_update
	.word	samples_left_over
	.word	samples_this_update
	.fnend
	.size	sound_init, .-sound_init
	.align	2
	.global	sound_exit
	.type	sound_exit, %function
sound_exit:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	bl	YM2610_sh_stop
	bl	sound_thread_stop
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	sound_exit, .-sound_exit
	.align	2
	.global	sound_reset
	.type	sound_reset, %function
sound_reset:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	bl	YM2610_sh_reset
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	sound_reset, .-sound_reset
	.align	2
	.global	sound_set_samplerate
	.type	sound_set_samplerate, %function
sound_set_samplerate:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, fp, lr}
	.save {r3, r4, fp, lr}
	.setfp fp, sp, #12
	add	fp, sp, #12
	bl	YM2610_set_samplerate
	ldr	r3, .L22+8
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	adr	r3, .L22
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r2, r0
	ldr	r3, .L22+12
	str	r2, [r3, #0]	@ float
	ldr	r3, .L22+12
	ldr	r2, [r3, #0]	@ float
	ldr	r3, .L22+16
	str	r2, [r3, #0]	@ float
	ldr	r3, .L22+12
	ldr	r3, [r3, #0]	@ float
	mov	r0, r3
	bl	__aeabi_f2uiz
	mov	r2, r0
	ldr	r3, .L22+20
	str	r2, [r3, #0]
	ldr	r3, .L22+16
	ldr	r4, [r3, #0]	@ float
	ldr	r3, .L22+20
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	__aeabi_ui2f
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	__aeabi_fsub
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L22+16
	str	r2, [r3, #0]	@ float
	ldmfd	sp!, {r3, r4, fp, pc}
.L23:
	.align	3
.L22:
	.word	-268830593
	.word	1078826945
	.word	sound
	.word	samples_per_update
	.word	samples_left_over
	.word	samples_this_update
	.fnend
	.size	sound_set_samplerate, .-sound_set_samplerate
	.ident	"GCC: (Sourcery CodeBench Lite 2012.03-57) 4.6.3"
	.section	.note.GNU-stack,"",%progbits

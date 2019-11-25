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
	.file	"mvs.c"
	.global	neogeo_bios
	.data
	.align	2
	.type	neogeo_bios, %object
	.size	neogeo_bios, 4
neogeo_bios:
	.word	-1
	.comm	neogeo_region,4,4
	.comm	neogeo_save_sound_flag,4,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%smemcard/%s.bin\000"
	.align	2
.LC1:
	.ascii	"rb\000"
	.align	2
.LC2:
	.ascii	"%snvram/%s.nv\000"
	.align	2
.LC3:
	.ascii	"ERROR:Open %s fail...\012\000"
	.align	2
.LC4:
	.ascii	"DONE2\000"
	.text
	.align	2
	.type	neogeo_init, %function
neogeo_init:
	.fnstart
	@ args = 0, pretend = 0, frame = 264
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #264
	sub	sp, sp, #264
	ldr	r2, .L5
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L5+4
	ldr	r3, .L5+8
	bl	sprintf
	ldr	r2, .L5+12
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	bl	fopen
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L2
	ldr	r3, .L5+16
	mov	r0, r3
	mov	r1, #1
	mov	r2, #2048
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r0, [fp, #-8]
	bl	fclose
.L2:
	ldr	r2, .L5+20
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L5+4
	ldr	r3, .L5+8
	bl	sprintf
	ldr	r2, .L5+12
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	bl	fopen
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L3
	ldr	r3, .L5+24
	mov	r0, r3
	mov	r1, #1
	mov	r2, #8192
	ldr	r3, [fp, #-8]
	bl	fread
	ldr	r0, [fp, #-8]
	bl	fclose
	ldr	r0, .L5+24
	ldr	r1, .L5+24
	mov	r2, #8192
	bl	swab
	b	.L4
.L3:
	ldr	r3, .L5+28
	mov	r0, r3
	sub	r3, fp, #264
	mov	r1, r3
	bl	printf
.L4:
	bl	neogeo_driver_init
	bl	neogeo_video_init
	ldr	r0, .L5+32
	bl	puts
	bl	video_clear_buffer
	mov	r3, #1
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L6:
	.align	2
.L5:
	.word	.LC0
	.word	launchDir
	.word	game_name
	.word	.LC1
	.word	neogeo_memcard
	.word	.LC2
	.word	neogeo_sram16
	.word	.LC3
	.word	.LC4
	.fnend
	.size	neogeo_init, .-neogeo_init
	.align	2
	.type	neogeo_reset, %function
neogeo_reset:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	bl	video_clear_buffer
	bl	timer_reset
	bl	input_reset
	bl	neogeo_driver_reset
	bl	neogeo_video_reset
	bl	sound_reset
	ldr	r3, .L8
	mov	r2, #3
	str	r2, [r3, #0]
	ldmfd	sp!, {fp, pc}
.L9:
	.align	2
.L8:
	.word	Loop
	.fnend
	.size	neogeo_reset, .-neogeo_reset
	.section	.rodata
	.align	2
.LC5:
	.ascii	"PLEASE_WAIT2\000"
	.align	2
.LC6:
	.ascii	"wb\000"
	.text
	.align	2
	.type	neogeo_exit, %function
neogeo_exit:
	.fnstart
	@ args = 0, pretend = 0, frame = 264
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #264
	sub	sp, sp, #264
	bl	video_clear_buffer
	ldr	r0, .L14
	bl	puts
	ldr	r2, .L14+4
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L14+8
	ldr	r3, .L14+12
	bl	sprintf
	ldr	r2, .L14+16
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	bl	fopen
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L11
	ldr	r3, .L14+20
	mov	r0, r3
	mov	r1, #1
	mov	r2, #2048
	ldr	r3, [fp, #-8]
	bl	fwrite
	ldr	r0, [fp, #-8]
	bl	fclose
.L11:
	ldr	r2, .L14+24
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	ldr	r2, .L14+8
	ldr	r3, .L14+12
	bl	sprintf
	ldr	r2, .L14+16
	sub	r3, fp, #264
	mov	r0, r3
	mov	r3, r2
	mov	r1, r3
	bl	fopen
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L12
	ldr	r0, .L14+28
	ldr	r1, .L14+28
	mov	r2, #8192
	bl	swab
	ldr	r3, .L14+28
	mov	r0, r3
	mov	r1, #1
	mov	r2, #8192
	ldr	r3, [fp, #-8]
	bl	fwrite
	ldr	r0, [fp, #-8]
	bl	fclose
.L12:
	ldr	r3, .L14+32
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L13
	ldr	r3, .L14+36
	mov	r2, #1
	str	r2, [r3, #0]
.L13:
	ldr	r0, .L14+40
	bl	puts
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L15:
	.align	2
.L14:
	.word	.LC5
	.word	.LC0
	.word	launchDir
	.word	game_name
	.word	.LC6
	.word	neogeo_memcard
	.word	.LC2
	.word	neogeo_sram16
	.word	neogeo_save_sound_flag
	.word	option_sound_enable
	.word	.LC4
	.fnend
	.size	neogeo_exit, .-neogeo_exit
	.section	.rodata
	.align	2
.LC7:
	.ascii	"Real = %d Virtual = %d\012\000"
	.text
	.align	2
	.type	neogeo_run, %function
neogeo_run:
	.fnstart
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #56
	sub	sp, sp, #56
	b	.L17
.L28:
	bl	neogeo_reset
	ldr	r3, .L29
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-32]
	bl	ZYH_GetTicks
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-8]
	b	.L18
.L27:
	bl	update_inputport
	bl	ZYH_GetTicks
	mov	r3, r0
	str	r3, [fp, #-44]
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-8]
	rsb	r2, r3, r2
	ldr	r3, .L29+4
	cmp	r2, r3
	ble	.L19
	ldr	r3, .L29+8
	mov	r0, r3
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	printf
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-8]
.L19:
	bl	ZYH_GetTicks
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-12]
	rsb	r2, r3, r2
	ldr	r3, [fp, #-32]
	ldr	r1, [fp, #-40]
	mul	r3, r1, r3
	rsb	r3, r3, r2
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	blt	.L20
	ldr	r2, [fp, #-32]
	ldr	r3, .L29+12
	cmp	r2, r3
	ble	.L21
.L20:
	bl	ZYH_StartTicks
	bl	ZYH_GetTicks
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-24]
.L21:
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	ble	.L22
	ldr	r3, [fp, #-28]
	cmp	r3, #2
	bgt	.L22
	ldr	r3, .L29+16
	ldr	r3, [r3, #0]
	mov	r0, #1
	blx	r3
	mov	r0, #1
	bl	update_screen
	bl	SndFillAudioData
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
	b	.L23
.L22:
	bl	ZYH_GetTicks
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, .L29+16
	ldr	r3, [r3, #0]
	mov	r0, #0
	blx	r3
	mov	r0, #0
	bl	update_screen
	bl	SndFillAudioData
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r3, #2
	bgt	.L24
	bl	ZYH_GetTicks
	mov	r3, r0
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bge	.L25
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-36]
.L25:
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-52]
	rsb	r2, r3, r2
	ldr	r3, [fp, #-40]
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldr	r3, [fp, #-40]
	mov	r1, r3, lsr #31
	add	r3, r1, r3
	mov	r3, r3, asr #1
	rsb	r3, r3, r2
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-56]
	cmp	r3, #1000
	ble	.L26
	ldr	r3, [fp, #-56]
	mov	r0, r3
	bl	usleep
	b	.L26
.L24:
	mov	r3, #0
	str	r3, [fp, #-32]
	bl	ZYH_StartTicks
	bl	ZYH_GetTicks
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-12]
.L26:
	mov	r3, #0
	str	r3, [fp, #-28]
.L23:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L18:
	ldr	r3, .L29+20
	ldr	r3, [r3, #0]
	cmp	r3, #3
	beq	.L27
	bl	video_clear_buffer
.L17:
	ldr	r3, .L29+20
	ldr	r3, [r3, #0]
	cmp	r3, #1
	bgt	.L28
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L30:
	.align	2
.L29:
	.word	16892
	.word	1000000
	.word	.LC7
	.word	72000
	.word	timer_update_cpu
	.word	Loop
	.fnend
	.size	neogeo_run, .-neogeo_run
	.align	2
	.global	neogeo_main
	.type	neogeo_main, %function
neogeo_main:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	ldr	r3, .L38
	mov	r2, #2
	str	r2, [r3, #0]
	b	.L32
.L37:
	ldr	r3, .L38
	mov	r2, #3
	str	r2, [r3, #0]
	bl	memory_init
	mov	r3, r0
	cmp	r3, #0
	beq	.L33
	bl	sound_init
	mov	r3, r0
	cmp	r3, #0
	beq	.L34
	bl	input_init
	mov	r3, r0
	cmp	r3, #0
	beq	.L35
	bl	neogeo_init
	mov	r3, r0
	cmp	r3, #0
	beq	.L36
	bl	neogeo_run
.L36:
	bl	neogeo_exit
.L35:
	bl	input_shutdown
.L34:
	bl	sound_exit
.L33:
	bl	memory_shutdown
.L32:
	ldr	r3, .L38
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bgt	.L37
	ldmfd	sp!, {fp, pc}
.L39:
	.align	2
.L38:
	.word	Loop
	.fnend
	.size	neogeo_main, .-neogeo_main
	.align	2
	.global	neogeo_emulator_exit
	.type	neogeo_emulator_exit, %function
neogeo_emulator_exit:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.setfp fp, sp, #0
	add	fp, sp, #0
	ldr	r3, .L41
	mov	r2, #0
	str	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L42:
	.align	2
.L41:
	.word	Loop
	.fnend
	.size	neogeo_emulator_exit, .-neogeo_emulator_exit
	.ident	"GCC: (Sourcery CodeBench Lite 2012.03-57) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
